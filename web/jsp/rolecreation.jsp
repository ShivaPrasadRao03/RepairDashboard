<%-- 
    Document   : rolecreation
    Created on : Mar 24, 2019, 4:15:07 PM
    Author     : Mahesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="msapplication-tap-highlight" content="no">
        <title>Role Creation</title>
        <!-- Favicons-->
        <link rel="icon" href="<%=request.getContextPath()%>/images/favicon/favicon-32x32.png" sizes="32x32">
        <!-- Favicons-->
        <link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/images/favicon/apple-touch-icon-152x152.png">
        <!-- For iPhone -->
        <meta name="msapplication-TileColor" content="#00bcd4">
        <meta name="msapplication-TileImage" content="<%=request.getContextPath()%>/images/favicon/mstile-144x144.png">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- For Windows Phone -->
        <!-- CORE CSS-->
        <link href="<%=request.getContextPath()%>/css/materialize.css" type="text/css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/style.css" type="text/css" rel="stylesheet">
        <!-- Custome CSS-->
        <link href="<%=request.getContextPath()%>/css/custom.css" type="text/css" rel="stylesheet">
        <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
        <link href="<%=request.getContextPath()%>/css/prism.css" type="text/css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/perfect-scrollbar.css" type="text/css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/flag-icon.min.css" type="text/css" rel="stylesheet">

        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="https://jqueryui.com/resources/demos/style.css">




    </head>
    <body>
        <!-- Start Page Loading -->
        <div id="loader-wrapper">
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
        </div>
        <!-- End Page Loading -->
        <!-- //////////////////////////////////////////////////////////////////////////// -->
        <!-- START HEADER -->
        <jsp:include page="../commonfiles/header.jsp" />
        <!-- END HEADER -->
        <!-- //////////////////////////////////////////////////////////////////////////// -->
        <!-- START MAIN -->
        <div id="main">
            <!-- START WRAPPER -->
            <div class="wrapper">
                <!-- START LEFT SIDEBAR NAV-->
                <jsp:include page="../commonfiles/leftsidebar.jsp" />

                <!-- END LEFT SIDEBAR NAV-->
                <!-- //////////////////////////////////////////////////////////////////////////// -->
                <!-- START CONTENT -->
                <section id="content">
                    <!--breadcrumbs start-->
                    <div id="breadcrumbs-wrapper" class=" grey lighten-3">
                        <!-- Search for small screen -->
                        <div class="header-search-wrapper grey lighten-2 hide-on-large-only">
                            <input type="text" name="Search" class="header-search-input z-depth-2" placeholder="Search....">
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col s10 m6 l6">

                                    <ol class="breadcrumbs">
                                        <li><a href="index.html">Admin Dashboard</a>
                                        </li>


                                    </ol>
                                </div>
                                <!--<div class="col s2 m6 l6">
                                  <a class="btn dropdown-settings waves-effect waves-light breadcrumbs-btn right gradient-45deg-light-blue-cyan gradient-shadow" href="#!" data-activates="dropdown1">
                                    <i class="material-icons hide-on-med-and-up">settings</i>
                                    <span class="hide-on-small-onl">Settings</span>
                                    <i class="material-icons right">arrow_drop_down</i>
                                  </a>
                                  <ul id="dropdown1" class="dropdown-content">
                                    <li><a href="#!" class="grey-text text-darken-2">Access<span class="badge">1</span></a>
                                    </li>
                                    <li><a href="#!" class="grey-text text-darken-2">Profile<span class="new badge">2</span></a>
                                    </li>
                                    <li><a href="#!" class="grey-text text-darken-2">Notifications</a>
                                    </li>
                                  </ul>
                                </div>-->
                            </div>
                        </div>
                    </div>
                    <!--breadcrumbs end-->
                    <!--start container-->
                    <div class="container">
                        <!--
                          jQuery Validation Plugin
                        -->

                        <div class="divider"></div>
                        <!--jqueryvalidation-->
                        <div id="jqueryvalidation" class="section">
                            <div class="row">
                                <div class="col  s3"></div>
                                <div class="col s12 m12 l6">
                                    <div class="card-panel">
                                        <h4 class="header2"><center>Role Creation</center></h4>
                                        <div class="row">
                                            <form class="formValidate" id="formValidate" method="get" action="">
                                                <div class="row">
                                                    <div class="input-field col s12">
                                                        <label for="uname">Account Name</label>
                                                        <input id="uname" name="uname" type="text" data-error=".errorTxt1">

                                                    </div>
                                                    
                                                    <div class="input-field col s12">
                                                        <label for="password">Role Name</label>
                                                        <input type="text"  data-error=".errorTxt3">

                                                    </div>

                                                    <div class="input-field col s12">
                                                        <label for="curl">Role Description</label>
                                                        <input type="text" name="curl" data-error=".errorTxt5">

                                                    </div>



                                                </div>



                                                <div class="input-field col s7">
                                                    <button class="btn waves-effect waves-light right submit" type="submit" name="action">Submit
                                                        <!--<i class="material-icons right">send</i>-->
                                                    </button>
                                                </div>
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- Floating Action Button -->

                    <!-- Floating Action Button -->
            </div>
            <!--end container-->
        </section>
        <!-- END CONTENT -->
        <!-- //////////////////////////////////////////////////////////////////////////// -->
        <!-- START RIGHT SIDEBAR NAV-->
        <jsp:include page="../commonfiles/rightsidebar.jsp" />

        <!-- END RIGHT SIDEBAR NAV-->
    </div>
    <!-- END WRAPPER -->
</div>
<!-- END MAIN -->
<!-- //////////////////////////////////////////////////////////////////////////// -->
<!-- START FOOTER -->
<jsp:include page="../commonfiles/footer.jsp" />

<!-- END FOOTER -->
<!-- ================================================
Scripts
================================================ -->
<!-- jQuery Library -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
<!--angularjs-->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/angular.min.js"></script>
<!--materialize js-->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/materialize.min.js"></script>
<!--prism -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/prism.js"></script>
<!--scrollbar-->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/perfect-scrollbar.min.js"></script>
<!-- chartist -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/additional-methods.min.js"></script>
<!--plugins.js - Some Specific JS codes for Plugin Settings-->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/plugins.js"></script>
<!--form-validation.js - Page Specific JS codes-->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/form-validation.js"></script>
<!--custom-script.js - Add your own theme custom JS-->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/custom-script.js"></script>



<!--datepicker script-->   
<script>
    $(function () {
        $("#startdate").datepicker();
        $("#enddate").datepicker();
    });
</script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>
</html>
