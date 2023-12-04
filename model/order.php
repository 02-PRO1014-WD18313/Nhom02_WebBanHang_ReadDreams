<?php

function addOrder($id_user, $hoten, $sdt, $email, $diachi, $tongtien, $pttt, $ngaydathang){
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    $ngaydathangFormatted = date('Y-m-d H:i:s', strtotime($ngaydathang));
    $sql = "INSERT INTO tbl_order (id_user, hoten, sdt, email, diachi, tongtien, pttt, ngaydathang) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    $id = pdo_executeid($sql, $id_user, $hoten, $sdt, $email, $diachi, $tongtien, $pttt, $ngaydathangFormatted);
    return $id;
}


function addOrderDetail($id_order, $id_pro, $giamua, $soluong, $thanhtien){
    $sql="INSERT INTO order_detail (id_order, id_pro, giamua, soluong, thanhtien) VALUES ($id_order, $id_pro, $giamua, $soluong, $thanhtien );";
    pdo_execute($sql);
}

function loadone_order($id_order){
    $sql="select * from tbl_order where id_order=".$id_order ; 
    $order = pdo_query_one($sql);
    return $order;
}

function load_all_orders($user_id) {
    $sql = "SELECT * FROM tbl_order WHERE id_user = ?";
    $orders = pdo_query($sql, $user_id);    
    return $orders;
}

function load_order_details($id_order){
    $sql = "SELECT order_detail.*, sanpham.ten AS ten_san_pham FROM order_detail JOIN sanpham ON order_detail.id_pro = sanpham.id WHERE id_order=?";
    $orderDetails = pdo_query($sql, $id_order);
    return $orderDetails;
}


?>