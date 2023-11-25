
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
            
            if(isset($_POST['themmoi'])&& ($_POST['themmoi'])){
                $id_danh_muc = $_POST['iddm'];
                $ten = $_POST['ten'];
                $gia_niem_yet = $_POST['gianiemyet'];
                $gia_ban = $_POST['giaban'];
                $mota = $_POST['mota'];
                $soluong = $_POST['soluong'];
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
                // echo $ten,$gia_niem_yet,$mota,$soluong,$anh;
                insert_sanpham($ten, $id_danh_muc, $gia_niem_yet,$gia_ban,$soluong ,$anh,$mota);
                
            }
            $listdanhmuc= loadall_danhmuc();
            include "sanpham/add.php";
            
            break;
            case "suasp":
                if(isset($_GET['idsp'])&&($_GET['idsp']>0)){
                    $sanpham=loadone_sanpham($_GET['idsp']);
                }
                $listdanhmuc=loadall_danhmuc();
                include "sanpham/update.php";
                break;

        
        case "updatesp":
            if(isset($_POST['capnhat'])&&($_POST['capnhat'])){
                $id_danh_muc=$_POST['iddm'];
                $id=$_POST['id'];
                $ten=$_POST['tensp'];
                $gia_niem_yet=$_POST['gia_niem_yet'];
                $gia_ban=$_POST['gia_ban'];
                $so_luong=$_POST['so_luong'];
                $anh=$_FILES['hinh']['name'];
                $mo_ta=$_POST['mo_ta'];
                $target_dir = "../upload/";
                $target_file = $target_dir . basename($_FILES["hinh"]["name"]);
                // if (move_uploaded_file($_FILES["hinh"]["tmp_name"], $target_file)) {
                //     echo "The file ". htmlspecialchars( basename( $_FILES["hinh"]["name"])). " has been uploaded.";
                // } else {
                //     echo "Sorry, there was an error uploading your file.";
                // }
                update_sanpham($id,$ten, $id_danh_muc, $gia_niem_yet,$gia_ban, $so_luong, $anh, $mo_ta);
                
            }
            $listsanpham=loadall_sanpham("",0);
            $listdanhmuc=loadall_danhmuc();
            include "sanpham/list.php";
            break;
            case"hard_delete":
                if(isset($_GET['idsp'])){
                    hard_delete($_GET['idsp']);
                }
                $listsanpham=loadall_sanpham("",0);
                include"sanpham/list.php";
            break;

            // case "soft_delete":
            //     if(isset($_GET['idsp'])){
            //         soft_delete($_GET['idsp']);
            //     }
            //     $listsanpham=loadall_sanpham("",0);
            //     $listdanhmuc=loadall_danhmuc();
            //     include "sanpham/list.php";
            // break;
            case"listdanhmuc":
                include "danhmuc/list.php";
                break;
            case"adddanhmuc":
                    if(isset($_POST['themmoidanhmuc'])&& ($_POST['themmoidanhmuc'])){
                        $ten = $_POST['ten'];
                        insert_danhmuc($ten);
                    }
                    include "danhmuc/add.php";
                    break;

            case "suadanhmuc":
                        if(isset($_GET['iddanhmuc'])&&($_GET['iddanhmuc']>0)){
                            $danhmuc=loadone_danhmuc($_GET['iddanhmuc']);
                        }
                        
                        include "danhmuc/update.php";
                        break;        
            case "updatedanhmuc":
                            if(isset($_POST['capnhat'])&&($_POST['capnhat'])){
                               
                                $ten=$_POST['tendanhmuc'];
                                $id=$_POST['id'];
                               
                                update_danhmuc($id,$ten);
                                
                            }
                            include "danhmuc/update.php";
                            
                            break;      
            



        }  
    }else{
        include "home.php";
    }

include "footer.php";


?>