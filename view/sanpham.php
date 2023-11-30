


        <main class="catalog  mb ">
    <div class="boxleft">
        <div class="items">
            <?php
            $i=0;
            foreach ($dssp as $sp){
                extract($sp);
                $anh =  $img_path.$anh;
                $linksp="index.php?act=sanphamct&idsp=".$id;
                
                // if(($i==2)||($i==5)||($i==8)){
                //     $mr="";
                // }else{
                //     $mr="mr";
                // }
                echo '<div class="box_items">
                    <div class="box_items_img">
                    <img src="'.$anh.'" alt="" style="height: 400px;width:100%;object-fit: cover;">
                    <div class="add" > 
                    <a href="'. $linksp .'">ADD TO CART</a>
                    </div>
                </div>
                <a class="item_name" href="'. $linksp .'">'.$ten.'</a>
                <p class="price">'.$gia_ban.'đ</p>
                
            </div>';
                    $i+=1;
                }
            ?>

           
        </div>
    </div>

</main>
<!-- BANNER 2 -->