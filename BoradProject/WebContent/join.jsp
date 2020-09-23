<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width", initial-scale="1">
		<link rel="stylesheet" href="css/bootstrap.css">
		<title>Join page</title>
	</head>
	
	<body>
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>		
				</button>
				<a class="navbar-brand" href="main.jsp">JSP 게시판</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="main.jsp">메인</a></li>
					<li><a href="bbs.jsp">게시판</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" role="button"
							aria-haspopup="true" data-toggle="dropdown" aria-expaned="false">접속하기<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li class="active"><a href="login.jsp">로그인</a></li>
							<li><a href="join.jsp">회원가입</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
		
		<div class="container">
			<div class="col-lg-4"></div>
			<div class="col-lg-4">
				<div class="jumbotron" style="padding-top: 20px;">
					<form method="post" action="joinAction.jsp">
						<h3 style="text-align:center;">회원가입 화면</h3><br>
						ID : <div class="form-group">
							<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
						</div>
						비밀번호 : <div class="form-group">
							<input type="password" class="form-control" id="userPassword" placeholder="비밀번호" name="userPassword" maxlength="20">
						</div>
						비밀번호 확인 : <div class="form-group">
							<input type="password" class="form-control" id="checkPassword" placeholder="비밀번호 확인" name="checkPassword" maxlength="20">
							<input type="button" value="확인" onclick="check()">
						</div>
						이름 : <div class="form-group">
							<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
						</div>
						이메일 : <div class="form-group">
							<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="50">
						</div>
						<div class="form-group" style="text-align:center;">
							<div class="btn-group" data=toggle="buttons">
								<label class="btn btn-primary activate">
									<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
								</label>
								<label class="btn btn-primary activate">
									<input type="radio" name="userGender" autocomplete="off" value="여자">여자
								</label>
							</div>
						</div>
						<input type="submit" class="btn btn-primary form-control" value="회원가입">
					</form>
				</div>
			</div>
		</div>
		
		<script >
			const userPassword  = document.getElementById("userPassword");
			const checkPassowrd = document.getElementById("checkPassword");
			const check = () => {
				if(userPassword.value === checkPassword.value) {
					alert("일치합니다.");
				} else {
					alert("일치하지 않습니다.");
					
				}
			}
		</script>
		
		<!-- <script src="https://code.jquery.com/jquery-1.11.3.js" integrity="sha256-IGWuzKD7mwVnNY01LtXxq3L84Tm/RJtNCYBfXZw3Je0=" crossorigin="anonymous"></script> -->
		<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qcyjSMfHjOMaLKfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> -->
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 		<script src="js/bootstrap.js"></script>
	</body>
</html>