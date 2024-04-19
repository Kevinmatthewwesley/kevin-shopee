<?php
session_start();

if (!array_key_exists("username", $_SESSION)) {

    header("location:logout.php");
}
?>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Brand</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item"><a class="nav-link" href="home.php">HOME</a></li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    MASTER
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <?php if ($_SESSION["level"] == "admin") : ?>
                        <a class="dropdown-item" href="user.php">User</a>
                    <?php endif ?>
                    <a class="dropdown-item" href="barang.php">Barang</a>
                    <a class="dropdown-item" href="pelanggan.php">Pelanggan</a>
                    <div class="dropdown-divider"></div>

                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropDown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Transaksi
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="penjualan.php">Penjualan</a>
                    <a class="dropdown-item" href="pembelian.php">Pembelian</a>
                </div>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropDown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Selamat datang, <?= $_SESSION["username"] ?>!
                </a>

                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="profil.php">Profil</a>
                    <a class="dropdown-item" href="logout.php">Log out</a>
                </div>
        </ul>
        </li>
        </ul>
    </div>
</nav>