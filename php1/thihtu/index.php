<?php
$servername = "localhost";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$servername;dbname=masv_examphpl", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
$sql = $conn->prepare('select*from students');
$sql->execute();
$students = $sql->fetchAll();

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <table>
        <tr>
            <th>id</th>
            <th>name</th>
            <th>birth</th>
            <th>phone</th>
            <th>email</th>
            <th>address</th>
            <th>img</th>
            <th>class-id</th>
            <th>button</th>
        </tr>
        <?php foreach ($students as $student) : ?>
            <tr>
                <th><?php echo $student['student_id'] ?></th>
                <th><?php echo $student['student_name'] ?></th>
                <th><?php echo $student['birth'] ?></th>
                <th><?php echo $student['phone'] ?></th>
                <th><?php echo $student['email'] ?></th>
                <th><?php echo $student['address'] ?></th>
                <th><?php echo $student['img'] ?></th>
                <th><?php echo $student['class_id'] ?></th>
                <th><form action="" method="post">
                    <input type="hidden" value="<?php echo $student['student_id']?>" name="id">
                    <button type="submit" name='delete' onclick="return confirm('Are you sure you want to delete this student?')">xoa</button>
                    <button type="submit" name='edit'>sua</button>
                </form></th>
            </tr>
        <?php endforeach ?>
    </table>
    <a href="add_student.php">ád</a>
</body>
<?php

if(isset($_POST['delete'])){
    $sql=$conn->prepare('DELETE FROM `students` WHERE student_id=:id');
    $sql->bindParam(':id',$_POST['id']);
    $sql->execute();
}
?>
</html>