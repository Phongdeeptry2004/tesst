<?php
$servername = "localhost";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$servername;dbname=test", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
$sql = $conn->prepare('select*from thu');
$sql->execute();
$test = $sql->fetchAll();
$noidung = $_POST['noidung'];
$stmt=$conn->prepare("INSERT INTO thu( noidung) VALUES (?)");
$stmt->execute([$noidung]);
?>
Trong đoạn mã trên, hàm nl2br sẽ chuyển đổi tất cả các ký tự xuống dòng trong chuỗi $noidung thành thẻ <br>, giúp trình duyệt hiển thị đúng các dòng mới.
 Lưu ý rằng bạn cần sử dụng hàm nl2br này khi hiển thị nội dung, không phải khi lưu nội dung vào cơ sở dữ liệu.

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="" method="post">
    <label for="noidung">Nội dung:</label><br>
    <textarea id="noidung" name="noidung"></textarea><br>
    <input type="submit" value="Gửi">

    <?php
$sql = $conn->prepare('SELECT * FROM thu');
$sql->execute();
$results = $sql->fetchAll(PDO::FETCH_ASSOC);

$noidung=nl2br($results[0]['noidung']);
echo($noidung);
    ?>
</form>
</body>
</html>