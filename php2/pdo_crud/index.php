<?php 
declare(strict_types=1);//kích hoạt chế độ phần khai báo biến 
include_once "classes/Nguoidung.class.php";

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <pre>
    <?php  
    $phuongthucthanhtoan = new Paypal();
    $muahang= new Muahang();
    $muahang->thanhtoan($phuongthucthanhtoan);
    ?>
</body>
</html>