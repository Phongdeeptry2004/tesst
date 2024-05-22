<?php 

class Giohang{
    protected static $ten;

    static function set_ten($ten){
       self::$ten = $ten;
    }
    static function get_ten(){
       return self::$ten;
    }
    static function all($ten){
       self::set_ten($ten);
       return self::get_ten();
   
    }
}