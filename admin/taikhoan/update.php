<?php
if(is_array($tk)){
    extract($tk);
}

?>
<style>
    table th{
  padding: 15px;
  
}
</style>
<div class="row2">
    <div class="row2 font_title">
        <h1>DANH SÁCH TÀI KHOẢN</h1>
    </div>
    <div class="row2 form_content ">
        <form action="index.php?act=updatetk" method="POST">
            <div class="row2 mb10 formds_loai">
                <!-- <form action="index.php?act=listsp" method="post">
                   
                    <select name="iddm" id="">
                        <option value="0" selected>Tất cả</option>
                        
                    </select>
                    <input type="submit" name="clickOK" value="GO">
                </form> -->
                <table>
                    <tr>
                        <th></th>
                        <th>USER ID</th>
                        <th>TÊN</th>
                        <th>EMAIL</th>
                        <th>SĐT</th>
                        <th>VAI TRÒ</th>
                        
                    </tr>
                    <?php
                         
                            extract($tk);
                            
                            
                            
                            echo '
                            <tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>'.$tk['id'].'</td>
                            <td>'.$tk['user'].'</td>
                            <td>'.$tk['email'].'</td>
                            <td>'.$tk['tel'].'</td>
                            <td><input type="number" value="'.$tk['role'].'" name="role"></td>
                            <td>
                            <input type="hidden" name="id" value="'.$tk['id'].'">
                            <input class="mr20" name="updatetk" type="submit" value="Cập Nhật">
                            </td>
                            
                            
                            </tr>

                            
                            ';
                           


                    ?>

                    

                </table>
            </div>
            <!-- <div class="row mb10 ">
                <input class="mr20" type="button" value="CHỌN TẤT CẢ">
                <input class="mr20" type="button" value="BỎ CHỌN TẤT CẢ">
                <a href="index.php?act=addsp"> <input class="mr20" type="button" value="NHẬP THÊM"></a>
            </div> -->
        </form>
    </div>
</div>





</div>