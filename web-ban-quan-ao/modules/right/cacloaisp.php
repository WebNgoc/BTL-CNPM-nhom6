<?php
	$sql_moinhat="select * from sanpham order by idsanpham desc limit 0,6";
	$row_moinhat=mysqli_query($conn,$sql_moinhat);

?>
<?php
 	$sql_loai=mysqli_query($conn,"select * from loaisp ");

	while($dong_loai=mysqli_fetch_array($sql_loai)){

	echo '<div class="tieude">'.$dong_loai['tenloaisp'].'</div>';
 	$sql_loaisp="select * from loaisp inner join sanpham on sanpham.loaisp=loaisp.idloaisp where sanpham.loaisp='".$dong_loai['idloaisp']."'";
	$row=mysqli_query($conn,$sql_loaisp);
	$count=mysqli_num_rows($row);
	if($count>0){
	?>



                	<ul class="product">
                     <?php

			while($dong=mysqli_fetch_array($row)){

 				?>
                    	<li><a href="?quanly=chitietsp&idloaisp=<?php echo $dong['loaisp'] ?>&id=<?php echo $dong['idsanpham'] ?>">
                        	<img src="admincp/modules/quanlysanpham/uploads/<?php echo $dong['hinhanh'] ?>" width="150" height="150" />
                            <p style="color:skyblue"><?php echo $dong['tensp']?></p>
                            <p style="color:red;font-weight:bold; border:1px solid #d9d9d9; width:150px;
                            height:30px; line-height:30px;margin-left:35px;margin-bottom:5px;"><?php echo number_format($dong['giadexuat']).' '.'VNĐ' ?></p>


                        </a></li>
                        <?php
			}
	}else{
		echo '<h3 style="margin:5px;font-style:italic;color:#000">Hiện chưa có sản phẩm...</h3>';
	}


						?>
                    </ul>
                     <div class="clear"></div>
                <?php


	}


				?>