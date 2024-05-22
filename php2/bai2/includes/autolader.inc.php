<?php 

spl_autoload_register('Loader');
function Loader($className){
    $path = 'classes/';
    $extension=".class.php";
    $fullpath=$path.$className.$extension;
    include_once $fullpath;
};