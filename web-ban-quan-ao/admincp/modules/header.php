<?php
	include '../lib/session.php';
	Session::checkSession();
?>

<div class="menu">
    	<ul>
        	<li><a href="index.php?quanly=loaisp&ac=lietke">Quản lý loại sp</a></li>
             <li><a href="index.php?quanly=hieusp&ac=lietke">Quản lý hiệu sp</a></li>
            <li><a href="index.php?quanly=sanpham&ac=lietke">Quản lý sản phẩm</a></li>
            <li><a href="index.php">Trang Chu</a></li>
        
            <form action="" method="post" enctype="multipart/form-data">
            <?php
                if(isset($_GET['action']) && $_GET['action']=='logout')
                Session::destroy();
            ?>
            <li><a href="?action=logout">Logout</a></li>
            </form>
        </ul>
       
    </div>

 <form action="index.php?quanly=timkiem&ac=sp" method="post" enctype="multipart/form-data">
     <p><input type="text" name="masp" placeholder="Nhập mã sản phẩm..." id="timkiem" required="required" />
        <input type="submit" id="button_timkiem" name="timkiem" value="Tìm sản phẩm" />
        </p>
        </form>