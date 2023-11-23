<?php
$dsdm = loadall_danhmuc();
?>

<table>
                    <tr>
                        <th>ID</th>
                        <th>Tên</th>
                    </tr>
                    <?php
                       
                        


                    foreach ($dsdm as $dm) {
                        extract($dm);
                      
                        $suadanhmuc = "index.php?act=suadanhmuc&iddanhmuc=" . $id;
                        echo '<tr>
                            <td>' . $id . '</td>
                            <td>' . $ten . '</td>
                            <td>
                                <a href="' . $suadanhmuc . '"><input type="button" value="Sửa"> </a>  
                                
                                
                            </td>
                    </tr>';
            
                    }
                    // <a href="' . $hard_delete .'"><input type ="button" value="Xóa " onclick="return confirm(\'Bạn có chắc chắn muốn xóa\')"></a>
                    //                     <a href="' . $soft_delete .'"><input type ="button" value="Xóa mềm" onclick="return confirm(\'Bạn có chắc chắn muốn xóa\')"></a>
                    ?>

</table>
<div class="row mb10 ">
                <a href="index.php?act=adddanhmuc"> <input class="mr20" type="button" value="NHẬP THÊM"></a>
            </div>
