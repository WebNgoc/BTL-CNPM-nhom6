<?php
	$sql_loai="select * from loaisp order by idloaisp asc";
	$row_loai=mysqli_query($conn,$sql_loai);
?>
<div class="box_list">
            <div class="tieude">
            	<h3>Loại sản phẩm</h3>
            </div>
            	<ul class="list">
                <?php
				while($dong_loai=mysqli_fetch_array($row_loai)){
				?>
                	<li><a href="index.php?quanly=loaisp&id=<?php echo $dong_loai['idloaisp'] ?>"><?php echo $dong_loai['tenloaisp'] ?></a></li>
                  <?php
				}
				  ?>
                </ul>
                </div><!--Ket thuc div box loai phu kien -->
               <?php
	$sql_hieu="select * from hieusp order by idhieusp asc";
	$row_hieu=mysqli_query($conn,$sql_hieu);
?>
                <div class="box_list">
            <div class="tieude">
            	<h3>Thương hiệu</h3>
            </div>
            	<ul class="list">
                <?php
				while($dong_hieu=mysqli_fetch_array($row_hieu)){
				?>
                	<li><a href="index.php?quanly=hieusp&id=<?php echo $dong_hieu['idhieusp'] ?>"><?php echo $dong_hieu['tenhieusp'] ?></a></li>
                  <?php
				}
				  ?>
                </ul>
                </div><!--Ket thuc div box thuong hieu -->
    
              