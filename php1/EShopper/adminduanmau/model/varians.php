<?php 
function showallcolor(){
    $sql = "SELECT * FROM color ";
    return  pdo_query($sql);
}
function showallsize(){
  $sql = "SELECT * FROM size ";
  return  pdo_query($sql);
}
function xoacolor($id){
  $sql = "DELETE FROM `color` WHERE id=".$id;
   pdo_execute($sql);
}
function xoasize($id){
  $sql = "DELETE FROM `size` WHERE id=".$id;
   pdo_execute($sql);
}
function themcolor($color){
  $sql = "INSERT INTO `color`(`name`) VALUES ('$color')";
  pdo_execute($sql);
}
function themsize($size){
  $sql = "INSERT INTO `size`(`name`) VALUES ('$size')";
  pdo_execute($sql);
}
function showonecolor($id){
  $sql = "SELECT * FROM color WHERE id=".$id;
  return pdo_query($sql);
}
function   updatecolor($color,$id){
  $sql = "UPDATE `color` SET `name`='$color' WHERE id=".$id;
  pdo_execute($sql);
}
function showonesize($id){
  $sql = "SELECT * FROM size WHERE id=".$id;
  return pdo_query($sql);
}
function   updatesize($size,$id){
  $sql = "UPDATE `size` SET `name`='$size' WHERE id=".$id;
  pdo_execute($sql);
}
function addpv($id_product,$id_size,$id_color,$quantity,$date,$price){
  $sql = "INSERT INTO product_variants (product_id, size_id, color_id, quantity, ngaytao, price) VALUES ('$id_product','$id_size','$id_color','$quantity','$date','$price')";
  pdo_execute($sql);
}
function showpbbyid($id){
  $sql="SELECT
  product.id AS product_id,
  product.name AS product_name,
  product.img AS product_img,
  product_variants.product_id AS product_variant_product_id,
  size.id AS size_id,
  color.id AS color_id,
  size.name AS size_name,
  color.name AS color_name,
  product_variants.quantity AS product_variant_quantity,
  product_variants.id AS id
FROM product product
JOIN product_variants product_variants ON product.id = product_variants.product_id
JOIN size size ON product_variants.size_id = size.id
JOIN color color ON product_variants.color_id = color.id WHERE  product.id=$id; ";
 return pdo_query($sql);
}
function showonepvbyid($id){
  $sql="SELECT
  product.id AS product_id,
  product.name AS product_name,
  product.img AS product_img,
  product_variants.product_id AS product_variant_product_id,
  size.name AS size_name,
  color.name AS color_name,
  product_variants.quantity AS product_variant_quantity,
  product_variants.id AS id
FROM product product
JOIN product_variants product_variants ON product.id = product_variants.product_id
JOIN size size ON product_variants.size_id = size.id
JOIN color color ON product_variants.color_id = color.id WHERE  product_variants.id=$id;";
 return pdo_query($sql);
}
function xoapv($id){
  $sql = "DELETE FROM `product_variants` WHERE id=".$id;
  pdo_execute($sql);
}
function   updatepv($id,$id_product,$id_color,$id_size,$quantity,$price){
  $sql = "UPDATE `product_variants` SET `product_id`='$id_product',`size_id`='$id_size',`color_id`='$id_color',`quantity`='$quantity',`price`='$price'  WHERE id=".$id;
  pdo_execute($sql);
}