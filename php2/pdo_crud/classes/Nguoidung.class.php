<?php 
// interface Phuongthucthanhtoan{
//    function tratien();

// }
// interface DangnhapThanhtoan{
//    function dangnhap();
//    function thanhtoanonline();

// }
// //create class
// class Paypal implements Phuongthucthanhtoan{
//    function dangnhap(){
//       echo "Đã đăng nhập<br>";
//    }
//    public function tratien(){
//       echo "Đã trả tiền bằng : Paypal";
//    }
//    function hinhthuc_chung(){
//       $this->tratien();
//    }
// }

// class Visa implements Phuongthucthanhtoan{
//    function dangnhap(){
//       echo "Đã đăng nhập<br>";
//    }
//    public function tratien(){
//       echo "Đã trả tiền bằng : Visa";
//    }
//    function hinhthuc_chung(){
//       $this->tratien();
//    }
// }
// class Tienmat implements Phuongthucthanhtoan{
//    public function tratien(){
//       echo "Đã trả tiền bằng : Tiền Mặt<br>";
//    }
//    function hinhthuc_chung(){
//       $this->tratien();
//    }
// }
// class MuaHang{
//    function thanhtoan(phuongthucthanhtoan $phuongthucthanhtoan){
//       $phuongthucthanhtoan->hinhthuc_chung();
//    }
// }

//Abstract
?>
<?php 
abstract class Phuongthucthanhtoan{
   abstract function tratien();
   abstract function dangnhap();

}

//create class
class Paypal extends Phuongthucthanhtoan{
   function dangnhap(){
      echo "Đã đăng nhập<br>";
   }
   public function tratien(){
      echo "Đã trả tiền bằng : Paypal";
   }
   function hinhthuc_chung(){
      $this->dangnhap();
      $this->tratien();
   }
}

class Visa extends Phuongthucthanhtoan{
   function dangnhap(){
      echo "Đã đăng nhập Visa<br>";
   }
   public function tratien(){
      echo "Đã trả tiền bằng : Visa";
   }
   function hinhthuc_chung(){
      $this->dangnhap();
      $this->tratien();
   }
}
class Tienmat extends Phuongthucthanhtoan{
   function dangnhap(){}
   public function tratien(){
      echo "Đã trả tiền bằng : Tiền Mặt<br>";
   }
   function hinhthuc_chung(){
      $this->tratien();
   }
}
class MuaHang{
   function thanhtoan(phuongthucthanhtoan $phuongthucthanhtoan){
      $phuongthucthanhtoan->hinhthuc_chung();
   }
}