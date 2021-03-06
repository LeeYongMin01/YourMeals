<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>YourMeals</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons
    ================================================== -->
<link rel="shortcut icon"
  href="<%=request.getContextPath()%>/test/img/favicon.ico"
  type="image/x-icon">
<link rel="apple-touch-icon"
  href="<%=request.getContextPath()%>/test/img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
  href="<%=request.getContextPath()%>/test/img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
  href="<%=request.getContextPath()%>/test/img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"
  href="<%=request.getContextPath()%>/test/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
  href="<%=request.getContextPath()%>/test/fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"
  href="<%=request.getContextPath()%>/test/css/style.css">
<link rel="stylesheet" type="text/css"
  href="<%=request.getContextPath()%>/test/css/nivo-lightbox/nivo-lightbox.css">
<link rel="stylesheet" type="text/css"
  href="<%=request.getContextPath()%>/test/css/nivo-lightbox/default.css">
<link
  href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700"
  rel="stylesheet">
<link
  href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
  rel="stylesheet">
<link
  href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700"
  rel="stylesheet">

</head>
<body>


  <header>
    <nav id="menu" class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed"
            data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span> <span
              class="icon-bar"></span> <span class="icon-bar"></span> <span
              class="icon-bar"></span>
          </button>
          <a class="navbar-brand page-scroll" href="<%=request.getContextPath()%>/app/index"">YourMeals</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse"
          id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="<%=request.getContextPath()%>/app/basket/form" class="page-scroll"
              style="color: rgba(255, 255, 255, 0.8)">Shop</a></li>
            <li><a href="<%=request.getContextPath()%>/app/recipe/list" class="page-scroll"
              style="color: rgba(255, 255, 255, 0.8)">Recipe</a></li>

            <c:if test="${empty sessionScope.loginUser}">
              <li><a href="<%=request.getContextPath()%>/app/auth/login"
                class="page-scroll" style="color: rgba(255, 255, 255, 0.8)">Login</a></li>
              <li><a href="<%=request.getContextPath()%>/app/user/form"
                class="page-scroll" style="color: rgba(255, 255, 255, 0.8)">Sign
                  up</a></li>
            </c:if>
            <c:if test="${not empty sessionScope.loginUser}">
              <li><a href="<%=request.getContextPath()%>/app/mypage/index" class="page-scroll"
                style="color: rgba(255, 255, 255, 0.8)">My page</a></li>
              <li><a href="<%=request.getContextPath()%>/app/basket/list" class="page-scroll"
                style="color: rgba(255, 255, 255, 0.8)">Basket</a></li>
              <li><a href="<%=request.getContextPath()%>/app/auth/logout"
                class="page-scroll" style="color: rgba(255, 255, 255, 0.8)">Logout</a></li>
            </c:if>
            <c:if test="${sessionScope.loginUser.userTypeNo == 1}">
              <li><a
                href="<%=request.getContextPath()%>/app/admin/userList"
                class="page-scroll" style="color: rgba(255, 255, 255, 0.8)">ADMIN</a></li>
            </c:if>

          </ul>
        </div>

      </div>
    </nav>
  </header>

  <script type="text/javascript"
    src="<%=request.getContextPath()%>/test/js/jquery.1.11.1.js"></script>
  <script type="text/javascript"
    src="<%=request.getContextPath()%>/test/js/SmoothScroll.js"></script>
  <script type="text/javascript"
    src="<%=request.getContextPath()%>/test/js/nivo-lightbox.js"></script>
  <script type="text/javascript"
    src="<%=request.getContextPath()%>/test/js/jquery.isotope.js"></script>
  <script type="text/javascript"
    src="<%=request.getContextPath()%>/test/js/jqBootstrapValidation.js"></script>
  <%--<script type="text/javascript" src="<%=request.getContextPath() %>/test/js/contact_me.js"></script>--%>
  <script type="text/javascript"
    src="<%=request.getContextPath() %>/test/js/main.js"></script>
</body>
</html>