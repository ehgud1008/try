<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
	header {
		background: lightgray;
		height: 100px;
		width: 100%;
		position: fixed;
		display: flex;
		top: 0;
		left: 0;
		right: 0;
	}
	article {
      	padding-top: 100px;
        background: #f2f4f7;
        min-height: 700px;
	}
	footer {
        background: darkgray;
        height: 120px;
	}
	
</style>
</head>
<script>
	
</script>
<body>
	<header>
		<!-- <h1>MyPR</h1>
		<nav class = "navbar navbar-dark bg-dark">
			<ul class="navbar-nav">
				<li class="nav-item"><span>menu1</span></li>
				<li class="nav-item"><span>menu2</span></li>
				<li class="nav-item"><span>menu3</span></li>
			</ul>
		</nav>
		 -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		  <a class="navbar-brand" href="#">Expand at lg</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="true" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="navbar-collapse collapse show" id="navbarsExample05" style="">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Link</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
		      </li>
		      <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="dropdown05" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
		        <div class="dropdown-menu" aria-labelledby="dropdown05">
		          <a class="dropdown-item" href="#">Action</a>
		          <a class="dropdown-item" href="#">Another action</a>
		          <a class="dropdown-item" href="#">Something else here</a>
		        </div>
		      </li>
		    </ul>
		    <form class="form-inline my-2 my-md-0">
		      <input class="form-control" type="text" placeholder="Search">
		    </form>
		  </div>
		</nav>
	</header>
	<article> 
		<section>
			섹션
		</section>
	</article>
	<footer>
		푸터
	</footer>
</body>
</html>