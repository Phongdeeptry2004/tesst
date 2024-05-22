<?php 
class Taikhoan{
    public $public="Truy cập dữ liệu ở bất kì đâu";//Thuộc tính
    public $private="truy cập dữ liệu ở trong class";//Thuộc tính
    public $protected="Truy cập dữ liệu ở trong class và class kế thừa";//Thuộc tính

    function lay_private(){//Phương thức
        return $this->private;
    }
    function lay_protectrd(){ return $this->protected; }
}
// class A extends B{
// Được hiểu là Class A được kế thừa toàn bộ thuộc tính và phương thức trong Class B (Nhưng không kế thừa được thuộc tính và phương thức có private muốn lấy thì phải thông qua function)
//}
class Khanhhang extends Taikhoan{
    function lay_protectrd(){ return $this->protected; }

}

?>