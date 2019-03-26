<%-- 
    Document   : updationform
    Created on : Mar 24, 2019, 4:14:13 PM
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
        <title>Tool Updation Form</title>
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
                            <!--                            <div class="row">
                                                            <div class="col  s3"></div>
                                                            <div class="col s12 m12 l6">
                                                                <div class="card-panel">
                                                                    <h4 class="header2"><center>Tool Updation Form</center></h4>
                                                                    <div class="row">
                                                                        <form class="formValidate" id="formValidate" method="get" action="">
                            
                            
                                                                            <div class="row">
                                                                                <div class="input-field col s12">
                                                                                    <label for="accountID">Account: </label>
                                                                                    <input id="accountID" name="accountID" type="text" data-error=".errorTxt1">
                            
                                                                                </div>
                            
                                                                                <div class="input-field col s12">
                                                                                    <label for="groupID">District</label>
                                                                                    <input id="groupID" name="groupID" type="text"  data-error=".errorTxt3">
                            
                                                                                </div>
                            
                            
                                                                                <div class="input-field col s12">
                                                                                    <label for="vehicleID">Vehicle</label>
                                                                                    <input type="text" name="vehicleID"  id="vehicleID" data-error=".errorTxt5">
                            
                                                                                </div>
                                                                                <div class="input-field col s12">
                                                                                    <label for="curl">Last Event Time</label>
                                                                                    <input type="text" name="curl" data-error=".errorTxt5">
                            
                                                                                </div>
                            
                                                                                <div class="input-field col s12">
                                                                                    <label for="curl">Not working(in days):</label>
                                                                                    <input type="text" name="days"  id="days" data-error=".errorTxt5">
                            
                                                                                </div>
                            
                            
                                                                                <div class="input-field col s12">
                                                                                    <label for="curl">Fixed by</label>
                                                                                    <input type="text" name="curl" data-error=".errorTxt5">
                            
                                                                                </div>
                            
                                                                                <div class="input-field col s12">
                                                                                   
                                                                                    <select class="mdb-select md-form" id="crole" name="crole" data-error=".errorTxt6">
                                                                                        <option>Mode of Repair</option>
                                                                                        <option>By Phone Call</option>
                                                                                        <option>By Personal Visit</option>
                                                                                    </select>
                            
                            
                                                                                </div>
                            
                            
                                                                                
                            
                                                                                <div class="input-field col s12">
                            
                                                                                    <select class="mdb-select md-form" id="crole" name="crole" data-error=".errorTxt6">
                                                                                        <option>Select Reasons</option>
                                                                                        <option>Ap</option>
                                                                                        <option>Ts</option>
                                                                                    </select>
                            
                                                                                </div>
                            
                            
                            
                                                                                <div class="input-field col s12">
                            
                                                                                    <select class="mdb-select md-form" id="crole" name="crole" data-error=".errorTxt6">
                                                                                        <option>Select Action taken</option>
                                                                                        <option>Ap</option>
                                                                                        <option>Ts</option>
                                                                                    </select>
                            
                                                                                </div>
                            
                            
                                                                                <div class="input-field col s12">
                            
                                                                                    <select class="mdb-select md-form" id="crole" name="crole" data-error=".errorTxt6">
                                                                                        <option>Select Action to be taken</option>
                                                                                        <option>Ap</option>
                                                                                        <option>Ts</option>
                                                                                    </select>
                            
                                                                                </div>
                            
                            
                                                                                <div class="input-field col s12">
                            
                                                                                    <select class="mdb-select md-form" id="crole" name="crole" data-error=".errorTxt6">
                                                                                        <option>Select status</option>
                                                                                        <option>Fixed</option>
                                                                                        <option>Not-Fixed</option>
                                                                                    </select>
                            
                                                                                </div>
                                                                                
                                                                                <div class="input-field col s12">
                                                                                    <label for="curl">Date/Time</label>
                                                                                    <input type="text" id="enddate" name="curl" data-error=".errorTxt5">
                            
                                                                                </div>
                            
                            
                            
                            
                            
                                                                            </div>
                            
                            
                            
                                                                            <div class="input-field col s7">
                                                                                <button class="btn waves-effect waves-light right submit" type="submit" name="action">Submit
                                                                                    <i class="material-icons right">send</i>
                                                                                </button>
                                                                            </div>
                                                                    </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>-->

                            <div class="row">
                                <form class="formValidate" id="formValidate" method="get" action="">
                                    <div class="row">
                                        <div class="col s12 m12 l12">
                                            <div class="card-panel">
                                                <h4 class="header2">Updation Form </h4>
                                                <div class="row">
                                                    <form class="col s12">
                                                        <div class="row">
                                                            <div class="input-field col s12 m4 13">

                                                                <input id="first_name" type="text">
                                                                <label for="first_name">Account</label>

                                                            </div>
                                                            <div class="input-field col s12 m4 13 ">
                                                                 <select>
                                                                    <option value="" disabled selected>District</option>
                                                                    <option value="1">Manager</option>
                                                                    <option value="2">Developer</option>
                                                                    <option value="3">Business</option>
                                                                </select>
                                                            </div>
                                                            <div class="input-field col s12 m4 13">
                                                                <select>
                                                                    <option value="" disabled selected>Vehicle</option>
                                                                    <option value="1">Manager</option>
                                                                    <option value="2">Developer</option>
                                                                    <option value="3">Business</option>
                                                                </select>
                                                            </div>
                                                            <div class="input-field col s12 m4 13">
                                                                <input id="last_name" type="text">
                                                                <label for="last_name"> Last Event Timestamp</label>
                                                            </div>
                                                            <div class="input-field col s12 m4 13">
                                                                <input id="last_name" type="text">
                                                                <label for="last_name">Not working(in days):</label>
                                                            </div>
                                                            <div class="input-field col s12 m4 13">
                                                                  <select>
                                                                    <option value="" disabled selected>Fixed By</option>
                                                                    <option value="1">Manager</option>
                                                                    <option value="2">Developer</option>
                                                                    <option value="3">Business</option>
                                                                </select>
                                                            </div>
                                                            <div class="input-field col s12 m4 13">
                                                                  <select>
                                                                    <option value="" disabled selected>Mode of Repair</option>
                                                                    <option value="1">Manager</option>
                                                                    <option value="2">Developer</option>
                                                                    <option value="3">Business</option>
                                                                </select>
                                                            </div>

                                                            <div class="input-field col s12 m4 13">
                                                                <select>
                                                                    <option value="" disabled selected>Choose your Reasons</option>
                                                                    <option value="1">Manager</option>
                                                                    <option value="2">Developer</option>
                                                                    <option value="3">Business</option>
                                                                </select>
                                                            </div>

                                                            <div class="input-field col s12 m4 13">
                                                                
                                                                <select>
                                                                    <option value="" disabled selected>Action Taken</option>
                                                                    <option value="1">Manager</option>
                                                                    <option value="2">Developer</option>
                                                                    <option value="3">Business</option>
                                                                </select>
                                                            </div>

                                                            <div class="input-field col s12 m4 13">
                                                              
                                                               <select>
                                                                    <option value="" disabled selected>Vehicle Status</option>
                                                                    <option value="1">Manager</option>
                                                                    <option value="2">Developer</option>
                                                                    <option value="3">Business</option>
                                                                </select>
                                                            </div>

                                                            <div class="input-field col s12 m4 13">
                                                                <input id="last_name" type="text">
                                                                <label for="last_name">Vehicle Status</label>
                                                            </div>

                                                            <div class="input-field col s12 m4 13">
                                                                <input id="last_name" type="text">
                                                                <label for="last_name">Date/Time</label>
                                                            </div>
                                                       
                                                        
                                                           
                                                       
<!--                                                            <div class="input-field col s12 m4 13">
                                                                <select>
                                                                    <option value="" disabled selected>Choose your profile</option>
                                                                    <option value="1">Manager</option>
                                                                    <option value="2">Developer</option>
                                                                    <option value="3">Business</option>
                                                                </select>
                                                                <label>Select Profile</label>
                                                            </div>-->
<!--                                                            <div class="input-field col s12 m4 13">
                                                                <input type="date" class="">
                                                                <label for="dob">DOB</label>
                                                            </div>-->
                                                        
                                                        </div>
                                                           
                                                           
                                                            <div class="row">
                                                                <div class="input-field col s12">
                                                                    <button class="btn cyan waves-effect waves-light center" type="submit" name="action">Submit
                                                                        <i class="material-icons right">send</i>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
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
