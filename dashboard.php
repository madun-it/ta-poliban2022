<!-- ============================================================== -->
<!-- Bread crumb and right sidebar toggle -->
<!-- ============================================================== -->
<div class="page-breadcrumb">
  <div class="row">
    <div class="col-12 d-flex no-block align-items-center">
      <h4 class="page-title">Dashboard</h4>
      <div class="ms-auto text-end">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active"><a href="#">Beranda</a></li>
            <!-- <li class="breadcrumb-item active" aria-current="page">
              Library
            </li> -->
          </ol>
        </nav>
      </div>
    </div>
  </div>
</div>
<div class="container-fluid">
  <div class="row">
    <!-- Column -->
    <a href="<?= $_SERVER['PHP_SELF'] . '?page=data' ?>" class="col-md-6 col-lg-4 col-xlg-3">
        <div class="card card-hover">
          <div class="box bg-cyan text-center">
            <h1 class="font-light text-white">
              <i class="mdi mdi-view-dashboard"></i>
            </h1>
            <h6 class="text-white">Buka Data</h6>
          </div>
        </div>
    </a>
    <!-- Column -->
    <a href="<?= $_SERVER['PHP_SELF'] . '?page=kuesioner' ?>" class="col-md-6 col-lg-4 col-xlg-3">
        <div class="card card-hover">
          <div class="box bg-success text-center">
            <h1 class="font-light text-white">
            <i class="fa-solid fa-pen"></i>
            </h1>
            <h6 class="text-white">Isi Kuesioner</h6>
          </div>
        </div>
    </a>
    <!-- Column -->
    <a href="<?= $_SERVER['PHP_SELF'] . '?page=kalkulasi' ?>" class="col-md-6 col-lg-4 col-xlg-3">
      <div class="card card-hover">
        <div class="box bg-warning text-center">
          <h1 class="font-light text-white">
            <i class="mdi mdi-collage"></i>
          </h1>
          <h6 class="text-white">Kalkulasi K-Means</h6>
        </div>
      </div>
    </a>
    <!-- Column -->
  </div>
  <!-- ============================================================== -->
  <!-- Sales chart -->
  <!-- ============================================================== -->
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="d-md-flex align-items-center">
            <div>
              <h4 class="card-title">Site Analysis</h4>
              <h5 class="card-subtitle">Overview of Latest Month</h5>
            </div>
          </div>
          <div class="row">
            <!-- column -->
            <div class="col-lg-9">
              <div class="flot-chart">
                <div
                  class="flot-chart-content"
                  id="flot-line-chart"
                ></div>
              </div>
            </div>
            <!-- column -->
          </div>
        </div>
      </div>
    </div>
  </div>
</div>