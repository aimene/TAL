<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.0
Version: 1.5.2
Author: KeenThemes
Website: http://www.keenthemes.com/
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title>TAL | Se connecter</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <meta name="MobileOptimized" content="320">
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN THEME STYLES -->

    <link rel="stylesheet" type="text/css" href="assets/plugins/select2/select2_metro.css" />
    <link rel="stylesheet" href="assets/plugins/data-tables/DT_bootstrap.css" />

    <link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <style type="text/css">
        label{
            color: #eeedf2 ;margin-left: 0%;font-size: 1.5em;border-radius: 20px !important;

        }
        .page-content{
            min-height: 600px !important;
            background-color: white!important;
        }
    </style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed page-full-width"  style=" background-color: white !important">
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse navbar-fixed-top ">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="header-inner container">
        <!-- BEGIN LOGO -->
        <a class="navbar-brand" href="index.html" style="padding: 7px;"  >
            <img src="assets/image/talocationlogo.png" alt="logo" style="" />
        </a>
        <a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <img src="assets/img/menu-toggler.png" alt="" />
        </a>
        <!-- END LOGO -->
        <!-- BEGIN HORIZANTAL MENU -->

        </ul>
    </div>
    <!-- END HORIZANTAL MENU -->
    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
    <a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">

    </a>
    <!-- END RESPONSIVE MENU TOGGLER -->
    <!-- BEGIN TOP NAVIGATION MENU -->

    <!-- END TOP NAVIGATION MENU -->
</div>
<!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->
<div class="clearfix"></div>
<!-- BEGIN CONTAINER -->
<div class="container" style=" margin-top: 30px;"  >
    <!-- BEGIN EMPTY PAGE SIDEBAR -->

    <!-- END EMPTY PAGE SIDEBAR -->
    <!-- BEGIN PAGE -->
    <div class="page-content" >
        <div class="container" >
            <!-- BEGIN EMPTY PAGE SIDEBAR -->

            <!-- END EMPTY PAGE SIDEBAR -->
            <!-- BEGIN PAGE -->


            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row " >
                <div class="col-md-6 col-md-offset-3" >
                    <div  style="border-radius: 30px !important; background-color: rgb(16,16,16); ">
                        <div class="modal-header" style="background-color: black !important;border-radius: 30px !important; ">
                            <a class="navbar-brand" href="index.html"  style="padding: 0;margin: 0"  >
                                <img src="assets/image/talocationlogo.png" alt="logo" style="" />
                            </a>

                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title" style=" color: #e02222 !important; font-weight: 1000 !important; margin-left:40%">Connexion</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">

                                    <form action="/seconnecterBack" method="post">

                                        <div class="form-group">
                                            <label class="control-label">Pseudo </label>
                                            <div class="input-group">

                                                <input type="text" class="form-control" placeholder="pseudo " name="pseudo" required="required">
                                                <span class="input-group-addon"><i class="icon-user"></i></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label">Mot de passe</label>
                                            <div class="input-group">
                                                <input type="password" class="form-control" placeholder="Mo de passe" name="motdepasse" required="required">
                                                <span class="input-group-addon"><i class="icon-s"></i></span>
                                            </div>
                                        </div>

                                        <div class="modal-footer">

                                            <button type="submit" class="btn green col-md-12" style="border-radius: 20px !important;">Se connecter</button>
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>


                    </div>


                </div>
            </div>
        </div>
    </div>
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="footer" style="margin-left: 40%" >
    <div class="footer-inner " >
        2018 &copy; TALocation
    </div>
    <div class="footer-tools">
         <span class="go-top">
         <i class="icon-angle-up"></i>
         </span>
    </div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="assets/plugins/excanvas.min.js"></script>
<script src="assets/plugins/respond.min.js"></script>
<![endif]-->


<script src="assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
<!-- END CORE PLUGINS -->

<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->

<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/scripts/app.js"></script>
<script>
    jQuery(document).ready(function() {
        App.init();

    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>