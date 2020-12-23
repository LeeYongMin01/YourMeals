<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>회원가입</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/test/css/bootstrap.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/test/css/mystyle.css">
</head>
<body>

<div id="signup">
	<div class="back">
		<div class="main">
		<form class="form-signin" action="signup" method="post">
			<div class="sign"><h7>회원가입</h7></div>
			<label for="inputEmail" class="sr-only">이메일</label>
			<input type="email" value='${email}' id="sign-inputEmail" name="email" class="form-control" placeholder="이메일(example@gmail.com)"  required>
			<label for="inputPassword" class="sr-only">비밀번호</label>
			<input type="password" id="sign-inputPassword" name="password"class="form-control" placeholder="비밀번호" style="margin:0;" required>
			<label for="inputName" class="sr-only">이름</label>
			<input type="text" id="sign-inputName" name="name"class="form-control" placeholder="이름" required>
			<label for="inputNick" class="sr-only">닉네임</label>
			<input type="text" id="sign-inputNick" name="nick"class="form-control" placeholder="닉네임" required>
		
		<button class="btn" type="submit" style="margin-top: 10px;">계정 생성</button>
		</form>
		</div>
	</div>
</div>


<script type="text/javascript" src="<%=request.getContextPath() %>/test/js/jquery.1.11.1.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/test/js/bootstrap.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/test/js/SmoothScroll.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/test/js/nivo-lightbox.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/test/js/jquery.isotope.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/test/js/jqBootstrapValidation.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/test/js/contact_me.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/test/js/main.js"></script>

</body>
</html>
