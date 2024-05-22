<?php 
include("includes/newClassinc.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PDO php</title>
</head>
<body>
<?php
$n = 30;
$a = array();
for ($i = 0; $i <= $n; $i++) {
       $a[$i] = $i;
}
echo $a['0'];
print_r($a);
?>
</body>
</html>