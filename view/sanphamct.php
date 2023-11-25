<link href="css/stylect.css" rel="stylesheet">
<div class="row mb">
    <div class="box mr">
        <div class="row mb">
            <?php 
                extract($onesp);
            ?>
            <div class="boxtitle"><?=$ten;?></div>
            <div class="row boxcontent ">
                <?php 
                    $anh = $img_path.$anh;
                    echo "<img src='$anh' width='300'><br>";
                    // echo'<div class="row mb spct"><img src"'.$anh.'"><br>';
                    echo $mo_ta;
                ?>
            </div>
        </div>
    <div class="row mb">
        <div class="boxtitle">BÌNH LUẬN</div>
        <div class="boxcontent">
        </div>
    </div>
    <div class="box mb ">
        <div class="boxtitle">SẢN PHẨM CÙNG LOẠI</div>
        <div class="boxcontent">
                <?php 
                    foreach($sp_cung_loai as $sp_cung_loai){
                        extract($sp_cung_loai);
                        $linksp="index.php?act=sanphamct&idsp=".$id;
                        echo'<li><a href="'.$linksp.'">'.$ten.'</a><li>';
                    } 
                ?>
        </div>
        </div>
    </div>
</div>      