<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <title><?= $judul; ?></title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <meta content="Free HTML Templates" name="keywords" />
  <meta content="Free HTML Templates" name="description" />
  <link href="<?= base_url('assets/front/'); ?>" rel="icon" />
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Handlee&family=Nunito&display=swap" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
  <link href="<?= base_url('assets/front/'); ?>lib/flaticon/font/flaticon.css" rel="stylesheet" />
  <link href="<?= base_url('assets/front/'); ?>lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
  <link href="<?= base_url('assets/front/'); ?>lib/lightbox/css/lightbox.min.css" rel="stylesheet" />
  <link href="<?= base_url('assets/front/'); ?>css/style.css" rel="stylesheet" />
</head>

<body>
  <!-- Navbar Start -->
  <div class="container-fluid bg-light position-relative shadow">
    <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0 px-lg-5">
      <a href="" class="navbar-brand font-weight-bold text-secondary" style="font-size: 50px">
        <i class="flaticon-043-teddy-bear"></i>
        <span class="text-primary"><?= $konfig->judul_website; ?></span>
      </a>
      <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
        <div class="navbar-nav font-weight-bold mx-auto py-0">
          <a href="<?= base_url() ?>" class="nav-item nav-link">Home</a>
          <?php foreach ($kategori as $kate) { ?>
              <a href="<?= base_url('home/kategori/' . $kate['id_kategori']) ?>" class="nav-item nav-link">
                  <?= $kate['nama_kategori'] ?>
              </a>
          <?php } ?>
        </div>
        <a href="<?= base_url("auth") ?>" class="btn btn-primary px-4">Login</a>
      </div>
    </nav>
  </div>
  <!-- Navbar End -->


    <!-- Detail Start -->
    <div class="container py-5">
      <div class="row pt-5">
        <div class="col-lg-12">
          <div class="d-flex flex-column text-left mb-3">
            <p class="section-title pr-5">
              <span class="pr-2">Blog Detail Page</span>
            </p>
            <h1 class="mb-3"><?= $konten->judul; ?></h1>
            <div class="d-flex">
              <p class="mr-3"><i class="fa fa-user text-primary"></i> <?= $konten->nama; ?></p>
              <p class="mr-3">
                <i class="fa fa-folder text-primary"></i> <?= $konten->nama_kategori; ?>
              </p>
            </div>
          </div>
          <div class="d-flex align-items-start mb-5">
            <img
              class="img-fluid rounded w-25"
              src="<?= base_url('assets/upload/konten/' . $konten->foto) ?>"
              alt="Gambar"
            />
            <div style="margin-left: 20px;">
              <?= $konten->keterangan; ?>
            </div>
          </div>






          

         


        </div>

        </div>
      </div>
    </div>
    <!-- Detail End -->

  <!-- Footer Start -->
  <div class="container-fluid bg-secondary text-white mt-5 py-5 px-sm-3 px-md-5">
    <div class="row pt-5">
      <div class="col-lg-3 col-md-6 mb-5">
        <a href="" class="navbar-brand font-weight-bold text-primary m-0 mb-4 p-0"
          style="font-size: 40px; line-height: 40px">
          <i class="flaticon-043-teddy-bear"></i>
          <span class="text-white"><?= $konfig->judul_website; ?></span>
        </a>
        <p>
        <?= $konfig->profil_website; ?>
        </p>
        <div class="d-flex justify-content-start mt-4">
          <a class="btn btn-outline-primary rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px"
            href="https://<?= $konfig->facebook; ?>"><i class="fab fa-facebook-f"></i></a>
          <a class="btn btn-outline-primary rounded-circle text-center mr-2 px-0" style="width: 38px; height: 38px"
            href="https://<?= $konfig->instagram; ?>"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 mb-5">
        <h3 class="text-primary mb-4">Contact Us</h3>
        <div class="d-flex">
          <h4 class="fa fa-map-marker-alt text-primary"></h4>
          <div class="pl-3">
            <h5 class="text-white">Alamat</h5>
            <p><?= $konfig->alamat; ?></p>
          </div>
        </div>
        <div class="d-flex">
          <h4 class="fa fa-envelope text-primary"></h4>
          <div class="pl-3">
            <h5 class="text-white">Email</h5>
            <p><?= $konfig->email; ?></p>
          </div>
        </div>
        <div class="d-flex">
          <h4 class="fa fa-phone-alt text-primary"></h4>
          <div class="pl-3">
            <h5 class="text-white">Phone</h5>
            <p>+<?= $konfig->no_wa; ?></p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 mb-5">
        <h3 class="text-primary mb-4">Quick Links</h3>
        <div class="d-flex flex-column justify-content-start">
          <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Home</a>
          <?php foreach ($kategori as $kate) { ?>
          <a class="text-white mb-2" href="<?= base_url('home/kategori/', $kate['id_kategori']) ?>">
            <i class="fa fa-angle-right mr-2"></i>
            <?= $kate['nama_kategori'] ?>
          </a>
          <?php }?>
        </div>
      </div>
      
    <div class="container-fluid pt-5" style="border-top: 1px solid rgba(23, 162, 184, 0.2) ;">
      
    </div>
  </div>
  <!-- Footer End -->

  <!-- Back to Top -->
  <a href="#" class="btn btn-primary p-3 back-to-top"><i class="fa fa-angle-double-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
  <script src="<?= base_url('assets/front/'); ?>lib/easing/easing.min.js"></script>
  <script src="<?= base_url('assets/front/'); ?>lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="<?= base_url('assets/front/'); ?>lib/isotope/isotope.pkgd.min.js"></script>
  <script src="<?= base_url('assets/front/'); ?>lib/lightbox/js/lightbox.min.js"></script>

  <!-- Contact Javascript File -->
  <script src="<?= base_url('assets/front/'); ?>mail/jqBootstrapValidation.min.js"></script>
  <script src="<?= base_url('assets/front/'); ?>mail/contact.js"></script>

  <!-- Template Javascript -->
  <script src="<?= base_url('assets/front/'); ?>js/main.js"></script>
</body>

</html>