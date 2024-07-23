<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Recommendation</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #074173, #11468F, #11468F, #074173);
            color: white;
        }

        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .table-container {
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background: #11468F;
            color: white;
        }

        tr:nth-child(even) {
            background: rgba(255, 255, 255, 0.1);
        }

        .sort-button {
            background-color: #074173;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
            font-size: 1rem;
            margin: 5px;
        }

        .sort-button:hover {
            background-color: #093E7A;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Book Recommendation System</h1>
        <div class="table-container">
            <table id="booksTable">
                <thead>
                    <tr>
                        <th><button class="sort-button" onclick="sortTable(0)">ID</button></th>
                        <th><button class="sort-button" onclick="sortTable(1)">Title</button></th>
                        <th><button class="sort-button" onclick="sortTable(2)">Author</button></th>
                        <th><button class="sort-button" onclick="sortTable(3)">Genre</button></th>
                        <th><button class="sort-button" onclick="sortTable(4)">SubGenre</button></th>
                        <th><button class="sort-button" onclick="sortTable(5)">User Rating</button></th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Data will be populated here by JavaScript -->
                </tbody>
            </table>
        </div>
    </div>

    <script>
    document.addEventListener('DOMContentLoaded', () => {
    fetch('fetch_books.php')
        .then(response => response.json())
        .then(data => {
            console.log('Data fetched:', data); // Log fetched data to console
            if (data.error) {
                console.error('Error fetching data:', data.error);
            } else {
                populateTable(data);
            }
        })
        .catch(error => console.error('Error fetching data:', error));
    });

    function populateTable(books) {
        const tableBody = document.querySelector('#booksTable tbody');
        tableBody.innerHTML = ''; // Clear existing data

        books.forEach(book => {
            const row = document.createElement('tr');
            row.innerHTML = `
                <td>${book.id}</td>
                <td>${book.Title}</td>
                <td>${book.Author}</td>
                <td>${book.Genre}</td>
                <td>${book.SubGenre}</td>
                <td>${book.UserRating}</td>
            `;
            tableBody.appendChild(row);
    });
}


    // Function to sort table by column
    function sortTable(columnIndex) {
        const table = document.getElementById('booksTable');
        const rows = Array.from(table.querySelectorAll('tbody tr'));
        const isAscending = table.getAttribute('data-sort-order') === 'asc';

        rows.sort((a, b) => {
            const aText = a.children[columnIndex].innerText;
            const bText = b.children[columnIndex].innerText;

            if (!isNaN(aText) && !isNaN(bText)) {
                return isAscending ? aText - bText : bText - aText;
            } else {
                return isAscending ? aText.localeCompare(bText) : bText.localeCompare(aText);
            }
        });

        rows.forEach(row => table.querySelector('tbody').appendChild(row));
        table.setAttribute('data-sort-order', isAscending ? 'desc' : 'asc');
    }
</script>

</body>
</html>
