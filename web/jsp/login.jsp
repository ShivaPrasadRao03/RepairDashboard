<%-- 
    Document   : login
    Created on : Mar 24, 2019, 1:21:30 PM
    Author     : Mahesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="msapplication-tap-highlight" content="no">
    
    <title>Login Page</title>
    <!-- Favicons-->
    <link rel="icon" href="../../images/favicon/favicon-32x32.png" sizes="32x32">
    <!-- Favicons-->
    <link rel="apple-touch-icon-precomposed" href="../../images/favicon/apple-touch-icon-152x152.png">
    <!-- For iPhone -->
    <meta name="msapplication-TileColor" content="#00bcd4">
  <body class="cyan">
    <meta name="msapplication-TileImage" content="images/favicon/mstile-144x144.png">
      <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <!-- For Windows Phone -->
    <!-- CORE CSS-->
    <link href="<%=request.getContextPath()%>/css/materialize.css" type="text/css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/style.css" type="text/css" rel="stylesheet">
    <!-- Custome CSS-->
    <link href="<%=request.getContextPath()%>/css/custom.css" type="text/css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/page-center.css" type="text/css" rel="stylesheet">
    <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
    <link href="<%=request.getContextPath()%>/css/perfect-scrollbar.css" type="text/css" rel="stylesheet">
  </head>
    <!-- Start Page Loading -->
    <div id="loader-wrapper">
      <div id="loader"></div>
      <div class="loader-section section-left"></div>
      <div class="loader-section section-right"></div>
    </div>
    <!-- End Page Loading -->
    <div id="login-page" class="row">
      <div class="col s12 z-depth-4 card-pane2">
        <form class="login-form">
          <div class="row">
            <div class="input-field col s12 center">
              <img src="<%=request.getContextPath()%>/images/originallogo.png" alt="" >
              
            </div>
          </div>
          <div class="row margin">
            <div class="input-field col s12">
              <i class="material-icons prefix pt-5">person_outline</i>
              <input id="username" type="text">
              <label for="username" class="center-align">Username</label>
            </div>
          </div>
          <div class="row margin">
            <div class="input-field col s12">
              <i class="material-icons prefix pt-5">lock_outline</i>
              <input id="password" type="password">
              <label for="password">Password</label>
            </div>
          </div>
          <div class="row">
            <div class="col s12 m12 l12 ml-2 mt-3">
              <input type="checkbox" id="remember-me" />
              <label for="remember-me">Remember me</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
              <a href="<%=request.getContextPath()%>/jsp/dashboard.jsp" class="btn waves-effect waves-light col s12">Login</a>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s6 m6 l6">
              <p class="margin medium-small"><a href="user-register.html">Register Now!</a></p>
            </div>
            <div class="input-field col s6 m6 l6">
              <p class="margin right-align medium-small"><a href="user-forgot-password.html">Forgot password ?</a></p>
            </div>
          </div>
        </form>
      </div>
    </div>
    <!-- ================================================
    Scripts
    ================================================ -->
    <!-- jQuery Library -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
    <!--materialize js-->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/materialize.min.js"></script>
    <!--scrollbar-->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/perfect-scrollbar.min.js"></script>
    <!--plugins.js - Some Specific JS codes for Plugin Settings-->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/plugins.js"></script>
    <!--custom-script.js - Add your own theme custom JS-->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/custom-script.js"></script>
  </body>
</html>