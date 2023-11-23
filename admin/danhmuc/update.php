<?php
if(is_array($danhmuc)){
    extract($danhmuc);
}

?>
 <div class="row2 mb10">
            <label>Tên danh mục </label> <br>
            <input type="text" name="tendanhmuc" value="<?=$ten?>">
        </div>
        <input type="hidden" name="id" value="<?=$id?>">
            <input class="mr20" name="capnhat" type="submit" value="Cập Nhật">
            <input  class="mr20" type="reset" value="NHẬP LẠI">

            <a href="index.php?act=listdanhmuc">  <input  class="mr20" type="button" value="DANH SÁCH"></a>