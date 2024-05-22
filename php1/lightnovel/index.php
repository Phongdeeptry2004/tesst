<?php
$servername = "localhost";
$username = "root";
$password = "";

try {
    // Create connection
    $conn = new PDO("mysql:host=$servername;dbname=StoryDB", $username, $password);
    // Set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>


<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Trang đọc truyện</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <h1>Trang đọc truyện</h1>
  </header>
  <main>
    <section class="content">
      <h2>Tiêu đề truyện</h2>
      <p>Thể loại truyện</p>
      <div class="content-text">

      </div>
    </section>
    <section class="control">
      <button class="button-prev">Trước</button>
      <button class="button-next">Sau</button>
      <input type="range" class="range-size" min="10" max="20" value="14">
    </section>
  </main>
  <footer>
    <p>Copyright &copy; 2023</p>
  </footer>
</body>
</html>