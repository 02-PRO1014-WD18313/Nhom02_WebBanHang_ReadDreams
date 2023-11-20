<?php
function loadall_sanpham_home(){
    $sql="select * from sanpham where 1 order by id desc limit 0,8";
    $listsanpham=pdo_query($sql);
    return  $listsanpham;
}
function insert_sanpham($tensp,$giasp, $hinh, $mota, $iddm){
    $sql = "INSERT INTO `sanpham`(`ten`, `id_danh_muc`, `gia_niem_yet`, `gia_ban`, `so_luong`, `anh`, `mo_ta`) VALUES (`$ten`, `$id_danh_muc`, `$gia_niem_yet`, `$gia_ban`, `$so_luong`, `$anh`, `$mo_ta`);";
    pdo_execute($sql);
}
