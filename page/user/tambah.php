<?php

session_start();
ob_start();
if ($_SESSION['admin']) {

?>


<div class="panel panel-default">
    <div class="panel-heading">
        Tambah User
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-12">
                <h3>Formulir User</h3>
                <form method="POST">

                    <div class="form-group">
                        <label>ID</label>
                        <input class="form-control" name="id" />
                    </div>

                    <div class="form-group">
                        <label>Nama</label>
                        <input class="form-control" name="nama">
                    </div>

                    <div class="form-group">
                        <label>Username (Email)</label>
                        <input class="form-control" name="username">
                    </div>

                    <div class="form-group">
                        <label>Password</label>
                        <input class="form-control" name="password">
                        <p class="help-block">Password miidal 6 karakter</p>
                    </div>

                    <div class="form-group">
                        <label>Tahun Masuk</label>
                        <select class="form-control" name="tahun_masuk">

                            <?php

                            $tahun_masuk = date("Y");

                            for($i=$tahun_masuk-8; $i<=$tahun_masuk; $i++){
                                echo '

                                    <option value="'.$i.'">'.$i.'</option>

                                ';
                            }

                            ?>

                        </select>
                    </div>

                    <div class="form-group">
                        <label>Level</label>
                        
                        <?php

                        $table_name = "tb_user";
                        $column_name = "level";

                        ?>

                        <select class="form-control" name="level">

                            <?php

                            $result = $conn->query("SELECT COLUMN_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '$table_name' AND COLUMN_NAME = '$column_name'")
                                or die(mysql_error());

                            $row = mysqli_fetch_array($result);
                            
                            $enumList = explode(",", str_replace("'", "", substr($row['COLUMN_TYPE'], 5, (strlen($row['COLUMN_TYPE']) - 6))));

                            foreach ($enumList as $value)
                                echo "<option value=".$value.">$value</option>";

                            ?>

                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label>Status</label>

                        <?php
                        $column_name2 = "status";
                        ?>

                        <select class="form-control" name="status">
                            <?php

                            $result = $conn->query("SELECT COLUMN_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '$table_name' AND COLUMN_NAME = '$column_name2'")
                                or die(mysql_error());

                            $row = mysqli_fetch_array($result);

                            $enumList = explode(",", str_replace("'", "", substr($row['COLUMN_TYPE'], 5, (strlen($row['COLUMN_TYPE']) - 6))));

                            foreach ($enumList as $value)
                                echo "<option value=".$value.">$value</option>";

                            ?>
                        </select>
                    </div>

                    <div><input type="submit" name="simpan" value="Simpan" class="btn btn-primary"></div>

                    
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Penyimpanan Data -->

<?php

$id = $_POST['id'];
$nama = $_POST['nama'];
$username = $_POST['username'];
$password = $_POST['password'];
$tahun_masuk = $_POST['tahun_masuk'];
$level = $_POST['level'];
$status = $_POST['status'];

$simpan = $_POST['simpan'];

if ($simpan) {
    $sql = $conn->query("INSERT INTO tb_user (id, username, name, password, tahun_masuk, level, status)
    values('$id', '$username', '$nama', '$password', '$tahun_masuk', '$level', '$status')");

    if ($sql) {
        ?>

        <script type="text/javascript">
            alert("Data berhasil disimpan!");
            window.location.href="?page=user";
        </script>

        <?php
    }
}
}else{
    header("location:login.php");
}
?>
