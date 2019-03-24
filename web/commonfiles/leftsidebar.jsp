<%-- 
    Document   : leftsidebar
    Created on : Mar 24, 2019, 2:13:23 PM
    Author     : Mahesh
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <!-- START LEFT SIDEBAR NAV-->
        <aside id="left-sidebar-nav" class="nav-expanded nav-lock nav-collapsible">
            <div class="brand-sidebar">
                <h1 class="logo-wrapper">
                    <a href="index.html" class="brand-logo darken-1">
                        <!-- <img src="images/materialize-logo.png" alt="materialize logo">-->
                        <span class="logo-text hide-on-med-and-down">Glo Repair Dashboard</span>
                    </a>
                    <a href="#" class="navbar-toggler">
                        <i class="material-icons">radio_button_checked</i>
                    </a>
                </h1>
            </div>
            <ul id="slide-out" class="side-nav fixed leftside-navigation">
                <li class="no-padding">
                    <ul class="collapsible" data-collapsible="accordion">
                        <li class="bold">
                            <a class="collapsible-header waves-effect waves-cyan active">
                                <i class="fa fa-home"></i>
                                <span class="nav-text">Repair Admin</span>
                            </a>
                            <div class="collapsible-body">
                                <ul>
                                    <li class="active">
                                        <a href="dashboard.jsp">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span>Admin Dashboard</span>
                                        </a>
                                    </li>
                                    <!--<li>
                                      <a href="dashboard-analytics.html">
                                        <i class="material-icons">keyboard_arrow_right</i>
                                        <span>Analytics</span>
                                      </a>
                                    </li>-->
                                </ul>
                            </div>
                        </li>







                        <li class="bold">
                            <a class="collapsible-header  waves-effect waves-cyan">
                                <i class="fa fa-file"></i>
                                <span class="nav-text"> Forms</span>
                            </a>
                            <div class="collapsible-body">
                                <ul>
                                    <!-- <li>
                                       <a href="form-elements.html">
                                         <i class="material-icons">keyboard_arrow_right</i>
                                         <span>Form Elements</span>
                                       </a>
                                     </li>-->
                                    <li>
                                        <a href="usercreation.jsp">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span>User Creation</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="rolecreation.jsp">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span>Role Creation</span>
                                        </a>
                                    </li>
                                     <li>
                                       <a href="selectionform.jsp">
                                         <i class="material-icons">keyboard_arrow_right</i>
                                         <span>Selection Form</span>
                                       </a>
                                     </li>
                                    <li>
                                      <a href="updationform.jsp">
                                        <i class="material-icons">keyboard_arrow_right</i>
                                        <span>Repair Updation </span>
                                      </a>
                                    </li>
                                    <li>
                                      <a href="stockupdation.jsp">
                                        <i class="material-icons">keyboard_arrow_right</i>
                                        <span>Stock Updation</span>
                                      </a>
                                    </li>
                                </ul>
                            </div>
                        </li>

                        <li class="bold">
                            <a class="collapsible-header  waves-effect waves-cyan">
                                <i class="fa fa-file-excel-o"></i>
                                <span class="nav-text">Reports </span>
                            </a>
                            <div class="collapsible-body">
                                <ul>

                                     <li>
                                       <a href="table-data.html">
                                         <i class="material-icons">keyboard_arrow_right</i>
                                         <span>Stock Information</span>
                                       </a>
                                     </li>
                                    <li>
                                        <a href="datacallcenter.html">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span>InactiveVehicles + OffRoad</span>
                                        </a>
                                    </li>
                                     <li>
                                        <a href="datacallcenter.html">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span>InactiveVehicles - OffRoad</span>
                                        </a>
                                    </li>
                                     <li>
                                        <a href="datacallcenter.html">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span>Repair status </span>
                                        </a>
                                    </li>



                                </ul>
                            </div>
                        </li>

<!--                        <li class="bold">
                            <a href="salesinvoice.html" class="waves-effect waves-cyan">
                                <i class="fa fa-copy"></i>
                                <span class="nav-text">Repair Invoice</span>
                            </a>
                        </li>-->

                                <li class="bold">
                                    <a class="collapsible-header  waves-effect waves-cyan">
                                        <i class="fa fa-user"></i>
                                        <span class="nav-text">Settings</span>
                                    </a>
                                    <div class="collapsible-body">
                                        <ul>

                                            <li>
                                                <a href="login.html">
                                                    <i class="material-icons">keyboard_arrow_right</i>
                                                    <span>Login</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="user-register.html">
                                                    <i class="material-icons">keyboard_arrow_right</i>
                                                    <span>Register</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="user-forgot-password.html">
                                                    <i class="material-icons">keyboard_arrow_right</i>
                                                    <span>Forgot Password</span>
                                                </a>
                                            </li>
                                            <!--<li>
                                              <a href="user-lock-screen.html">
                                                <i class="material-icons">keyboard_arrow_right</i>
                                                <span>Lock Screen</span>
                                              </a>
                                            </li>-->
                                        </ul>
                                    </div>
                                </li>

                        <!-- <li class="bold">
                           <a class="collapsible-header waves-effect waves-cyan">
                             <i class="material-icons">pie_chart_outlined</i>
                             <span class="nav-text">Charts</span>
                           </a>
                           <div class="collapsible-body">
                             <ul>
                               <li>
                                 <a href="charts-chartjs.html">
                                   <i class="material-icons">keyboard_arrow_right</i>
                                   <span>Chart JS</span>
                                 </a>
                               </li>
                               
                              
                              
                             
                               
                             </ul>
                           </div>
                         </li>-->

                        <li class="bold">
                            <a href="#" class="waves-effect waves-cyan">
                                <i class="fa fa-sign-out" aria-hidden="true"></i>

                                <span class="nav-text">Log Out</span>
                            </a>
                        </li>
                    </ul>
                </li>




            </ul>
            <a href="#" data-activates="slide-out" class="sidebar-collapse btn-floating btn-medium waves-effect waves-light hide-on-large-only gradient-45deg-light-blue-cyan gradient-shadow">
                <i class="material-icons">menu</i>
            </a>
        </aside>
   
        <!-- END LEFT SIDEBAR NAV-->
 