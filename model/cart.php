<?php
    function viewcart($del){
        global $img_path;
        $tong=0;
        $i=0;
        if($del==1){
            $xoasp_th='<th>Thao tác</th>';
            $xoasp_td2='<td></td>';
        } else {
            $xoasp_th='';
            $xoasp_td2='';
        }

        echo '<tr>
                <th>Hình</th>
                <th>Sản phẩm</th>
                <th>Đơn giá</th>
                <th>Số lượng</th>
                <th>Thành tiền</th>
                '.$xoasp_th.'
             </tr>';


            foreach ($_SESSION['mycart'] as $cart){
                $hinh=$cart[2];
                $ttien=$cart[3]*$cart[4];
                $tong+=$ttien;
                if($del==1){
                    $xoasp_td='<td><a href="index.php?act=delcart&idcart='.$i.'"><input type="button" value="Xóa"></a></td>';
                } else {
                    $xoasp_td='';
                }
                echo '<tr>
                            <td><img src="'.$hinh.'"style="height: 120px;width:100%;object-fit: cover; "></td>
                            <td>'.$cart[1].'</td>
                            <td>'.$cart[3].'</td>
                            <td>'.$cart[4].'</td>
                            <td>'.$ttien.'</td>
                            '.$xoasp_td.'
                      </tr>';
                $i+=1;
                }
                echo '<tr>
                            <td colspan="4" style="color: red;  text-align: center; font-size: 20px;  font-weight: bold;">Tổng đơn hàng</td>
                            <td style="  text-align: center; font-size: 20px;  font-weight: bold;">'.$tong.'</td>
                            '.$xoasp_td2.'
                            </tr>';
            }

    function tongdonhang(){
        $tong=0;
            foreach ($_SESSION['mycart'] as $cart){
                $ttien=$cart[3]*$cart[4];
                $tong+=$ttien;
                }
                return $tong;
    }


    function insert_cart( $img, $name, $price, $soluong){
        $sql="insert into cart( img, name, price, soluong) values( '$img', '$name', '$price', '$soluong' )";
        return pdo_execute($sql);
    }





?>

