
<?php 
// include_once "classes/Taikhoan.class.php";
// include_once "classes/Nguoidung.class.php";
// include_once "classes/Giohang.class.php";
spl_autoload_register('Loader');
function Loader($className){
    $path="classes/";
    $extension=".class.php";
    $fullpath=$path.$className.$extension;
    //VD:classes/Giohang.class.php
    include_once $fullpath;
}
?>