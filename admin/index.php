<?php
include "../model/pdo.php";
include "../model/danhmuc.php";
include "../model/sanpham.php";
include "header.php";

if(isset($_GET['act'])&&($_GET['act']!="")){
    $act=$_GET['act'];
    switch($act){
        case "listsp":
            if(isset($_POST['clickOK'])&&($_POST['clickOK'])){
                $keyw=$_POST['keyw'];
                $iddm=$_POST['iddm'];
            }else{
                $keyw="";
                $iddm=0;
            }
            $listdanhmuc= loadall_danhmuc();
            $listsanpham = loadall_sanpham($keyw,$iddm);
            include "sanpham/list.php";
            break;
        case "addsp":
            $listdanhmuc= loadall_danhmuc();
            include "sanpham/add.php";
            
            if(isset($_POST['themmoi'])&& ($_POST['themmoi'])){
                $id_danh_muc = $_POST['iddm'];
                $ten = $_POST['ten'];
                $gia_niem_yet = $_POST['gianiemyet'];
                $gia_ban = $_POST['giaban'];
                $mota = $_POST['mota'];
                $soluong = $_POST['soluong']
                $anh = $_FILES['hinh']['name'];
//                    echo $hinh;
                $target_dir = "../upload/";
                $target_file = $target_dir.basename($_FILES['hinh']['name']);
//                    echo $target_file;
                if(move_uploaded_file($_FILES['hinh']['tmp_name'], $target_file)){
//                        echo "Bạn đã upload ảnh thành công";
                }else{
//                        echo "Upload ảnh không thành công";
                }
//                    echo $iddm;
                insert_sanpham($ten, $gia_niem_yet,$gia_ban, $anh,$mota, $id_danh_muc,$soluong);
                
            }

            
            break;

        }
    }else{
        include "home.php";
    }

include "footer.php";

?>