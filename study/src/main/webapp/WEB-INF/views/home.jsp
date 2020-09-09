<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>Home</title>

<!-- 추가한 css파일 20-09-09 -->
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<!-- <a href="/board/list">게시판</a> -->
<br />
<script type="text/javascript">
	$(document).ready(function() {
		$("#logoutBtn").on("click", function() {
			location.href = "member/logout";
		})
		$("#registerBtn").on("click", function() {
			location.href = "member/register";
		})

		$("#memberUpdateBtn").on("click", function() {
			location.href = "member/memberUpdateView";
		})

	})
</script>
<body>
	<form name='homeForm' method="post" action="/member/login">
		<c:if test="${member == null}">

			<!-- css효과 적용 class명 입력 20-09-09-->
			<div class="login-box">
				<h1>Login</h1>
				<div class="textbox">
				<i class="fas fa-user"></i>
					<label for="userId">아이디</label> <input type="text" id="userId"
						name="userId" placeholder="Username">
				</div>
				<div class="textbox">
					<!-- css효과 적용 class명 입력 20-09-09-->
					<i class="fas fa-lock"></i>
					<!-- css효과 적용 class명 입력 -->
					<label for="userPass">패스워드</label> <input type="password"
						id="userPass" name="userPass" placeholder="Password">
				</div>
				
					<button type="submit" class="btn">Sign in</button>
					<!-- css효과 적용 class명 입력 20-09-09-->
					<button id="registerBtn" type="button" class="btn" >회원가입</button>
				</div>
		</c:if>
		<c:if test="${member != null }">
			<div>
				<p>${member.userId}님환영합니다.</p>
				<button id="memberUpdateBtn" type="button">회원정보수정</button>
				<button id="logoutBtn" type="button">로그아웃</button>
			</div>
		</c:if>
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
		</c:if>
	</form>
</body>
</html>