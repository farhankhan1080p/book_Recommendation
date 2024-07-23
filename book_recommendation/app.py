from flask import Flask, request, jsonify, render_template, session, redirect, url_for
import pandas as pd
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
import random
import secrets
import mysql.connector

app = Flask(__name__)
app.secret_key = secrets.token_hex(16)

# Load data from CSV file
df2 = pd.read_csv('C:/xampp/htdocs/book_recommendation/books_new.csv')

# Prepare data and compute cosine similarity matrix
def prepare_data(df):
    df['combined_features'] = df['Genre'] + ' ' + df['SubGenre'].fillna('')
    tfidf_vectorizer = TfidfVectorizer(stop_words='english')
    tfidf_matrix = tfidf_vectorizer.fit_transform(df['combined_features'])
    cosine_sim = cosine_similarity(tfidf_matrix, tfidf_matrix)
    return df, cosine_sim

df2, cosine_sim = prepare_data(df2)

# Function to get recommendations
def recommend_books(selected_genre=None, selected_subgenre=None, num_recommendations=3):
    global df2, cosine_sim

    if selected_genre and selected_subgenre:
        genre_books = df2[df2['Genre'].str.contains(selected_genre, case=False, na=False) &
                          df2['SubGenre'].str.contains(selected_subgenre, case=False, na=False)]
    elif selected_genre:
        genre_books = df2[df2['Genre'].str.contains(selected_genre, case=False, na=False)]
    elif selected_subgenre:
        genre_books = df2[df2['SubGenre'].str.contains(selected_subgenre, case=False, na=False)]
    else:
        return []

    if genre_books.empty:
        return []

    reference_book_idx = random.choice(genre_books.index)
    sim_scores = list(enumerate(cosine_sim[reference_book_idx]))
    sim_scores = sorted(sim_scores, key=lambda x: x[1], reverse=True)
    sim_scores = sim_scores[1:num_recommendations+1]
    book_indices = [i[0] for i in sim_scores]
    return df2.iloc[book_indices].to_dict('records')

@app.route('/')
def home():
    email = request.args.get('email')
    if email:
        session['user_email'] = email
    user_email = session.get('user_email', 'Guest')
    return render_template('index.html', user_email=user_email)

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email = request.form['email']
        session['user_email'] = email
        return redirect(url_for('home'))
    return render_template('login.html')

@app.route('/recommend', methods=['POST'])
def recommend():
    data = request.get_json()
    selected_genre = data.get('genre')
    selected_subgenre = data.get('subgenre')
    num_recommendations = int(data.get('num_recommendations', 3))
    recommendations = recommend_books(selected_genre, selected_subgenre, num_recommendations)
    return jsonify(recommendations)

@app.route('/rate_book', methods=['POST'])
def rate_book():
    data = request.get_json()
    book_title = data.get('title')
    user_rating = data.get('rating')
    user_email = session.get('user_email')

    if not user_email:
        return jsonify({'error': 'User not logged in'}), 401

    # Connect to the database
    db_connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="book_recommendation"
    )
    cursor = db_connection.cursor()

    # Update the rating in the database
    cursor.execute("""
    UPDATE book
    SET UserRating = %s
    WHERE Title = %s
    """, (user_rating, book_title))

    db_connection.commit()
    cursor.close()
    db_connection.close()

    return jsonify({'message': 'Rating submitted successfully'})

# Book Viewer
@app.route('/all_books', methods=['GET'])
def all_books():
    sort_by = request.args.get('sort_by', 'asc')  # Default to ascending order
    db_connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="book_recommendation"
    )
    cursor = db_connection.cursor(dictionary=True)

    if sort_by == 'desc':
        cursor.execute("SELECT * FROM book ORDER BY UserRating DESC")
    else:
        cursor.execute("SELECT * FROM book ORDER BY UserRating ASC")
    
    books = cursor.fetchall()
    cursor.close()
    db_connection.close()

    return jsonify(books)

# log out session
@app.route('/logout')
def logout():
    session.clear()
    return redirect('http://localhost/book_recommendation/templates/login.php')

if __name__ == '__main__':
    app.run(debug=True)
