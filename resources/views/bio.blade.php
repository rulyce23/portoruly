<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Profile Portofolio</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="rulz.co" />


  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Space+Mono" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>

	</head>
	<body>

    <script>
      $(document).ready(function() {
        @if (session('success'))
            toastr.success('{{ session('success') }}');
        @endif
    });
</script>

	<div class="fh5co-loader"></div>
	
	<div id="page">	
	<header id="fh5co-header" class="fh5co-cover js-fullheight" role="banner" data-stellar-background-ratio="0.4">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<div class="display-t js-fullheight">
						<div class="display-tc js-fullheight animate-box" data-animate-effect="fadeIn">
							<div class="profile-thumb"><img src="images/<?php if (!empty($biodata->foto)){
                            echo $biodata->foto; } else { echo '#'; } ?>" width="200" height="200" style="border-radius: 50%;"></div>
							<h1><span><?php if (!empty($biodata->nama)){
                            echo $biodata->nama; } else { echo "Tidak Ada Data Tersedia"; } ?></span></h1>
							<h3><span><?php if (!empty($biodata->hobby)){
                            echo $biodata->hobby; } else { echo "Tidak Ada Data Tersedia"; } ?></span></h3>
							<p>
								<ul class="fh5co-social-icons">
                                <li><a href="<?php if (!empty($biodata->instagram)){
                            echo $biodata->instagram; } else { echo '#'; } ?>"><i class="icon-instagram"></i></a></li>
							<li><a href="<?php if (!empty($biodata->twitter)){
                            echo $biodata->twitter; } else { echo '#'; } ?>"><i class="icon-twitter2"></i></a></li>
							<li><a href="<?php if (!empty($biodata->linkedin)){
                            echo $biodata->linkedin; } else { echo '#'; } ?>"><i class="icon-linkedin2"></i></a></li>
								</ul>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<div id="fh5co-about" class="animate-box">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>Tentang Diriku</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<ul class="info">
						<li><span class="first-block">Full Name:</span><span class="second-block"></span><?php if (!empty($biodata->nama)){
                            echo $biodata->nama; } else { echo "No more data to load"; } ?></li>
						<li><span class="first-block">Phone:</span><span class="second-block"></span><?php if (!empty($biodata->no_telp)){
                            echo $biodata->no_telp; } else { echo "No more data to load"; } ?></li>
						<li><span class="first-block">Email:</span><span class="second-block"></span><?php if (!empty($biodata->email)){
                            echo $biodata->email; } else { echo "No more data to load"; } ?></li>
						<li><span class="first-block">Website:</span><span class="second-block"></span><?php if (!empty($biodata->website)){
                            echo $biodata->website; } else { echo "No more data to load"; } ?></li>
						<li><span class="first-block">Address:</span><span class="second-block"></span><?php if (!empty($biodata->alamat)){
                            echo $biodata->alamat; } else { echo "No more data to load"; } ?></li>
					</ul>
				</div>
				<div class="col-md-8">
					<h2>Hello Teman!</h2>
					<p><?php if (!empty($biodata->tentang)){
                            echo $biodata->tentang; } else { echo "No more data to load"; } ?></p>
					<p>
						<ul class="fh5co-social-icons">
							<li><a href="<?php if (!empty($biodata->instagram)){
                            echo $biodata->instagram; } else { echo '#'; } ?>"><i class="icon-instagram"></i></a></li>
							<li><a href="<?php if (!empty($biodata->twitter)){
                            echo $biodata->twitter; } else { echo '#'; } ?>"><i class="icon-twitter2"></i></a></li>
							<li><a href="<?php if (!empty($biodata->linkedin)){
                            echo $biodata->linkedin; } else { echo '#'; } ?>"><i class="icon-linkedin2"></i></a></li>
						</ul>
					</p>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-resume" class="fh5co-bg-color">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>Resumeku</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-md-offset-0">
					<ul class="timeline">
						<li class="timeline-heading text-center animate-box">
							<div><h3>Pengalamanku</h3></div>
						</li>
                        <?php if ($work->count() > 0) : ?>
    <?php $counter = 0; ?>
    <?php foreach ($work as $work) : ?>
        <li class="animate-box <?php echo ($counter % 2 == 0) ? 'timeline-unverted' : 'timeline-inverted'; ?>">
            <div class="timeline-badge"><i class="icon-suitcase"></i></div>
            <div class="timeline-panel">
                <div class="timeline-heading">
                    <h3 class="timeline-title"><?php echo $work->jabatan ?? "-" ?></h3>
                    <span class="company"><?php echo $work->nama_kantor ?? "-" ?>,  
                        <?php echo substr($work->tahun_mulai, 0, 7) ?? "-" ?> sampai 
                        <?php echo substr($work->tahun_berakhir, 0, 7) ?? "-" ?> 
                    </span>
                </div>
                <div class="timeline-body">
                    <p><?php echo $work->deskripsi_pekerjaan ?? "-" ?></p>
                </div>
            </div>
        </li>
        <?php $counter++; ?>
    <?php endforeach; ?>
