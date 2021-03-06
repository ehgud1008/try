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

<!-- 카카오가 제공하는 JavaScript SDK 다운로드 경로 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<title>로그인</title>
<style>
	div{
		border: 1px black solid;
	}
	.container{
		position:absolute;
		margin-top:-100px;
		margin-left:-10%;
		top:50%;
		left:50%;
		width: 30%;
		text-align: center;
	}
</style>
</head>
<script>
</script>
<body>
	<div class ="container">
		<div>
			<h3>Login</h3>
		</div>
		<form action="/member/login" method="post">
			<div class = "inputArea">
				<label>ID</label><input type="text" class = "input_id" name = "input_id" placeholder="아이디를 입력하세요"><br>
				<label>PW</label><input type="password" class = "input_pw" name = "input_pw" placeholder="비밀번호를 입력하세요"><br>
				<input type="submit" value = "로그인">
			</div>
			<div>
				<a id = "kakao" href="https://kauth.kakao.com/oauth/authorize?client_id=9b0e96d311c214cff6e6197588843451&redirect_uri=http://localhost:9090/member/kakaoLogin&response_type=code">
            	</a>
			</div>
		</form>
	</div>
	
	<script type="text/javascript">
		// SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
		Kakao.init('de00d0c0b69d7a76c48050b4187f07fa');
	 
	    // SDK 초기화 여부를 판단합니다.
	    console.log("SDK 초기화 상태 : " + Kakao.isInitialized());
	    
	    Kakao.Auth.createLoginButton({
	    	container: '#kakao'
	    })
	</script>
</body>
</html>