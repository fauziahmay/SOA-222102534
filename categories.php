<?php
// Koneksi ke database
$host = 'localhost'; // Nama host
$dbname = 'soa'; // Nama database
$username = 'root'; // Username MySQL
$password = ''; // Password MySQL (kosong)

// Mencoba untuk membuat koneksi menggunakan PDO
try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    // Set error mode PDO
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Query untuk mengambil data dari tabel 'categories'
    $query = "SELECT * FROM categories";
    $stmt = $conn->prepare($query);
    $stmt->execute();

    // Menampilkan data dalam bentuk tabel HTML
    echo "<!DOCTYPE html>
    <html lang='id'>
    <head>
        <meta charset='UTF-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1.0'>
        <title>Categories</title>
        <!-- Link Font Awesome untuk menggunakan ikon -->
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css'>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                color: #333;
                padding: 20px;
            }
            table {
                border-collapse: collapse;
                width: 100%;
                margin: 20px 0;
            }
            th, td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }
            th {
                background-color: #d17070;
                color: white;
            }
            .action-buttons {
                display: flex;
                gap: 10px;
            }
            .action-buttons a {
                padding: 5px;
                text-decoration: none;
                color: white;
                border-radius: 5px;
                display: inline-block;
                width: 30px;
                height: 30px;
                text-align: center;
                line-height: 30px;
            }
            .action-buttons .edit {
                background-color: #4CAF50; /* Hijau untuk edit */
            }
            .action-buttons .delete {
                background-color: #f44336; /* Merah untuk hapus */
            }
            .back-button {
                background-color: #d17070;
                color: white;
                padding: 10px 15px;
                text-decoration: none;
                border-radius: 5px;
                margin-top: 20px;
                display: inline-block;
            }
            .back-button:hover {
                background-color: #b05f5f;
            }
        </style>
    </head>
    <body>
        <h1>Data Categories</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Action</th>
            </tr>";

    // Mengambil hasil query dan menampilkannya
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo "<tr>";
        echo "<td>" . htmlspecialchars($row['id']) . "</td>";
        echo "<td>" . htmlspecialchars($row['name']) . "</td>";
        echo "<td>" . htmlspecialchars($row['description']) . "</td>";
        echo "<td>
                <div class='action-buttons'>
                    <a href='edit_category.php?id=" . $row['id'] . "' class='edit'>
                        <i class='fas fa-pencil-alt'></i>
                    </a>
                    <a class='delete' href='delete_category.php?id=" . $row['id'] . "' onclick=\"return confirm('Apakah Anda yakin ingin menghapus kategori ini?');\">
                        <i class='fas fa-trash'></i>
                    </a>
                </div>
              </td>";
        echo "</tr>";
    }

    echo "</table>
        <a class='back-button' href='index.html'>Kembali</a>
    </body>
    </html>";

} catch (PDOException $e) {
    echo "Koneksi gagal: " . $e->getMessage();
}

// Menutup koneksi
$conn = null;
?>
