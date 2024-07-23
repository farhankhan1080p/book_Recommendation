# Book Recommendation System

## Project Description

This project is a Book Recommendation System developed using Flask, a Python web framework, and a MySQL database. The system provides personalized book recommendations based on genre and subgenre, leveraging AI/ML techniques such as cosine similarity and TF-IDF (Term Frequency-Inverse Document Frequency). Users can explore a curated list of books, sorted and filtered according to various criteria, and manage their recommendations through an intuitive web interface.

**Note:** This project currently utilizes content-based filtering for recommendations. Collaborative filtering techniques have not been implemented in this version.

## Features

1. **User Authentication:**
   - Secure user login system to personalize book recommendations.

2. **Book Recommendation:**
   - Recommends books based on selected genres and subgenres using cosine similarity and TF-IDF.

3. **Book Exploration:**
   - Browse and sort books by Title, Author, Genre, SubGenre, and User Rating.
   - Sort functionality with ascending and descending options for each column.

4. **Responsive UI:**
   - Aesthetic and user-friendly interface with background gradients and hover effects.
   - Hovering dropdown menus for genre and subgenre selection.
   - Fixed navigation elements to improve usability.

## Technologies Used

- **Backend:**
  - Flask
  - Python
  - MySQL

- **Frontend:**
  - HTML
  - CSS
  - JavaScript

## Installation and Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/farhankhan1080p/book_Recommendation.git
   cd book_recommendation

2. **Set up the virtual environmen**
   ```bash
   python3 -m venv venv
   source venv/bin/activate  # On Windows, use `venv\Scripts\activate`

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt

5. **Set up the database**
   - Create a MySQL database named `book_recommendation`.
   - Create a table named books with the following columns: `id`, `Title`, `Author`, `Genre`, `SubGenre`, `UserRating`.
   - Import your dataset into the books table.

6. **Configure the application**
   - Update the database connection settings in the `app.py` file
   ```bash
   app.config['MYSQL_DATABASE_USER'] = 'root'
   app.config['MYSQL_DATABASE_PASSWORD'] = ''
   app.config['MYSQL_DATABASE_DB'] = 'book_recommendation'
   app.config['MYSQL_DATABASE_HOST'] = 'localhost'

8. **Run the application**
   Run Flask
   ```bash
   py -m app.py
   or
   py app.py

9. **Access the application**
   - Open your browser and navigate to `http://localhost:5000`

## Usage
  **Login:** Create an account or log in to an existing account to access personalized recommendations.
  **Explore Books:** Browse through the book list, and sort by different columns to find books of interest.
  **Get Recommendations:** Select preferred genres and subgenres to get book recommendations tailored to your interests.

## Contributing
  If you would like to contribute to this project, please fork the repository and submit a pull request with your changes.
