<!DOCTYPE html>
<html>

<head>
    <title>New Pelanggan</title>
</head>

<body>
    <?php include "menu.php"; ?>

    <?php
    if ($_SESSION["level"] != "admin" && $_SESSION["level"] != "logistik") {

        echo "Anda tidak dapat mengakses halaman ini";
        exit;
    }
    ?>

    <div>

        <form action="create-pelanggan.php" method="POST">
            <h1>Tambah pelanggan</h1>
            <table>
                <tr>
                    <td>Nama</td>
                    <td><input type="text" name="nama"></td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td><input type="vachar" min="0" name="alamat"></td>
                </tr>
                <tr>
                    <td>Nomor_telepon</td>
                    <td><input type="text" min="0" name="nomor_telepon"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button type="submit">SIMPAN</button>
                        <button type="reset">RESET</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>

</html>