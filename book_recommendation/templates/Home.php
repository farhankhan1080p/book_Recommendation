<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Book Recommendation</title>
    <style>
        @font-face {
            font-family: 'Playfair Display';
            src: url('D:/book_recommendation/fonts/PlayfairDisplay-Regular.ttf') format('truetype');
        }

        @font-face {
            font-family: 'Roboto';
            src: url('D:/book_recommendation/fonts/Roboto-Regular.ttf') format('truetype');
        }

        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            overflow: hidden;
            font-family: 'Roboto', sans-serif;
            background-image: url('http://localhost/book_recommendation/templates/Background_image.jpg');
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .nav-container {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 28px;
            box-sizing: border-box;
            z-index: 10;
            background: transparent;
        }

        .nav-buttons {
            display: flex;
            align-items: center;
            margin-left: 0;
        }

        .nav-buttons ul {
            display: flex;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .nav-buttons li {
            margin-right: 10px;
        }

        .nav-link {
            color: white;
            font-weight: 500;
            padding: 0.5rem 1rem;
            border-radius: 10px;
            background-color: transparent;
            border: 2px solid white;
            transition: background-color 0.3s, color 0.3s;
            text-decoration: none;
            display: inline-block;
            text-align: center;
            font-size: 0.875rem;
        }

        .nav-link:hover {
            color: black;
            background-color: #FEFBF6;
        }

        .blur-box {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            width: 60%;
        }

        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 3rem;
            font-weight: bold;
            line-height: 1.2;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            margin: 0;
        }

        .hero p {
            font-family: 'Roboto', sans-serif;
            margin-top: 1rem;
            font-size: 1.125rem;
            line-height: 1.8;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3);
        }

        .button-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .button-container a.button {
            background-color: transparent;
            color: white;
            border-radius: 10px;
            padding: 1rem 2rem;
            font-weight: 500;
            font-size: 0.875rem;
            display: inline-block;
            transition: background-color 0.3s, color 0.3s;
            margin-left: 10px;
        }

        .button-container a.button:hover {
            background-color: #EFFFFD;
            color: black;
        }

        .hero-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            width: 100%;
        }

        .hero-title, .hero-description {
            width: 100%;
            padding: 10px;
        }

        .hero-title {
            border-bottom: 1px solid rgba(255, 255, 255, 0.3);
        }

        .hero-description {
            text-align: left;
            font-style: italic;
        }

        .hero-description ul {
            padding-left: 20px;
        }

        .hero-description li {
            margin-bottom: 10px;
        }
    </style>
</head>
<body style="background-position: center center; background-size: cover; background-repeat: repeat; min-height: 100vh;">
    <div class="nav-container">
        <nav class="nav-buttons flex items-center justify-between py-2 px-8">
            <ul class="flex space-x-6 text-lg font-medium">
                <li><a href="http://localhost/book_recommendation/templates/Home.php" class="nav-link">Home</a></li>
                <li><a href="#" class="nav-link">Contact</a></li>
            </ul>
        </nav>
        <div class="button-container">
            <a href="http://localhost/book_recommendation/templates/login.php" class="button">Get Started</a>
            <a href="http://localhost/book_recommendation/templates/Explore.php?sort=UserRating&order=DESC" class="button">Explore</a>
        </div>
    </div>
    <div class="hero blur-box">
        <div class="hero-content">
            <div class="hero-title">
                <h1>Book Recommendations</h1>
            </div>
            <div class="hero-description">
                <p>About Our Book Recommendation System</p>
                <ul>
                    <li>Our advanced book recommendation system leverages state-of-the-art AI and machine learning algorithms to provide personalized book suggestions. Here's how it works:</li>
                    <li>Personalized Recommendations</li>
                    <li>Our system analyzes your reading history, preferences, and ratings to understand your unique tastes. Whether you're into thrilling mysteries, heartwarming romances, or insightful non-fiction, we tailor our suggestions to match your interests.</li>
                    <li>Extensive Database</li>
                    <li>With access to a vast collection of books spanning various genres and subgenres, our recommendation engine ensures you never run out of exciting reads. From timeless classics to the latest bestsellers, we've got it all.</li>
                    <li>Community-Driven</li>
                    <li>Join a community of book lovers who share their reviews and recommendations. Our system incorporates community feedback to enhance the accuracy and diversity of the suggestions you receive.</li>
                    <li>Easy to Use</li>
                    <li>Simply sign up, rate a few books, and let our system do the rest. You'll receive personalized book recommendations directly on your dashboard, making it easier than ever to find your next great read.</li>
                    <li>Experience the future of reading with our cutting-edge book recommendation system. Start your literary journey with us today!</li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>
