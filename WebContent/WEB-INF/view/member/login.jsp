<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Oiloftrop</title>
	
		<!-- CSS only -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
		<!-- JavaScript Bundle with Popper -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
		<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
		
		<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
		<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	
		<!-- 카카오가 제공하는 JavaScript SDK 다운로드 경로 -->
		<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
			
		<style>
			.bd-placeholder-img {
				font-size: 1.125rem;
				text-anchor: middle;
				-webkit-user-select: none;
				-moz-user-select: none;
				-ms-user-select: none;
				user-select: none;
			}
			
			@media (min-width: 768px) {
				.bd-placeholder-img-lg {
					font-size: 3.5rem;
				}
			}
			
			html, body {
				height: 100%;
			}
			
			body {
				display: -ms-flexbox;
				display: flex;
				-ms-flex-align: center;
				align-items: center;
				padding-top: 40px;
				padding-bottom: 40px;
				background-color: #f5f5f5;
			}
			
			.form-signin {
				width: 100%;
				max-width: 330px;
				padding: 15px;
				margin: auto;
			}
			.form-signin .checkbox {
				font-weight: 400;
			}
			.form-signin .form-control {
				position: relative;
				box-sizing: border-box;
				height: auto;
				padding: 10px;
				font-size: 16px;
			}
			.form-signin .form-control:focus {
				z-index: 2;
			}
			.form-signin input[type="email"] {
				margin-bottom: -1px;
				border-bottom-right-radius: 0;
				border-bottom-left-radius: 0;
			}
			.form-signin input[type="password"] {
				margin-bottom: 10px;
				border-top-left-radius: 0;
				border-top-right-radius: 0;
			}
		
		</style>
	</head>
	<body class="text-center">
		<form class="form-signin" action = "/member/login" method= "post">
			<img class="mb-4" src="/resources/images/member/logo.png" alt="" width="72" height="72">
			<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
			<input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
			<input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
			<div class="checkbox mb-3">
				<label>
				<input type="checkbox" value="remember-me"> Remember me
				</label>
			</div>
			<div style = "margin-bottom: 2%;">
				<a id = "kakao" href="https://kauth.kakao.com/oauth/authorize?client_id=9b0e96d311c214cff6e6197588843451&redirect_uri=http://localhost:9090/member/kakaoLogin&response_type=code">
					<img alt="" src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" style = "width: 50%;">
            	</a>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
		</form>
		
		<script type="text/javascript">
			// SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
			Kakao.init('de00d0c0b69d7a76c48050b4187f07fa');
			
			// SDK 초기화 여부를 판단합니다.
			console.log("SDK 초기화 상태 : " + Kakao.isInitialized());
		</script>
		
		
	</body>
</html>