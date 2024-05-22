<?php
//Phương thức tìm dữ liệu theo id 

public function find($id){
    $model = new Static ;
    $model->sqlBuider="Select * from $model->tablename Where id=:id";
    // chuẩn bị
    $stmt= $model->conn->prepare($model->sqlBuider);
    //thực thi 
    $stmt->excute(['id'->$id]);
    //lấY dữ liệu
    $result=$stmt->fectAll(PDO::FETCH_CLASS);
    if($result){
        return $result[0];//làm gọn khi lấY mảng 
    }
    return $result;
}