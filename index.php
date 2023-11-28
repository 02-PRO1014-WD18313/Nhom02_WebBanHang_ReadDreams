
<?php
session_start();
if(!isset($_SESSION['mycart'])) $_SESSION['mycart']=[];
ob_start();
 include "model/pdo.php";
 include "model/sanpham.php";
 include "model/danhmuc.php";
 include "model/taikhoan.php";
 include "model/cart.php";


 include "global.php";

include "view/header.php";


$spnew = loadall_sanpham_home();
$dsdm = loadall_danhmuc();

if(isset($_GET['act'])&&($_GET['act']!="")){
    $act=$_GET['act'];
    switch($act){
        case "sanphamct": 
            if (isset($_GET['idsp'])&&($_GET['idsp']>0)){
                // $id=$_GET['idsp'];
                $onesp=loadone_sanpham($_GET['idsp']);
                $sp_cung_loai = loadone_sanpham_cungloai($_GET['idsp'], $onesp['id_danh_muc']);
                // $onesp=loadone_sanpham($id);
                // $iddm=$spchitiet['iddm'];
                // $splienquan=load_sanpham_lienquan($iddm,$id,4);
                
                include "view/sanphamct.php";
            }else{
                include "view/home.php";
            }
            break;
        // case "sanpham":
        //     if(isset($_POST['keyword']) &&  $_POST['keyword'] != 0 ){
        //         $kyw = $_POST['keyword'];
        //     }else{
        //         $kyw = "";
        //     }
        //     if(isset($_GET['iddm']) && ($_GET['iddm']>0)){
        //         $iddm=$_GET['iddm'];
        //     }else{
        //         $iddm=0;
        //     }
        //     $dssp=loadall_sanpham($kyw,$iddm);
        //     $tendm= load_ten_dm($iddm);
        //     include "view/sanpham.php";
        //     break;

        case 'sanpham':
            if(isset($_POST['kyw']) && !empty($_POST['kyw'])){
                $kyw = $_POST['kyw'];
            } else {
                $kyw="";
            }
            if(isset($_GET['iddm'])&&($_GET['iddm']>0)){
                $iddm=$_GET['iddm'];
               
            } else {
                $iddm=0;    
            }
            $dssp=loadall_sanpham($kyw, $iddm);
            $tendm = load_ten_dm($iddm);
            include "view/sanpham.php";
            break;

            case 'dangky':
                if(isset($_POST['dangky'])&&($_POST['dangky'])){
                    $email=$_POST['email'];
                    $user=$_POST['user'];
                    $pass=$_POST['pass'];
                    $tel=$_POST['tel'];
                    insert_taikhoan($email, $user, $pass,$tel);
                    $thongbao="Đã đăng ký thành công. Vui lòng đăng nhập!";
                }
                include "view/dangky.php";
                break;

                case 'dangnhap':
                    if(isset($_POST['dangnhap'])&&($_POST['dangnhap'])){
                        $user=$_POST['user'];
                        $pass=$_POST['pass'];
                        $checkuser=checkuser($user, $pass);
                        if(is_array($checkuser)){
                            $_SESSION['user']=$checkuser;
                            // $thongbao="Bạn đã đăng nhập thành công!";
                            header('Location: index.php');
                        } else {
                            $thongbao="Tài khoản không tồn tại. Vui lòng kiểm tra hoặc đăng ký!";
                        }
                    }
                    include "view/dangnhap.php";
                    break;

                    case 'addtocart':
                        if(isset($_POST['addtocart'])&&($_POST['addtocart'])){
                            $id=$_POST['id'];
                            $name=$_POST['name'];
                            $img=$_POST['img'];
                            $price=$_POST['price'];
                            $soluong=1;
                            $ttien=$soluong * $price;
                            $spadd=[$id,$name,$img,$price,$soluong,$ttien];
                            array_push($_SESSION['mycart'],$spadd);
                        }
                        insert_cart($img, $name, $price, $soluong);
                        include "view/cart/viewcart.php";
                        break;

                        case 'delcart':
                            if(isset($_GET['idcart'])){
                                array_splice($_SESSION['mycart'],$_GET['idcart'],1);
                            } else {
                                $_SESSION['mycart']=[];
                            }
                            include "view/cart/viewcart.php";
                            break;             
            }
            ob_end_flush();
        }else{
            include "view/home.php";
        }             
               
include "view/footer.php";

?>