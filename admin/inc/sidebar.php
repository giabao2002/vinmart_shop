<div class="grid_2">
    <div class="box sidemenu">
        <div class="block" id="section-menu">
            <ul class="section menu">
                <li><a class="menuitem">Slider</a>
                    <ul class="submenu">
                        <li><a href="slideradd.php">Thêm slider</a> </li>
                        <li><a href="sliderlist.php">Danh sách slider</a> </li>
                    </ul>
                </li>
                <li><a class="menuitem">Danh mục</a>
                    <ul class="submenu">
                        <li><a href="catadd.php">Thêm danh mục</a> </li>
                        <li><a href="catlist.php">Danh sách sản phẩm</a> </li>
                    </ul>
                </li>
                <li><a class="menuitem">Thương hiệu</a>
                    <ul class="submenu">
                        <li><a href="brandadd.php">Thêm thương hiệu</a> </li>
                        <li><a href="brandlist.php">Danh sách thương hiệu</a> </li>
                    </ul>
                </li>
                <li><a class="menuitem">Sản phẩm</a>
                    <ul class="submenu">
                        <li><a href="productadd.php">Thêm sản phẩm</a> </li>
                        <li><a href="productlist.php">Danh sách sản phẩm</a> </li>
                    </ul>
                </li>
                <li><a class="menuitem">Đơn hàng</a>
                    <ul class="submenu">
                        <li><a href="inbox.php">Danh sách đơn hàng</a> </li>
                    </ul>
                </li>
                <li><a class="menuitem">Bình luận</a>
                    <ul class="submenu">
                        <li><a href="commentlist.php">Danh sách bình luận</a> </li>
                    </ul>
                </li>
                <?php
                if (Session::get('level') == 0)
                    echo '<li><a class="menuitem">Quản trị viên</a>
                                <ul class="submenu">
                                <li><a href="adminadd.php">Thêm QTV</a> </li>
                                    <li><a href="adminlist.php">Danh sách QTV</a> </li>
                                </ul>
                            </li>'
                ?>
            </ul>
        </div>
    </div>
</div>