<?php else : ?>
    <p>No more data to load</p>
<?php endif; ?>
						<br>
						<li class="timeline-heading text-center animate-box">
							<div><h3>Pendidikanku</h3></div>
						</li>
                        <?php if ($education->count() > 0) : ?>
    <?php $counter = 0; ?>
    <?php foreach ($education as $education) : ?>
        <li class="animate-box <?php echo ($counter % 2 == 0) ? 'timeline-unverted' : 'timeline-inverted'; ?>">
  
							<div class="timeline-badge"><i class="icon-graduation-cap"></i></div>
							<div class="timeline-panel">
								<div class="timeline-heading">
                                <h3 class="timeline-title"><?php echo $education->pendidikan ?? "-" ?></h3>
                    <span class="company"><?php echo $education->nama_institusi ?? "-" ?>
                    </span>
                </div>
                <div class="timeline-body">
                    <p><?php echo $education->deskripsi_jurusan ?? "-" ?></p>
                </div>
							</div>
						</li>
					      <?php $counter++; ?>
    <?php endforeach; ?>
<?php else : ?>
    <p>No more data to load</p>
<?php endif; ?>	
			    	</ul>
				</div>
			</div>
		</div>
	</div>
	

    <div id="fh5co-features" class="animate-box">
		<div class="container">
			<div class="services-padding">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
						<h2>Jasaku</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 text-center">
						<div class="feature-left">
							<span class="icon">
								<i class="icon-paintbrush"></i>
							</span>
							<div class="feature-copy">
								<h3>Web Design</h3>
								</div>
						</div>
					</div>

					<div class="col-md-4 text-center">
						<div class="feature-left">
							<span class="icon">
								<i class="icon-briefcase"></i>
							</span>
							<div class="feature-copy">
								<h3>Content Creator</h3>
								</div>
						</div>

					</div>
					<div class="col-md-4 text-center">
						<div class="feature-left">
							<span class="icon">
								<i class="icon-search"></i>
							</span>
							<div class="feature-copy">
								<h3>Analytics</h3>
								</div>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-md-4 text-center">

						<div class="feature-left">
							<span class="icon">
								<i class="icon-bargraph"></i>
							</span>
							<div class="feature-copy">
								<h3>Web Developent</h3>
							</div>
						</div>

					</div>

					<div class="col-md-4 text-center">
						<div class="feature-left">
							<span class="icon">
								<i class="icon-genius"></i>
							</span>
							<div class="feature-copy">
								<h3>Web Marketing</h3>
							</div>
						</div>

					</div>
					<div class="col-md-4 text-center">
						<div class="feature-left">
							<span class="icon">
								<i class="icon-chat"></i>
							</span>
							<div class="feature-copy">
								<h3>Support</h3>
								</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

    <div id="fh5co-skills" class="animate-box">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                <h2>Kemampuanku</h2>
            </div>
        </div>

        <?php if ($skill->count() > 0) : ?>
            <?php foreach ($skill as $skill) : ?>
                <div class="row row-pb-md">
                
                    <div class="col-md-7 col-sm-6 col-xs-12">
                        <!-- Progress Bar -->
                        <div class="progress-wrap">
                            <h3><span class="name-left"><?php echo $skill->nama_skill ?></span><span class="value-right"><?php echo $skill->kemahiran_skill ?></span></h3>
                            <div class="progress">
                                <div class="progress-bar progress-bar-1 progress-bar-striped active" role="progressbar" aria-valuenow="<?php echo $skill->kemahiran_skill ?>" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo $skill->kemahiran_skill ?>%">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        <?php else : ?>
            <p>No more data to load</p>
        <?php endif; ?>
    </div>
