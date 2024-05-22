<?php
 $conn = "";
 try {
     $servername = "localhost";
     $dbname = "masv_examphpl";
     $username = "root";
     $password = "";
   
     $conn = new PDO(
         "mysql:host=$servername; dbname=$dbname",
         $username, $password
     );
      
    $conn->setAttribute(PDO::ATTR_ERRMODE,
                     PDO::ERRMODE_EXCEPTION);
 }
 catch(PDOException $e) {
     echo "Connection failed: " . $e->getMessage();
 }
 $sql=$conn->prepare('select*from class');
 $sql->execute();
 $class=$sql->fetchAll();
if(isset($_POST['submit'])){
    $sql=$conn->prepare("INSERT INTO `students`( `student_name`, `birth`, `phone`, `email`, `address`, `class_id`) VALUES (:student_name,:birth,:phone,:email,:address,:class_id)");
    $sql->bindParam(':student_name',$_POST['name']);
    $sql->bindParam(':birth',$_POST['birth']);
    $sql->bindParam(':phone',$_POST['phone']);
    $sql->bindParam(':email',$_POST['email']);
    $sql->bindParam(':address',$_POST['address']);
    $sql->bindParam(':class_id',$_POST['class_id']);
    $sql->execute();
}
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
    <form action="" method="post">
    <label for="name">name</label>
    <input type="text" name="name"><br>
    <label for="birth">birth</label>
    <input type="date" name="birth" id=""><br>
    <label for="phone">phone</label>
    <input type="number" name="phone" id=""><br>
    <label for="email">email</label>
    <input type="email" name="email" id=""><br >
    <label for="address">address</label>
    <input type="text" name="address" id="">
    <label for="img">img</label>
    <input type="file" name="img" id="">
    <label for="class">class</label>
    <select name="class_id">
        <?php foreach($class as $cl):?>
            <option value="<?php echo $cl['class_id']?>"><?php echo $cl['class_name']?></option>
            <?php endforeach?>
    </select>
            <button type="submit" name="submit">nop</button>
    </form>
    <a href="index.php">ád</a>
</body>
</html>