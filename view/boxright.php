<div class="boxleft">
        <div class="items">
        <?php
              $i=0;
                foreach ($spnew as $sp){
                    extract($sp);
                    $hinh =  $img_path.$anh;
                    
                    $linksp="index.php?act=sanphamct&idsp=".$id;
                    
                    echo '<div class="box_items ">
                    <div class="box_items_img">
                <img src="'.$hinh.'" alt="" style="height: 400px;width:100%;object-fit: cover;">
                
             </div>
              <a class="item_name" href="'. $linksp .'">'.$ten.'</a>
              <p class="price">'.$gia_ban.' đ</p>
              
           </div>';
                    $i+=1;
                }
              ?>
        </div>
</div>



