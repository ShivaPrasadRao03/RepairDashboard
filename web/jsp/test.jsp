<%-- 
    Document   : test
    Created on : 26 Mar, 2019, 4:29:20 PM
    Author     : glodeveloper
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

    <title>Forms Layouts</title>
    <!-- Favicons-->
    <link rel="icon" href="../../images/favicon/favicon-32x32.png" sizes="32x32">
    <!-- Favicons-->
    <link rel="apple-touch-icon-precomposed" href="../../images/favicon/apple-touch-icon-152x152.png">
    <!-- For iPhone -->
    <meta name="msapplication-TileColor" content="#00bcd4">
    <meta name="msapplication-TileImage" content="images/favicon/mstile-144x144.png">
    <!-- For Windows Phone -->
    <!-- CORE CSS-->
    <link href="css/materialize.css" type="text/css" rel="stylesheet">
    <link href="css/style.css" type="text/css" rel="stylesheet">
     <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <!-- Custome CSS-->
    <link href="css/custom.css" type="text/css" rel="stylesheet">
    <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
    <link href="css/perfect-scrollbar.css" type="text/css" rel="stylesheet">
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
    <header id="header" class="page-topbar">
      <!-- start header nav-->
      <div class="navbar-fixed">
        <nav class="navbar-color gradient-45deg-purple-deep-orange gradient-shadow">
          <div class="nav-wrapper">
            <div class="header-search-wrapper hide-on-med-and-down sideNav-lock">
              <i class="material-icons">search</i>
              <input type="text" name="Search" class="header-search-input z-depth-2" placeholder="Search...." />
            </div>
            <ul class="right hide-on-med-and-down">
              <li>
                <a href="javascript:void(0);" class="waves-effect waves-block waves-light translation-button" data-activates="translation-dropdown">
                  <span class="flag-icon flag-icon-gb"></span>
                </a>
              </li>
              <li>
                <a href="javascript:void(0);" class="waves-effect waves-block waves-light toggle-fullscreen">
                  <i class="material-icons">settings_overscan</i>
                </a>
              </li>
              <li>
                <a href="javascript:void(0);" class="waves-effect waves-block waves-light notification-button" data-activates="notifications-dropdown">
                  <i class="material-icons">notifications_none
                    <small class="notification-badge">5</small>
                  </i>
                </a>
              </li>
              <li>
                <a href="javascript:void(0);" class="waves-effect waves-block waves-light profile-button" data-activates="profile-dropdown">
                  <span class="avatar-status avatar-online">
                    <img src="images/avatar-7.png" alt="avatar">
                    <i></i>
                  </span>
                </a>
              </li>
              <li>
                <a href="#" data-activates="chat-out" class="waves-effect waves-block waves-light chat-collapse">
                  <i class="material-icons">format_indent_increase</i>
                </a>
              </li>
            </ul>
            <!-- translation-button -->

            <!-- notifications-dropdown -->
            <ul id="notifications-dropdown" class="dropdown-content">
              <li>
                <h6>NOTIFICATIONS
                  <span class="new badge">5</span>
                </h6>
              </li>
              <li class="divider"></li>
              <li>
                <a href="#!" class="grey-text text-darken-2">
                  <span class="material-icons icon-bg-circle cyan small">add_shopping_cart</span> A new order has been placed!</a>
                <time class="media-meta" datetime="2015-06-12T20:50:48+08:00">2 hours ago</time>
              </li>
              <li>
                <a href="#!" class="grey-text text-darken-2">
                  <span class="material-icons icon-bg-circle red small">stars</span> Completed the task</a>
                <time class="media-meta" datetime="2015-06-12T20:50:48+08:00">3 days ago</time>
              </li>
              <li>
                <a href="#!" class="grey-text text-darken-2">
                  <span class="material-icons icon-bg-circle teal small">settings</span> Settings updated</a>
                <time class="media-meta" datetime="2015-06-12T20:50:48+08:00">4 days ago</time>
              </li>
              <li>
                <a href="#!" class="grey-text text-darken-2">
                  <span class="material-icons icon-bg-circle deep-orange small">today</span> Director meeting started</a>
                <time class="media-meta" datetime="2015-06-12T20:50:48+08:00">6 days ago</time>
              </li>
              <li>
                <a href="#!" class="grey-text text-darken-2">
                  <span class="material-icons icon-bg-circle amber small">trending_up</span> Generate monthly report</a>
                <time class="media-meta" datetime="2015-06-12T20:50:48+08:00">1 week ago</time>
              </li>
            </ul>
            <!-- profile-dropdown -->
            <ul id="profile-dropdown" class="dropdown-content">
              <li>
                <a href="#" class="grey-text text-darken-1">
                  <i class="material-icons">face</i> Profile</a>
              </li>
              <li>
                <a href="#" class="grey-text text-darken-1">
                  <i class="material-icons">settings</i> Settings</a>
              </li>
              <li>
                <a href="#" class="grey-text text-darken-1">
                  <i class="material-icons">live_help</i> Help</a>
              </li>
              <li class="divider"></li>
              <li>
                <a href="#" class="grey-text text-darken-1">
                  <i class="material-icons">lock_outline</i> Lock</a>
              </li>
              <li>
                <a href="#" class="grey-text text-darken-1">
                  <i class="material-icons">keyboard_tab</i> Logout</a>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    </header>
    <!-- END HEADER -->
    <!-- //////////////////////////////////////////////////////////////////////////// -->
    <!-- START MAIN -->
    <div id="main">
      <!-- START WRAPPER -->
      <div class="wrapper">
        <!-- START LEFT SIDEBAR NAV-->
       <aside id="left-sidebar-nav" class="nav-expanded nav-lock nav-collapsible">
          <div class="brand-sidebar">
            <h1 class="logo-wrapper">
              <a href="index.html" class="brand-logo darken-1">
               <!-- <img src="images/materialize-logo.png" alt="materialize logo">-->
                <span class="logo-text hide-on-med-and-down">Glo Sales Dashboard</span>
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
                    <i class="material-icons">dashboard</i>
                    <span class="nav-text">Dashboard</span>
                  </a>
                  <div class="collapsible-body">
                    <ul>
                      <li class="active">
                        <a href="index.html">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Admin Dashboard</span>
                        </a>
                      </li>
                      <li>
                        <a href="dashboard-analytics.html">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Analytics</span>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>







                <li class="bold">
                  <a class="collapsible-header  waves-effect waves-cyan">
                    <i class="material-icons">chrome_reader_mode</i>
                    <span class="nav-text">Forms</span>
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
                        <a href="form-layouts.html">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Form Layouts</span>
                        </a>
                      </li>
                      <li>
                        <a href="form-validation.html">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Form Validations</span>
                        </a>
                      </li>
                      <li>
                        <a href="form-masks.html">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Form Masks</span>
                        </a>
                      </li>
                      <li>
                        <a href="form-file-uploads.html">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>File Uploads</span>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>

                 <li class="bold">
                  <a class="collapsible-header  waves-effect waves-cyan">
                    <i class="material-icons">border_all</i>
                    <span class="nav-text">Tables</span>
                  </a>
                  <div class="collapsible-body">
                    <ul>

                      <li>
                        <a href="table-data.html">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Data Tables</span>
                        </a>
                      </li>



                    </ul>
                  </div>
                </li>

                <li class="bold">
                  <a href="salesinvoice.html" class="waves-effect waves-cyan">
                    <i class="material-icons">today</i>
                    <span class="nav-text">Sales Invoice</span>
                  </a>
                </li>

                <li class="bold">
                  <a class="collapsible-header  waves-effect waves-cyan">
                    <i class="material-icons">account_circle</i>
                    <span class="nav-text">User</span>
                  </a>
                  <div class="collapsible-body">
                    <ul>

                      <li>
                        <a href="user-login.html">
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
                      <li>
                        <a href="user-lock-screen.html">
                          <i class="material-icons">keyboard_arrow_right</i>
                          <span>Lock Screen</span>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="bold">
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
                </li>
              </ul>
            </li>




          </ul>
          <a href="#" data-activates="slide-out" class="sidebar-collapse btn-floating btn-medium waves-effect waves-light hide-on-large-only gradient-45deg-light-blue-cyan gradient-shadow">
            <i class="material-icons">menu</i>
          </a>
        </aside>
        <!-- END LEFT SIDEBAR NAV-->
        <!-- //////////////////////////////////////////////////////////////////////////// -->
        <!-- START CONTENT -->
        <section id="content">
          <!--breadcrumbs start-->
          <div id="breadcrumbs-wrapper">
            <!-- Search for small screen -->
            <div class="header-search-wrapper grey lighten-2 hide-on-large-only">
              <input type="text" name="Search" class="header-search-input z-depth-2" placeholder="Explore Materialize">
            </div>
            <div class="container">
              <div class="row">
                <div class="col s10 m6 l6">
                  <h5 class="breadcrumbs-title">Forms</h5>
                  <ol class="breadcrumbs">
                    <li><a href="index.html">Dashboard</a>
                    </li>
                    <li><a href="#">Forms</a>
                    </li>
                    <li class="active">Forms Layouts</li>
                  </ol>
                </div>
               <!-- <div class="col s2 m6 l6">
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
            <div class="section">

              <div class="divider"></div>
              <!--Basic Form-->
              <div id="basic-form" class="section">
                <div class="row">
                  <div class="col s12 m12 l6">
                    <div class="card-panel">
                      <h4 class="header2">Basic Form</h4>
                      <div class="row">
                        <form class="col s12">
                          <div class="row">
                            <div class="input-field col s12">
                              <input id="name" type="text">
                              <label for="first_name">Name</label>
                            </div>
                          </div>
                          <div class="row">
                            <div class="input-field col s12">
                              <input id="email" type="email">
                              <label for="email">Email</label>
                            </div>
                          </div>
                          <div class="row">
                            <div class="input-field col s12">
                              <input id="password" type="password">
                              <label for="password">Password</label>
                            </div>
                          </div>
                          <div class="row">
                            <div class="input-field col s12">
                              <textarea id="message" class="materialize-textarea"></textarea>
                              <label for="message">Message</label>
                            </div>
                            <div class="row">
                              <div class="input-field col s12">
                                <button class="btn cyan waves-effect waves-light right" type="submit" name="action">Submit
                                  <i class="material-icons right">send</i>
                                </button>
                              </div>
                            </div>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <!-- Form with placeholder -->
                  <div class="col s12 m12 l6">
                    <div class="card-panel">
                      <h4 class="header2">Form with placeholder</h4>
                      <div class="row">
                        <form class="col s12">
                          <div class="row">
                            <div class="input-field col s12">
                              <input placeholder="John Doe" id="name2" type="text">
                              <label for="first_name">Name</label>
                            </div>
                          </div>
                          <div class="row">
                            <div class="input-field col s12">
                              <input placeholder="john@domainname.com" id="email2" type="email">
                              <label for="email">Email</label>
                            </div>
                          </div>
                          <div class="row">
                            <div class="input-field col s12">
                              <input placeholder="YourPassword" id="password2" type="password">
                              <label for="password">Password</label>
                            </div>
                          </div>
                          <div class="row">
                            <div class="input-field col s12">
                              <textarea placeholder="Oh WoW! Let me check this one too." id="message2" class="materialize-textarea"></textarea>
                              <label for="message">Message</label>
                            </div>
                            <div class="row">
                              <div class="input-field col s12">
                                <button class="btn cyan waves-effect waves-light right" type="submit" name="action">Submit
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
              <!-- Form with icon prefixes -->
              <div class="row">
                <div class="col s12 m12 l6">
                  <div class="card-panel">
                    <h4 class="header2">Form with icon prefixes</h4>
                    <div class="row">
                      <form class="col s12">
                        <div class="row">
                          <div class="input-field col s12">
                            <i class="material-icons prefix">account_circle</i>
                            <input id="name3" type="text">
                            <label for="first_name">Name</label>
                          </div>
                        </div>
                        <div class="row">
                          <div class="input-field col s12">
                            <i class="material-icons prefix">email</i>
                            <input id="email3" type="email">
                            <label for="email">Email</label>
                          </div>
                        </div>
                        <div class="row">
                          <div class="input-field col s12">
                            <i class="material-icons prefix">lock_outline</i>
                            <input id="password3" type="password">
                            <label for="password">Password</label>
                          </div>
                        </div>
                        <div class="row">
                          <div class="input-field col s12">
                            <i class="material-icons prefix">question_answer</i>
                            <textarea id="message3" class="materialize-textarea"></textarea>
                            <label for="message">Message</label>
                          </div>
                          <div class="row">
                            <div class="input-field col s12">
                              <button class="btn cyan waves-effect waves-light right" type="submit" name="action">Submit
                                <i class="material-icons right">send</i>
                              </button>
                            </div>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
                <!-- Form with validation -->
                <div class="col s12 m12 l6">
                  <div class="card-panel">
                    <h4 class="header2">Form with validation</h4>
                    <div class="row">
                      <form class="col s12">
                        <div class="row">
                          <div class="input-field col s12">
                            <i class="material-icons prefix">account_circle</i>
                            <input id="name4" type="text" class="validate">
                            <label for="first_name">Name</label>
                          </div>
                        </div>
                        <div class="row">
                          <div class="input-field col s12">
                            <i class="material-icons prefix">email</i>
                            <input id="email4" type="email" class="validate">
                            <label for="email">Email</label>
                          </div>
                        </div>
                        <div class="row">
                          <div class="input-field col s12">
                            <i class="material-icons prefix">lock_outline</i>
                            <input id="password5" type="password" class="validate">
                            <label for="password">Password</label>
                          </div>
                        </div>
                        <div class="row">
                          <div class="input-field col s12">
                            <i class="material-icons prefix">question_answer</i>
                            <textarea id="message4" class="materialize-textarea validate" length="120"></textarea>
                            <label for="message">Message</label>
                          </div>
                          <div class="row">
                            <div class="input-field col s12">
                              <button class="btn cyan waves-effect waves-light right" type="submit" name="action">Submit
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
            <!-- Inline Form -->
            <div class="row">
              <div class="col s12 m12 l12">
                <div class="card-panel">
                  <div class="row">
                    <form class="col s12">
                      <h4 class="header2">Inline form</h4>
                      <div class="row">
                        <div class="input-field col s4">
                          <i class="material-icons prefix">account_circle</i>
                          <input id="icon_prefix" type="text" class="validate">
                          <label for="icon_prefix">First Name</label>
                        </div>
                        <div class="input-field col s4">
                          <i class="material-icons prefix">lock_outline</i>
                          <input id="icon_password" type="password" class="validate">
                          <label for="icon_password">Password</label>
                        </div>
                        <div class="input-field col s4">
                          <div class="input-field col s12">
                            <button class="btn cyan waves-effect waves-light" type="submit" name="action">
                              <i class="material-icons">lock_open</i> Login</button>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            <!-- Inline form with placeholder -->
            <div class="row">
              <div class="col s12 m12 l12">
                <div class="card-panel">
                  <div class="row">
                    <form class="col s12">
                      <h4 class="header2">Inline form with placeholder</h4>
                      <div class="row">
                        <div class="input-field col s4">
                          <i class="material-icons prefix">account_circle</i>
                          <input placeholder="John Doe" id="icon_prefix2" type="text" class="validate">
                          <label for="icon_prefix">First Name</label>
                        </div>
                        <div class="input-field col s4">
                          <i class="material-icons prefix">email</i>
                          <input placeholder="john@mydomain.com" id="icon_email" type="email" class="validate">
                          <label for="icon_email">Email</label>
                        </div>
                        <div class="input-field col s4">
                          <div class="input-field col s12">
                            <button class="btn cyan waves-effect waves-light" type="submit" name="action">
                              <i class="material-icons">perm_identity</i> Register</button>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            <!--Form Advance-->
            <div class="row">
              <div class="col s12 m12 l12">
                <div class="card-panel">
                  <h4 class="header2">Form Advance</h4>
                  <div class="row">
                    <form class="col s12">
                      <div class="row">
                        <div class="input-field col s6">
                          <input id="first_name" type="text">
                          <label for="first_name">First Name</label>
                        </div>
                        <div class="input-field col s6">
                          <input id="last_name" type="text">
                          <label for="last_name">Last Name</label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s12">
                          <input id="email5" type="email">
                          <label for="email">Email</label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s12">
                          <input id="password6" type="password">
                          <label for="password">Password</label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s6">
                          <select>
                            <option value="" disabled selected>Choose your profile</option>
                            <option value="1">Manager</option>
                            <option value="2">Developer</option>
                            <option value="3">Business</option>
                          </select>
                          <label>Select Profile</label>
                        </div>
                        <div class="input-field col s6">
                          <input type="date" class="datepicker">
                          <label for="dob">DOB</label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="file-field input-field col s6">
                          <input class="file-path validate" type="text" />
                          <div class="btn">
                            <span>Age</span>
                            <input type="file" />
                          </div>
                        </div>
                        <div class="input-field col s6">
                          <span>Image</span>
                          <p class="range-field">
                            <input type="range" id="test5" min="0" max="100" />
                          </p>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s12">
                          <textarea id="message5" class="materialize-textarea" length="120"></textarea>
                          <label for="message">Message</label>
                        </div>
                        <div class="row">
                          <div class="input-field col s12">
                            <button class="btn cyan waves-effect waves-light right" type="submit" name="action">Submit
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
        </section>
        <!-- END CONTENT -->
        <!-- //////////////////////////////////////////////////////////////////////////// -->
        <!-- START RIGHT SIDEBAR NAV-->
        <aside id="right-sidebar-nav">
          <ul id="chat-out" class="side-nav rightside-navigation">
            <li class="li-hover">
              <div class="row">
                <div class="col s12 border-bottom-1 mt-5">
                  <ul class="tabs">
                    <li class="tab col s4">
                      <a href="#activity" class="active">
                        <span class="material-icons">graphic_eq</span>
                      </a>
                    </li>
                    <li class="tab col s4">
                      <a href="#chatapp">
                        <span class="material-icons">face</span>
                      </a>
                    </li>
                    <li class="tab col s4">
                      <a href="#settings">
                        <span class="material-icons">settings</span>
                      </a>
                    </li>
                  </ul>
                </div>
                <div id="settings" class="col s12">
                  <h6 class="mt-5 mb-3 ml-3">GENERAL SETTINGS</h6>
                  <ul class="collection border-none">
                    <li class="collection-item border-none">
                      <div class="m-0">
                        <span class="font-weight-600">Notifications</span>
                        <div class="switch right">
                          <label>
                            <input checked type="checkbox">
                            <span class="lever"></span>
                          </label>
                        </div>
                      </div>
                      <p>Use checkboxes when looking for yes or no answers.</p>
                    </li>
                    <li class="collection-item border-none">
                      <div class="m-0">
                        <span class="font-weight-600">Show recent activity</span>
                        <div class="switch right">
                          <label>
                            <input checked type="checkbox">
                            <span class="lever"></span>
                          </label>
                        </div>
                      </div>
                      <p>The for attribute is necessary to bind our custom checkbox with the input.</p>
                    </li>
                    <li class="collection-item border-none">
                      <div class="m-0">
                        <span class="font-weight-600">Notifications</span>
                        <div class="switch right">
                          <label>
                            <input type="checkbox">
                            <span class="lever"></span>
                          </label>
                        </div>
                      </div>
                      <p>Use checkboxes when looking for yes or no answers.</p>
                    </li>
                    <li class="collection-item border-none">
                      <div class="m-0">
                        <span class="font-weight-600">Show recent activity</span>
                        <div class="switch right">
                          <label>
                            <input type="checkbox">
                            <span class="lever"></span>
                          </label>
                        </div>
                      </div>
                      <p>The for attribute is necessary to bind our custom checkbox with the input.</p>
                    </li>
                    <li class="collection-item border-none">
                      <div class="m-0">
                        <span class="font-weight-600">Show your emails</span>
                        <div class="switch right">
                          <label>
                            <input type="checkbox">
                            <span class="lever"></span>
                          </label>
                        </div>
                      </div>
                      <p>Use checkboxes when looking for yes or no answers.</p>
                    </li>
                    <li class="collection-item border-none">
                      <div class="m-0">
                        <span class="font-weight-600">Show Task statistics</span>
                        <div class="switch right">
                          <label>
                            <input type="checkbox">
                            <span class="lever"></span>
                          </label>
                        </div>
                      </div>
                      <p>The for attribute is necessary to bind our custom checkbox with the input.</p>
                    </li>
                  </ul>
                </div>
                <div id="chatapp" class="col s12">
                  <div class="collection border-none">
                    <a href="#!" class="collection-item avatar border-none">
                      <img src="../../images/avatar/avatar-1.png" alt="" class="circle cyan">
                      <span class="line-height-0">Elizabeth Elliott </span>
                      <span class="medium-small right blue-grey-text text-lighten-3">5.00 AM</span>
                      <p class="medium-small blue-grey-text text-lighten-3">Thank you </p>
                    </a>
                    <a href="#!" class="collection-item avatar border-none">
                      <img src="../../images/avatar/avatar-2.png" alt="" class="circle deep-orange accent-2">
                      <span class="line-height-0">Mary Adams </span>
                      <span class="medium-small right blue-grey-text text-lighten-3">4.14 AM</span>

                      <p class="medium-small blue-grey-text text-lighten-3">Hello Boo </p>
                    </a>
                    <a href="#!" class="collection-item avatar border-none">
                      <img src="../../images/avatar/avatar-3.png" alt="" class="circle teal accent-4">
                      <span class="line-height-0">Caleb Richards </span>
                      <span class="medium-small right blue-grey-text text-lighten-3">9.00 PM</span>
                      <p class="medium-small blue-grey-text text-lighten-3">Keny ! </p>
                    </a>
                    <a href="#!" class="collection-item avatar border-none">
                      <img src="../../images/avatar/avatar-4.png" alt="" class="circle cyan">
                      <span class="line-height-0">June Lane </span>
                      <span class="medium-small right blue-grey-text text-lighten-3">4.14 AM</span>
                      <p class="medium-small blue-grey-text text-lighten-3">Ohh God </p>
                    </a>
                    <a href="#!" class="collection-item avatar border-none">
                      <img src="../../images/avatar/avatar-5.png" alt="" class="circle red accent-2">
                      <span class="line-height-0">Edward Fletcher </span>
                      <span class="medium-small right blue-grey-text text-lighten-3">5.15 PM</span>
                      <p class="medium-small blue-grey-text text-lighten-3">Love you </p>
                    </a>
                    <a href="#!" class="collection-item avatar border-none">
                      <img src="../../images/avatar/avatar-6.png" alt="" class="circle deep-orange accent-2">
                      <span class="line-height-0">Crystal Bates </span>
                      <span class="medium-small right blue-grey-text text-lighten-3">8.00 AM</span>
                      <p class="medium-small blue-grey-text text-lighten-3">Can we </p>
                    </a>
                    <a href="#!" class="collection-item avatar border-none">
                      <img src="../../images/avatar/avatar-7.png" alt="" class="circle cyan">
                      <span class="line-height-0">Nathan Watts </span>
                      <span class="medium-small right blue-grey-text text-lighten-3">9.53 PM</span>
                      <p class="medium-small blue-grey-text text-lighten-3">Great! </p>
                    </a>
                    <a href="#!" class="collection-item avatar border-none">
                      <img src="../../images/avatar/avatar-8.png" alt="" class="circle red accent-2">
                      <span class="line-height-0">Willard Wood </span>
                      <span class="medium-small right blue-grey-text text-lighten-3">4.20 AM</span>
                      <p class="medium-small blue-grey-text text-lighten-3">Do it </p>
                    </a>
                    <a href="#!" class="collection-item avatar border-none">
                      <img src="../../images/avatar/avatar-9.png" alt="" class="circle teal accent-4">
                      <span class="line-height-0">Ronnie Ellis </span>
                      <span class="medium-small right blue-grey-text text-lighten-3">5.30 PM</span>
                      <p class="medium-small blue-grey-text text-lighten-3">Got that </p>
                    </a>
                    <a href="#!" class="collection-item avatar border-none">
                      <img src="../../images/avatar/avatar-1.png" alt="" class="circle cyan">
                      <span class="line-height-0">Gwendolyn Wood </span>
                      <span class="medium-small right blue-grey-text text-lighten-3">4.34 AM</span>
                      <p class="medium-small blue-grey-text text-lighten-3">Like you </p>
                    </a>
                    <a href="#!" class="collection-item avatar border-none">
                      <img src="../../images/avatar/avatar-2.png" alt="" class="circle red accent-2">
                      <span class="line-height-0">Daniel Russell </span>
                      <span class="medium-small right blue-grey-text text-lighten-3">12.00 AM</span>
                      <p class="medium-small blue-grey-text text-lighten-3">Thank you </p>
                    </a>
                    <a href="#!" class="collection-item avatar border-none">
                      <img src="../../images/avatar/avatar-3.png" alt="" class="circle teal accent-4">
                      <span class="line-height-0">Sarah Graves </span>
                      <span class="medium-small right blue-grey-text text-lighten-3">11.14 PM</span>
                      <p class="medium-small blue-grey-text text-lighten-3">Okay you </p>
                    </a>
                    <a href="#!" class="collection-item avatar border-none">
                      <img src="../../images/avatar/avatar-4.png" alt="" class="circle red accent-2">
                      <span class="line-height-0">Andrew Hoffman </span>
                      <span class="medium-small right blue-grey-text text-lighten-3">7.30 PM</span>
                      <p class="medium-small blue-grey-text text-lighten-3">Can do </p>
                    </a>
                    <a href="#!" class="collection-item avatar border-none">
                      <img src="../../images/avatar/avatar-5.png" alt="" class="circle cyan">
                      <span class="line-height-0">Camila Lynch </span>
                      <span class="medium-small right blue-grey-text text-lighten-3">2.00 PM</span>
                      <p class="medium-small blue-grey-text text-lighten-3">Leave it </p>
                    </a>
                  </div>
                </div>
                <div id="activity" class="col s12">
                  <h6 class="mt-5 mb-3 ml-3">RECENT ACTIVITY</h6>
                  <div class="activity">
                    <div class="col s3 mt-2 center-align recent-activity-list-icon">
                      <i class="material-icons white-text icon-bg-color deep-purple lighten-2">add_shopping_cart</i>
                    </div>
                    <div class="col s9 recent-activity-list-text">
                      <a href="#" class="deep-purple-text medium-small">just now</a>
                      <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">Jim Doe Purchased new equipments for zonal office.</p>
                    </div>
                    <div class="recent-activity-list chat-out-list row mb-0">
                      <div class="col s3 mt-2 center-align recent-activity-list-icon">
                        <i class="material-icons white-text icon-bg-color cyan lighten-2">airplanemode_active</i>
                      </div>
                      <div class="col s9 recent-activity-list-text">
                        <a href="#" class="cyan-text medium-small">Yesterday</a>
                        <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">Your Next flight for USA will be on 15th August 2015.</p>
                      </div>
                    </div>
                    <div class="recent-activity-list chat-out-list row mb-0">
                      <div class="col s3 mt-2 center-align recent-activity-list-icon medium-small">
                        <i class="material-icons white-text icon-bg-color green lighten-2">settings_voice</i>
                      </div>
                      <div class="col s9 recent-activity-list-text">
                        <a href="#" class="green-text medium-small">5 Days Ago</a>
                        <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">Natalya Parker Send you a voice mail for next conference.</p>
                      </div>
                    </div>
                    <div class="recent-activity-list chat-out-list row mb-0">
                      <div class="col s3 mt-2 center-align recent-activity-list-icon">
                        <i class="material-icons white-text icon-bg-color amber lighten-2">store</i>
                      </div>
                      <div class="col s9 recent-activity-list-text">
                        <a href="#" class="amber-text medium-small">1 Week Ago</a>
                        <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">Jessy Jay open a new store at S.G Road.</p>
                      </div>
                    </div>
                    <div class="recent-activity-list row">
                      <div class="col s3 mt-2 center-align recent-activity-list-icon">
                        <i class="material-icons white-text icon-bg-color deep-orange lighten-2">settings_voice</i>
                      </div>
                      <div class="col s9 recent-activity-list-text">
                        <a href="#" class="deep-orange-text medium-small">2 Week Ago</a>
                        <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">voice mail for conference.</p>
                      </div>
                    </div>
                    <div class="recent-activity-list chat-out-list row mb-0">
                      <div class="col s3 mt-2 center-align recent-activity-list-icon medium-small">
                        <i class="material-icons white-text icon-bg-color brown lighten-2">settings_voice</i>
                      </div>
                      <div class="col s9 recent-activity-list-text">
                        <a href="#" class="brown-text medium-small">1 Month Ago</a>
                        <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">Natalya Parker Send you a voice mail for next conference.</p>
                      </div>
                    </div>
                    <div class="recent-activity-list chat-out-list row mb-0">
                      <div class="col s3 mt-2 center-align recent-activity-list-icon">
                        <i class="material-icons white-text icon-bg-color deep-purple lighten-2">store</i>
                      </div>
                      <div class="col s9 recent-activity-list-text">
                        <a href="#" class="deep-purple-text medium-small">3 Month Ago</a>
                        <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">Jessy Jay open a new store at S.G Road.</p>
                      </div>
                    </div>
                    <div class="recent-activity-list row">
                      <div class="col s3 mt-2 center-align recent-activity-list-icon">
                        <i class="material-icons white-text icon-bg-color grey lighten-2">settings_voice</i>
                      </div>
                      <div class="col s9 recent-activity-list-text">
                        <a href="#" class="grey-text medium-small">1 Year Ago</a>
                        <p class="mt-0 mb-2 fixed-line-height font-weight-300 medium-small">voice mail for conference.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </li>
          </ul>
        </aside>
        <!-- END RIGHT SIDEBAR NAV-->
      </div>
      <!-- END WRAPPER -->
    </div>
    <!-- END MAIN -->
    <!-- //////////////////////////////////////////////////////////////////////////// -->
    <!-- START FOOTER -->
    <footer class="page-footer gradient-45deg-purple-deep-orange">
      <div class="footer-copyright">
        <div class="container">
           <span>
               <a class="grey-text text-lighten-4" href="http://glovision.co/" target="_blank">

© 2014-2018 All Rights Reserved Design by Glovision.co
</span>

        </div>
      </div>
    </footer>
    <!-- END FOOTER -->
    <!-- ================================================
    Scripts
    ================================================ -->
    <!-- jQuery Library -->
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <!--materialize js-->
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <!--scrollbar-->
    <script type="text/javascript" src="js/perfect-scrollbar.min.js"></script>
    <!--plugins.js - Some Specific JS codes for Plugin Settings-->
    <script type="text/javascript" src="js/plugins.js"></script>
    <!--custom-script.js - Add your own theme custom JS-->
    <script type="text/javascript" src="js/custom-script.js"></script>
  </body>
</html>