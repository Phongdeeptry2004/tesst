<?php 
class Test  extends DB{
    public function getUssers(){
        $sql = "SELECT * FROM giaovien";
        $stmt = $this->connect()->query($sql);
        while($row=$stmt->fetch()){
            echo $row['MAGV'].'<br>';
            echo $row['TENGV'].'<br>';
            echo $row['CHUYENMON'].'<br>'; 
            echo $row['CHUCDANH'].'<br>';
            echo $row['MAHDT'].'<br>';
            echo $row['MATR'].'<br>';
        }
    }
    function getUserStmt($tenGV,$maTr){
        $sql="select * from giaovien where TENGV LIKE'"."$tenGV"." and MADT LIKE";
    }

}