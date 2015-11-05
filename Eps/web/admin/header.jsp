<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
    <!-- BEGIN HEAD -->
    <head>
        <style>
            a:hover {
                text-decoration: none;
            }
        </style>
        <meta charset="utf-8" />
        <title>And Corporation || Dashboard</title>
        <link href="../panel/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link href="../panel/assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
        <link href="../panel/assets/bootstrap/css/bootstrap-fileupload.css" rel="stylesheet" />
        <link href="../panel/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href="../panel/css/style.css" rel="stylesheet" />
        <link href="../panel/css/style-responsive.css" rel="stylesheet" />
        <link href="../panel/css/style-default.css" rel="stylesheet" id="style_color" />
        <link href="../panel/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
        <link href="../panel/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
        <script type="text/javascript" src="../panel/myJs/myjs.js"></script>
        <script type="text/javascript" src="../assets/js/jquery.js"></script>

    </head>
    <!-- END HEAD -->
    <!-- BEGIN BODY -->
    <body class="fixed-top">
        <!-- BEGIN HEADER -->
        <div id="header" class="navbar navbar-inverse navbar-fixed-top">
            <!-- BEGIN TOP NAVIGATION BAR -->
            <div class="navbar-inner">
                <div class="container-fluid">
                    <!--BEGIN SIDEBAR TOGGLE-->
                    <div class="sidebar-toggle-box hidden-phone">
                        <div class="icon-reorder tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
                    </div>
                    <!--END SIDEBAR TOGGLE-->
                    <!-- BEGIN LOGO -->
                    <a class="brand" href="index.jsp">
                        <img src="../panel/img/logo.png" alt="Metro Lab" />
                    </a>
                    <!-- END LOGO -->
                    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                    <a class="btn btn-navbar collapsed" id="main_menu_trigger" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="arrow"></span>
                    </a>

                    <div class="top-nav ">
                        <ul class="nav pull-right top-menu" >
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="../panel/img/avatar1_small.jpg" alt="">
                                    <span class="username">Jhon Doe</span>
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu extended logout">
                                    <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
                                    <li><a href="logout.jsp"><i class="icon-key"></i> Log Out</a></li>
                                </ul>
                            </li>
                            <!-- END USER LOGIN DROPDOWN -->
                        </ul>
                        <!-- END TOP NAVIGATION MENU -->
                    </div>
                </div>
            </div>
            <!-- END TOP NAVIGATION BAR -->
        </div>
        <!-- END HEADER -->
        <!-- BEGIN CONTAINER -->
        <div id="container" class="row-fluid">
            <!-- BEGIN SIDEBAR -->
            <div class="sidebar-scroll">
                <div id="sidebar" class="nav-collapse collapse">

                    <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

                    <!-- END RESPONSIVE QUICK SEARCH FORM -->
                    <!-- BEGIN SIDEBAR MENU -->
                    <ul class="sidebar-menu">
                        <li class="sub-menu">
                            <a class="" href="index.jsp">
                                <i class="icon-home"></i>
                                <span>Home</span>
                            </a>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon-user"></i>
                                <span>Employee Section</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub">
                                <li><a class="" href="register.jsp">Register Employee</a></li>
                                <li><a class="" href="manager.jsp">Project Manager List</a></li>
                                <li><a class="" href="leader.jsp">Team Leader List</a></li>
                                <li class=""><a class="" href="team.jsp">Team Member List</a></li>
                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon-book"></i>
                                <span>Project Section</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub">
                                <li><a class="" href="project.jsp">Add project</a></li>
                                <li><a class="" href="list.jsp">Project List</a></li>
                                <li><a class="" href="list.jsp">Completed Project List</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="password.jsp" class="">
                                <i class="icon-lock"></i>
                                <span>Change Password</span>

                            </a>
                        </li>

                        <li>
                            <a class="" href="logout.jsp">
                                <i class="icon-power-off"></i>
                                <span>Logout</span>
                            </a>
                        </li>
                    </ul>
                    <!-- END SIDEBAR MENU -->
                </div>
            </div>
            <!-- END SIDEBAR -->
            <!-- BEGIN PAGE -->  
            <div id="main-content">
                <!-- BEGIN PAGE CONTAINER-->
                <div class="container-fluid">
                    <!-- BEGIN PAGE HEADER-->   
                    <div class="row-fluid">
                        <div class="span12">
                            <h3 class="page-title">
                                Dashboard
                            </h3>