</div>


<div id="fh5co-work" class="fh5co-bg-dark">
    <div class="container">
        <div class="row animate-box">
            <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                <h2>Aplikasiku</h2>
            </div>
        </div>
        <?php if ($project->count() > 0) : ?>
            <div class="row">
                <?php foreach ($project as $project) : ?>
                    <div class="col-md-3 text-center col-padding animate-box">
                        <a href="#" class="work">
                            <img src="images/<?php echo $project->foto ?>" alt="<?php echo $project->nama_project ?>" width="270" height="270">
                            <div class="desc">
                                <h3><?php echo $project->nama_project ?></h3>
                            </div>
                        </a>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php else : ?>
            <p>No more data to load</p>
        <?php endif; ?>
    </div>
</div>

	
	<div id="fh5co-started" class="fh5co-bg-dark">
		<div class="overlay"></div>
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>Rekrut Diriku!</h2>
                    <p><a href="document/mycv.pdf" class="btn btn-default btn-lg">Download CVKu</a></p>
                    <p><a href="#" class="btn btn-default btn-lg">Contact Aku</a></p>
				</div>
			</div>
		</div>
	</div>

	
<div id="fh5co-consult">
    <div class="video fh5co-video" style="background-image: url(images/cover_bg_1.jpg);">
        <div class="overlay"></div>
    </div>
    <div class="choose animate-box">
        <h2>Contact</h2>
        <form id="contactForm" action="{{ route('store') }}" method="POST"> <!-- Tambahkan id ke form -->
            @csrf <!-- Tambahkan CSRF token -->
            <div class="row form-group">
                <div class="col-md-6">
                    <input type="text" id="firstname" name="firstname" class="form-control" placeholder="Your firstname"> <!-- Ubah id dan tambahkan name -->
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <input type="text" id="lastname" name="lastname" class="form-control" placeholder="Your lastname"> <!-- Ubah id dan tambahkan name -->
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-12">
                    <input type="text" id="emails" name="emails" class="form-control" placeholder="Your email address"> <!-- Ubah id dan tambahkan name -->
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-12">
                    <input type="text" id="subject" name="subject" class="form-control" placeholder="Your subject of this message"> <!-- Ubah id dan tambahkan name -->
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-12">
                    <textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Say something about us"></textarea> <!-- Ubah id dan tambahkan name -->
                </div>
            </div>
            <div class="form-group">
                <input type="submit" value="Send Message" class="btn btn-primary">
            </div>
        </form>    
    </div>
</div>


	
	<div id="fh5co-footer">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<center><p>&copy; Rulz.co</p> All Right Reserved <?php echo date('Y'); ?></center>
				</div>
			</div>
		</div>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up22"></i></a>
	</div>
 

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Easy PieChart -->
	<script src="js/jquery.easypiechart.min.js"></script>
	<!-- Google Map -->
	<script src="js/google_map.js"></script>
	
	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>

