<?php
class DB{
    private $host = 'localhost'; 
    private $dbName = 'abcxyz';      
    private $user = 'root';     
    private $pass = ''; 
    private $charset='utf8';   
    
    protected function connect(){
        try {
            $conn = "mysql:host=$this->host;dbname=$this->dbName;charset=$this->charset";
            $pdo = new PDO($conn,$this->user,$this->pass,);
            $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_ASSOC);
            return $pdo;
            }catch (PDOException $e) {
                die('Error : ' .$e->getMessage());
            }
    }

}