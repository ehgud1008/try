<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<html>
	<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Oiloftrop</title>
	
	<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/album/">
	
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
	
	<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	
	<style>
		.bd-placeholder-img {
			font-size: 1.125rem;
			text-anchor: middle;
			-webkit-user-select: none;
			-moz-user-select: none;
			user-select: none;
		}
		.top_section{
			margin-top:5%;
		}
		@media(max-width: 600px){
			.top_section{ 
				margin-top:13%;
			}
		}
		@media (min-width: 768px) {
			.bd-placeholder-img-lg {
			  font-size: 3.5rem;
			}
		}
		/*
		* Header
		*/
		.navbar{
			position: fixed;
			width: 100%;
			z-index: 1;
			top:0;
		}
		.nav-masthead .nav-link {
			padding: .25rem 0;
			font-weight: 700;
			color: rgba(255, 255, 255, .5);
			background-color: transparent;
			border-bottom: .25rem solid transparent;
		}
		
		.nav-masthead .nav-link:hover,
		.nav-masthead .nav-link:focus {
			border-bottom-color: rgba(255, 255, 255, .25);
		}
		
		.nav-masthead .nav-link + .nav-link {
			margin-left: 1rem;
		}
		
		.nav-masthead .active {
			color: #fff;
			border-bottom-color: #fff;
		}
		
		.skill{
			margin-top: 3%;
		    font-size: 24px;
		    color: #004abf;
		    padding: 0 0 16px;
		    font-weight: 500;
		}
		
		
		
		.swiper-container {
	      width: 100%;
	      margin-left: auto;
	      margin-right: auto;
	    }

  	  .swiper-slide {
	      text-align: center;
	      font-size: 18px;
	      background: #fff;
	
	      /* Center slide text vertically */
	      display: -webkit-box;
	      display: -ms-flexbox;
	      display: -webkit-flex;
	      display: flex;
	      -webkit-box-pack: center;
	      -ms-flex-pack: center;
	      -webkit-justify-content: center;
	      justify-content: center;
	      -webkit-box-align: center;
	      -ms-flex-align: center;
	      -webkit-align-items: center;
	      align-items: center;
	    }
	</style>
	
	</head>
	<body>
		<header>
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
				<div class="container">
					<a class="navbar-brand" href="#">Oiloftrop</a>
					<!-- <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
				    </button> -->
				    <div class="navbar-collapse collapse" id="navbarsExample07" style="">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item">
								<a class="nav-link active" aria-current="page" href="#">Home<span class="sr-only">(current)</span></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#">Skills</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#">Contact</a>
							</li>
						</ul>
						<a class="nav-link" href="/member/login"><img src="/resources/images/member/user_logo.png"  style ="width: 5%;"></a>
					</div>
				</div>
			</nav>
			
			<!-- <div class="navbar navbar-dark bg-dark shadow-sm">
				<div class="container" style = "width: 8%;margin-right:0;">
					<a href="#" class="navbar-brand d-flex align-items-center">
						<strong>oiloftroP</strong>
					</a>
				</div>
				<div class="container">
					<a class="nav-link" href="/member/login"><img src="/resources/images/member/user_logo.png"  style ="width: 5%;"></a>
					<nav class="nav nav-masthead justify-content-center float-md-end">
						<a class="nav-link active" aria-current="page" href="#">Home</a>
						<a class="nav-link" href="#">Skills</a>
						<a class="nav-link" href="#">Contact</a>
					</nav>
				</div>
			</div> -->
		</header> 
		<main>
			<section class="top_section py-5 text-center container">
				<div class="row py-lg-5">
					<div class="col-lg-6 col-md-8 mx-auto">
						<h1 class="fw-light">김도형의 포트폴리오입니다.</h1>
						<p class="lead text-muted"></p>
						<!-- <p>
							<a href="#" class="btn btn-primary my-2">Main call to action</a>
							<a href="#" class="btn btn-secondary my-2">Secondary action</a>
						</p> -->
					</div>
				</div>
			</section>
			<section>
				<div class = "row text-center bg-light">
					<div class = "row col-md-10 offset-md-1"  style = "display: flex;">
						<h3 class = "skill">Skill</h3>
						<div class = "row col-md-4 text-center">
							<p>Front End</p>
						</div>
						<div class = "row col-md-4 text-center">
							<p>Back End</p>
						</div>
						<div class = "row col-md-4 text-center">							
							<p>Devops</p>
						</div>
					</div>
				</div>
			</section>
			<div class="album py-5 bg-light">
				<div class="container">
					<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
						<div class = "swiper-container">
							<div class = "swiper-wrapper">
								<div class = "swiper_slide">
									<div class="col">
										<div class="card shadow-sm">
											<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
											<div class="card-body">
												<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
												<div class="d-flex justify-content-between align-items-center">
													<div class="btn-group">
														<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
														<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
													</div>
													<small class="text-muted">9 mins</small>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class = "swiper_slide">
									<div class="col">
										<div class="card shadow-sm">
											<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
											<div class="card-body">
												<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
												<div class="d-flex justify-content-between align-items-center">
													<div class="btn-group">
														<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
														<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
													</div>
													<small class="text-muted">9 mins</small>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class = "swiper_slide">
									<div class="col">
										<div class="card shadow-sm">
											<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
											<div class="card-body">
												<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
												<div class="d-flex justify-content-between align-items-center">
													<div class="btn-group">
														<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
														<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
													</div>
													<small class="text-muted">9 mins</small>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class = "swiper_slide">
									<div class="col">
										<div class="card shadow-sm">
											<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
											<div class="card-body">
												<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
												<div class="d-flex justify-content-between align-items-center">
													<div class="btn-group">
														<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
														<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
													</div>
													<small class="text-muted">9 mins</small>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class = "swiper_slide">
									<div class="col">
										<div class="card shadow-sm">
											<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
											<div class="card-body">
												<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
												<div class="d-flex justify-content-between align-items-center">
													<div class="btn-group">
														<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
														<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
													</div>
													<small class="text-muted">9 mins</small>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-pagination"></div>
						    <!-- Add Arrows -->
						    <div class="swiper-button-next"></div>
						    <div class="swiper-button-prev"></div>
						</div>
					</div>
				</div>
			</div>
		</main>
	
		<footer class="text-muted py-5">
			<div class="container">
				<p class="float-end mb-1">
					<a href="#">Back to top</a>
				</p>
				<p class="mb-1">Album example is Bootstrap, but please download and customize it for yourself!</p>
				<p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a href="/docs/5.0/getting-started/introduction/">getting started guide</a>.</p>
			</div>
		</footer>
	</body>
	
	<script>
		var swiper = new Swiper('.swiper-container', {
			slidesPerView: 1,
			spaceBetween: 30,
			loop: true,
			pagination: {
				el: '.swiper-pagination',
				clickable: true,
			},
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
		});
	</script>
</html>