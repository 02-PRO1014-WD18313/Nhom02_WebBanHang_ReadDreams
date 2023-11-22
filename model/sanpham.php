<?php
function loadall_sanpham_home(){
    $sql="select * from sanpham where 1 order by id desc limit 0,8";
    $listsanpham=pdo_query($sql);
    return  $listsanpham;
}
function insert_sanpham($ten,$id_danh_muc, $gia_niem_yet, $gia_ban, $so_luong, $anh, $mo_ta){
    $sql = "INSERT INTO sanpham(ten, id_danh_muc, gia_niem_yet, gia_ban, so_luong, anh, mo_ta) VALUES ('$ten', '$id_danh_muc', '$gia_niem_yet', '$gia_ban', '$so_luong', '$anh', '$mo_ta')";
    pdo_execute($sql);
}

// function loadall_sanpham($keyw="",$iddm=0){
//     $sql="SELECT * from sanpham ";
//     // where 1 tức là nó đúng
//     if($keyw!=""){
//         $sql.=" and name like '%".$keyw."%'";
//     }
//     if($iddm>0){
//         $sql.=" and iddm ='".$iddm."'";
//     }
//     $sql.=" order by id desc";
//     $listsanpham=pdo_query($sql);
//     return  $listsanpham;
// }

function loadall_sanpham($kyw="", $iddm=0){
    $sql="select * from sanpham where 1";
    if($kyw!=""){
        $sql.=" and name like '%".$kyw."%'";
    } if($iddm>0){
        $sql.= " and iddm = '".$iddm."'";
    }        
    $sql.=" order by id desc";
    $listsanpham =pdo_query($sql);  
    return  $listsanpham;
}