

<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <?php
    require 'config/database.php';
    session_start();
    if($_SESSION['priviledge']==""){
        header("location:login.php");
    }
    include "style.php";
        echo "</head><body>";
        include "navbar.php";
        
        echo "<div class='page-wrapper'>";
        
            $path = $_GET['page'] ?? 'dashboard';

            switch ($path) {
                case 'dashboard':
                    include_once 'dashboard.php';
                    break;
                    
                // redirect kuesioner
                case 'kuesioner':
                    include_once 'kuesioner/index.php';
                    break;
                case 'kuesioner-tambah':
                    include_once 'kuesioner/add.php';
                    break;
                case 'kuesioner-hapus':
                    include_once 'kuesioner/delete.php';
                    break;
                case 'kuesioner-edit':
                    include_once 'kuesioner/edit.php';
                    break;
                
                case 'kuesioner-excel':
                    include_once 'kuesioner/excel.php';
                    break;

                case 'kuesioner-pdf':
                    include_once 'kuesioner/pdf.php';
                break;

                // redirect kalkulasi
                case 'kalkulasi':
                    include_once 'kalkulasi/index.php';
                    break;

                // redirect manajemen data kepala data
                case 'data':
                    include_once 'data/index.php';
                    break;
                case 'data-tambah':
                    include_once 'data/add.php';
                    break;
                case 'data-tambah-aksi':
                    include_once 'data/aksi-add.php';
                break;
                case 'data-edit':
                    include_once 'data/edit.php';
                    break;
                case 'data-hapus':
                    include_once 'data/delete.php';
                    break;

                // manajemen kriteria
                case 'kriteria':
                    include_once 'kriteria/index.php';
                    break;
                case 'kriteria-tambah':
                    include_once 'kriteria/add.php';
                    break;
                case 'kriteria-edit':
                    include_once 'kriteria/edit.php';
                    break;
                case 'kriteria-hapus':
                    include_once 'kriteria/delete.php';
                    break;

                // manajemen kecamatan
                case 'kecamatan':
                    include_once 'kecamatan/index.php';
                    break;
                case 'kecamatan-tambah':
                    include_once 'kecamatan/add.php';
                    break;
                case 'kecamatan-edit':
                    include_once 'kecamatan/edit.php';
                    break;
                case 'kecamatan-hapus':
                    include_once 'kecamatan/delete.php';
                    break;

                // manajemen user
                case 'user':
                    include_once 'user/index.php';
                    break;
                case 'user-tambah':
                    include_once 'user/add.php';
                    break;
                case 'user-edit':
                    include_once 'user/edit.php';
                    break;
                case 'user-hapus':
                    include_once 'user/delete.php';
                    break;
                case 'user-logout':
                    header ("location: ../login.php");
                    if (isset($_SESSION)){
                        session_destroy();
                    }
                    break;
                default:
                    # code...
                    break;
            }

        ?>
            <!-- End Logic Routing -->

            <footer class="footer text-center">
                Dibuat oleh Aldy Firdaus & Muhammad Ramadhan Adiputra
                <br>Prodi D3 Teknik Informatika POLIBAN. 2022.
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <?php include "style_bottom.php" ?>
</body>

</html>