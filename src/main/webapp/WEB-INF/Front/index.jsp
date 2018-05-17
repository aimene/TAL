
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
    <title>TAL | Accueil</title>
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

    <link href="assets/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" rel="stylesheet" type="text/css"/>
    <link href="assets/plugins/bootstrap-modal/css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>

    <link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/pages/login-soft.css" rel="stylesheet" type="text/css"/>

    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <style type="text/css">


    </style>

</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed page-full-width">
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse navbar-fixed-top ">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="header-inner container">
        <!-- BEGIN LOGO -->
        <a class="navbar-brand" href="index.html"  style="padding: 7px;"  >
            <img src="assets/image/talocationlogo.png" alt="logo" style="" />
        </a>
        <a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <img src="assets/img/menu-toggler.png" alt="" />
        </a>
        <!-- END LOGO -->
        <!-- BEGIN HORIZANTAL MENU -->
        <div class="hor-menu hidden-sm hidden-xs pull-right">
            <ul class="nav navbar-nav">

                <li class="active" >
                    <a class="btn" href="/index.html">

                        Accueil
                        <span class="selected"></span>
                    </a>

                </li>
                <li >
                    <a class="btn" href="/réserver.html">

                        Réserver
                    </a>
                </li>
                <li  >
                    <a class="btn" href="/conditionsdelocation.html">Conditions de locations

                    </a>

                </li>
                <li >
                    <a class="btn" href="/noscontacter.html">Nos contacter</a>

                </li>
                <li  >
                    <a class="btn" href="/apropos.html">A propos

                    </a>

                </li>
                <li>
                    <a class="btn" data-toggle="modal" href="#responsive" >S'inscrire

                    </a>

                </li>
                <li  >
                    <a class="btn" data-toggle="modal" href="#seconnecter ">Se connecter

                    </a>

                </li>

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
<div class="container" style=" margin-top: 30px; ">
    <!-- BEGIN EMPTY PAGE SIDEBAR -->
    <div class="page-sidebar navbar-collapse collapse">
        <ul class="page-sidebar-menu visible-sm visible-xs">

            <li class="active" >
                <a class="btn">

                    Accueil
                    <span class="selected"></span>
                </a>

            </li>
            <li >
                <a class="btn">

                    Réserver
                </a>
            </li>
            <li  >
                <a class="btn">Conditions de locations

                </a>

            </li>
            <li >
                <a class="btn">Nos contacter</a>

            </li>
            <li  >
                <a class="btn">A propos

                </a>

            </li>
            <li>
                <a class="btn" data-toggle="modal" href="#responsive" >S'inscrire

                </a>

            </li>
            <li  >
                <a class="btn">Se connecter

                </a>

            </li>

        </ul>
    </div>
    <!-- END EMPTY PAGE SIDEBAR -->
    <!-- BEGIN PAGE -->

    <div class="page-content" style="">

        <div class="block-carousel">
            <div id="promo_carousel" class=" slide">

                <div class="carousel-inner" style="height:450px;">
                    <div class="active item">
                        <div class="row">
                            <div class="col-md-7 margin-bottom-20 margin-top-20 animated rotateInUpRight">
                                <h1>Bienvenue au TALocation</h1>
                                <p style="font-size: 1.5em">Location de véhicules - Recherchez, comparez et faites de vraies économies .</p>
                                <p style="font-size: 1.5em">


                                    Des tarifs privilégiés <br>

                                    ✔ ECONOMISEZ JUSQU’À 25 % <br>
                                    ✔ CHOISISSEZ VOTRE MODE DE PAIEMENT PRÉFÉRENTIEL <br>
                                    ✔ BÉNÉFICIEZ D’UN SERVICE D’EXCELLENCE <br>
                                    ✔ PAS DE FRAIS D'ANNULATION NI DE MODIFICATION Jusqu'à 48h avant la prise en charge
                                </p>
                                <a class="col-sm-offset-7  col-sm-6 btn green btn-lg m-icon-big" href="réserver.html">
                                    Rechercher
                                    <i class="m-icon-big-swapright m-icon-white"></i>
                                </a>

                            </div>
                            <div class="col-md-5 animated rotateInDownLeft">
                                <a class=""><img src="assets/image/12.jpg" alt="" class="img-responsive">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="row">
                            <div class="col-md-5 animated rotateInUpRight">
                                <a href="index.html"><img src="assets/image/car_rental_2.jpg" alt="" class="img-responsive"></a>
                            </div>
                            <div class="col-md-7 margin-bottom-20 animated rotateInDownLeft">
                                <h1>Buy Metronic Today..</h1>
                                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
                                <p>Lunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>


                                <a class="col-sm-offset-2  col-sm-6 btn red btn-lg m-icon-big" data-toggle="modal" href="#responsive">Inscrivez-vous</a> <i class="m-icon-big-swapright m-icon-white"></i>


                            </div>
                        </div>

                    </div>
                    <ol class="carousel-indicators"  style=" margin-bottom: 0px !important">
                        <li data-target="#promo_carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#promo_carousel" data-slide-to="1"></li>
                    </ol>
                </div>
                <a style=" height: 450px !important" class="carousel-control left" href="#promo_carousel" data-slide="prev">
                    <i class="m-icon-big-swapleft"></i>
                </a>
                <a style=" height: 450px !important" class="carousel-control right" href="#promo_carousel" data-slide="next">
                    <i class="m-icon-big-swapright"></i>
                </a>
                <!-- Indicators -->


            </div>
        </div>


        <div id="responsive" class="modal fade" tabindex="-1" data-width="600" style="border-radius: 30px !important;">
            <div class="modal-header" style="background-color: black !important;border-radius: 30px !important; ">
                <a class="navbar-brand" href="index.html"  style="padding: 0;margin: 0"  >
                    <img src="assets/image/talocationlogo.png" alt="logo" style="" />
                </a>

                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title" style=" color: #e02222 !important; font-weight: 1000 !important; margin-left:40%">Inscription</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">

                        <form action="#">

                            <div class="form-action top">
                                <div class="form-group">
                                    <label class="control-label">Nom :</label>
                                    <input type="text" class="form-control" placeholder="Nom" name="nom" required="required">

                                </div>
                                <div class="form-group">
                                    <label class="control-label">Prénom :</label>
                                    <input type="text" class="form-control" placeholder="Prénom" name="prénom" required="required">

                                </div>
                                <div class="form-group">
                                    <label class="c control-label">Sexe :</label>

                                    <select class="form-control" name="sexe" required="required">
                                        <option>homme</option>
                                        <option>femme</option>

                                    </select>

                                </div>
                                <div class="form-group">
                                    <label class="control-label">Numéro de permis :</label>
                                    <input type="number" class="form-control" placeholder="Numéro de premis" name="numpermis" required="required">

                                </div>
                                <div class="form-group">
                                    <label class="control-label">Numéro de téléphone :</label>
                                    <input type="text" class="form-control" placeholder="Numéro de téléphone" name="numtlp" required="required">

                                </div>
                                <div class="form-group">
                                    <label class="control-label">Email </label>
                                    <div class="input-group">

                                        <input type="email" class="form-control" placeholder="Email " name="email" required="required">
                                        <span class="input-group-addon"><i class="icon-envelope"></i></span>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label">Mot de passe</label>
                                    <div class="input-group">
                                        <input type="password" class="form-control" placeholder="Mo de passe" name="motdepasse" required="required">
                                        <span class="input-group-addon"><i class="icon-user"></i></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Pseudo :</label>
                                    <input type="text" class="form-control" placeholder="pseudo" name="pseudo" required="required">

                                </div>


                            </div>

                        </form>
                    </div>

                </div>
            </div>

            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn red">Annuler</button>
                <button type="button" class="btn green">S'inscrire</button>
            </div>
        </div>

        <div id="seconnecter" class="modal fade" tabindex="-1" data-width="500" style="border-radius: 30px !important;">
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

                        <form action="#">

                            <div class="form-group">
                                <label class="control-label">Email </label>
                                <div class="input-group">

                                    <input type="email" class="form-control" placeholder="Email " name="email" required="required">
                                    <span class="input-group-addon"><i class="icon-envelope"></i></span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label">Mot de passe</label>
                                <div class="input-group">
                                    <input type="password" class="form-control" placeholder="Mo de passe" name="motdepasse" required="required">
                                    <span class="input-group-addon"><i class="icon-user"></i></span>
                                </div>
                            </div>

                        </form>
                    </div>

                </div>
            </div>

            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn red">Annuler</button>
                <button type="button" class="btn green">Se connecter</button>
            </div>
        </div>


        <div class="row">
            <div class="col-md-12 col-sm-8 article-block">
                <h1 style="text-align: center;">Avis de la clientèle</h1>
                <div class="row">
                    <div class="col-md-4 blog-img blog-tag-data">
                        <img src="assets/img/gallery/image4.jpg" alt="" class="img-responsive">
                        <ul class="list-inline">
                            <li><i class="icon-calendar"></i> <a href="#">April 16, 2013</a></li>
                            <li><i class="icon-comments"></i> <a href="#">38 Comments</a></li>
                        </ul>
                        <ul class="list-inline blog-tags">
                            <li>
                                <i class="icon-tags"></i>
                                <a href="#">Technology</a>
                                <a href="#">Education</a>
                                <a href="#">Internet</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-8 blog-article">
                        <h3><a href="page_blog_item.html">Hello here will be some recent news..</a></h3>
                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
                        <a class="btn blue" href="page_blog_item.html">
                            Read more
                            <i class="m-icon-swapright m-icon-white"></i>
                        </a>
                    </div>
                </div>
                <hr>

            </div>

        </div>

        <!-- BEGIN LOGIN FORM -->

        <!-- END REGISTRATION FORM -->
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
<script type="text/javascript" src="../../../../../../azerty/js/main.js"></script>
<script type="text/javascript" src="../../../../../../azerty/js/jquery.min.js"></script>

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
<script src="assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
<script src="assets/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
<script type="text/javascript" src="assets/plugins/select2/select2.min.js"></script>


<script src="assets/plugins/bootstrap-modal/js/bootstrap-modalmanager.js" type="text/javascript" ></script>
<script src="assets/plugins/bootstrap-modal/js/bootstrap-modal.js" type="text/javascript" ></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/scripts/app.js"></script>
<script src="assets/scripts/login-soft.js" type="text/javascript"></script>
<script src="assets/scripts/ui-extended-modals.js"></script>

<script>
    jQuery(document).ready(function() {
        App.init();
        Login.init();
        UIExtendedModals.init();

    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>