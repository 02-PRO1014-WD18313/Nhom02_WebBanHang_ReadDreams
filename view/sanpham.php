<div class="row mb">
            <div class="box mr">
                <div class="row mb">
                    
                    <div class="boxtitle">SẢN PHẨM <strong><?=$tendm?></strong></div>
                        <div class="row boxcontent">
                            <?php
                                $i = 0;
                                foreach ($dssp as $sp){
                                    extract($sp);
                                    $linksp="index.php?act=sanphamct&idsp=".$id;
                                    $hinh=$img_path.$img;
                                    if(($i==2)||($i==5)||($i==8)||($i==11)){
                                        $mr="";
                                    } else {
                                        $mr="mr";
                                    }
                                    echo '<div class="boxsp '.$mr.'">
                                            <div class="row img" style="text-align: center;"><a href="'.$linksp.'"><img src="'.$hinh.'" alt="" width="85%" height="50%"></a></div>
                                            <p>'.$price.'</p>
                                            <a href="'.$linksp.'">'.$name.'</a>
                                          </div>' ;
                                    $i+=1;
                                }
                            ?>
                        </div>
                </div>
            </div>
            <div class="box mr">
                <?php include "boxright.php"; ?>
            </div>
        </div>