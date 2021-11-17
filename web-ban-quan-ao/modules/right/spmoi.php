	<?php
	$sql_moinhat="select * from sanpham order by idsanpham desc limit 0,6";
	$row_moinhat=mysqli_query($conn,$sql_moinhat);

?>
	<div class="tieude">Sản phẩm mới nhất</div>
                	<ul class="product">
                    <?php
					while($dong_moinhat=mysqli_fetch_array($row_moinhat)){
					?>
                    	<li><a href="?quanly=chitietsp&idloaisp=<?php echo $dong_moinhat['loaisp'] ?>&id=<?php echo $dong_moinhat['idsanpham'] ?>">
                        	<img src="admincp/modules/quanlysanpham/uploads/<?php echo $dong_moinhat['hinhanh'] ?>" width="150" height="150" />
                            <p style="color:orangered"><?php echo $dong_moinhat['tensp'] ?></p>
                            <p style="color:red;font-weight:bold; border:1px solid #d9d9d9; width:150px;
                            height:30px; line-height:30px;margin-left:35px;margin-bottom:5px;"><?php echo number_format($dong_moinhat['giadexuat']).' '.'VNĐ'?></p>


                        </a></li>
                      <?php
					}
					  ?>
                    </ul>
                 <div class="clear"></div>

				 <div class="box_list">

<div class="tieude">
Sản phẩm bán chạy
 </div>
 <?php
 $sql_banchay=mysqli_query($conn,"select * from sanpham order by idsanpham desc limit 8");

 ?>
<ul class="product">
<?php
while($dong_banchay=mysqli_fetch_array($sql_banchay)){
?>
 <li><a href="?quanly=chitietsp&idloaisp=<?php echo $dong_banchay['loaisp'] ?>&id=<?php echo $dong_banchay['idsanpham'] ?>">
	 <img src="admincp/modules/quanlysanpham/uploads/<?php echo $dong_banchay['hinhanh'] ?>" width="150" height="150" />
	 <p><?php echo $dong_banchay['tensp'] ?></p>
	 <p style="color:red;"><?php echo number_format($dong_banchay['giadexuat']).' '.'VNĐ' ?></p>
 </a></li>
 <?php
}
 ?>
</ul>
</div><!--Ket thuc div box hang ban chay -->

