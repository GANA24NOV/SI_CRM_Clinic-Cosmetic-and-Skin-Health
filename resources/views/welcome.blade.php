<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <style>
        /* Internal CSS */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .sidebar {
            position: fixed;
            left: 0;
            top: 0;
            width: 250px;
            height: 100%;
            background-color: #333;
            color: #fff;
            padding-top: 20px;
        }

        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }

        .sidebar ul li {
            padding: 10px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .sidebar ul li:hover {
            background-color: #555;
        }

        .content {
            margin-left: 250px;
            padding: 20px;
        }

        .content h1 {
            margin-bottom: 20px;
        }
    </style>
</head>

<body>

    <div class="sidebar">
        <ul>
            <li>Dashboard</li>
            <li>Pengguna</li>
            <li>Data produk</li>
            <li>Perawatan</li>
        </ul>
    </div>

    <div class="content">
        <h1>Welcome to clinic cosmetic and skin health </h1>
        <h3>Admin</h3>
        <div class="welcome-box">
            <h2>Welcome!</h2>
            <p>You are logged in as a user. Enjoy exploring the dashboard!</p>
        </div>
    </div>

</body>

</html>
