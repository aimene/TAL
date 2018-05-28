<%@ page import="TAL.model.Locataire" %>
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
    <title>TAL | Espace Locataire</title>
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

    <link rel="stylesheet" type="text/css" href="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.css" />


    <link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/pages/profile.css" rel="stylesheet" type="text/css" />

    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <style type="text/css">
        label{
            color: rgb(35,35,35) ;margin-left: 0%;font-size: 1.5em;border-radius: 20px !important;

        }
        .page-content{
            min-height: 600px !important;
            background-color: #000 !important;
        }
    </style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed page-full-width"  style=" background-color: whitesmoke !important">


<%
    HttpSession s = request.getSession();
    Locataire l = (Locataire)s.getAttribute("locataire");

%>
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse navbar-fixed-top ">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <jsp:include page="navbar.jsp"></jsp:include>
    <!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->
<div class="clearfix"></div>
<!-- BEGIN CONTAINER -->
<div class="container" style=" margin-top: 30px;"  >
    <!-- BEGIN EMPTY PAGE SIDEBAR -->
    <div class="page-sidebar navbar-collapse collapse">
        <jsp:include page="sidebar.jsp"></jsp:include>
    </div>
    <!-- END EMPTY PAGE SIDEBAR -->
    <!-- BEGIN PAGE -->
    <div class="page-content" style=" background-color: whitesmoke !important">
        <div class="container" >

            <div class="row " >



                    <div class="row ">
                        <div class="col-md-12">
                            <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                            <h3 class="page-title">
                                Espace locataire <small><% out.print(l.getNom()+" "+l.getPrenom());%></small>
                            </h3>
                            <ul class="page-breadcrumb breadcrumb">

                                <li>
                                    <i class="icon-home"></i>
                                    <a href="/index.html">Acceuil</a>
                                    <i class="icon-angle-right"></i>
                                </li>

                                <li><a href="#">Espace locataire</a></li>
                            </ul>
                            <!-- END PAGE TITLE & BREADCRUMB-->
                        </div>
                    </div>
                    <!-- END PAGE HEADER-->
                    <!-- BEGIN PAGE CONTENT-->
                    <div class="row profile">
                        <div class="col-md-12">
                            <!--BEGIN TABS-->
                            <div class="tabbable tabbable-custom tabbable-full-width">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#tab_1_1" data-toggle="tab">Espace locataire</a></li>
                                    <li><a href="#tab_1_3" data-toggle="tab"> profil</a></li>

                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tab_1_1">
                                        <div class="row">

                                            <div class="col-md-12">
                                                <div class="row">
                                                    <div class="col-md-8 profile-info">
                                                        <h1>Bienvenue <%  out.print("  "+l.getPrenom());%></h1>

                                                        <% if( request.getAttribute("ancien")!=null ){%>
                                                        <% if( !(boolean)request.getAttribute("ancien") ){%>

                                                        <div class="note note-danger">
                                                            <h4 class="block">Ancien mot de passe incorrect</h4>

                                                        </div>
                                                        <% }};%>
                                                        <% if( request.getAttribute("ancien")!=null ){%>
                                                        <% if( (boolean)request.getAttribute("ancien") ){%>

                                                        <div class="note note-success">
                                                            <h4 class="block">Votre mot de passe a été changé</h4>

                                                        </div>
                                                        <% }};%>
                                                    </div>
                                                    <!--end col-md-8-->

                                                </div>
                                                <!--end row-->
                                                <div class="tabbable tabbable-custom tabbable-custom-profile" style="padding: 20px;">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tab_1_11" data-toggle="tab">Réservations</a></li>
                                                        <li ><a href="#tab_1_13" data-toggle="tab">Locations</a></li>
                                                        <li ><a href="#tab_1_22" data-toggle="tab">Notifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active"  id="tab_1_11">
                                                            <div class="portlet-body">
                                                                <table class="table table-striped table-bordered table-advance table-hover">
                                                                    <thead>
                                                                    <tr>
                                                                        <th><i class="icon-briefcase"></i> Company</th>
                                                                        <th class="hidden-xs"><i class="icon-question-sign"></i> Descrition</th>
                                                                        <th><i class="icon-bookmark"></i> Amount</th>
                                                                        <th></th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td><a href="#">Pixel Ltd</a></td>
                                                                        <td class="hidden-xs">Server hardware purchase</td>
                                                                        <td>52560.10$ <span class="label label-success label-sm">Paid</span></td>
                                                                        <td><a class="btn default btn-xs green-stripe" href="#">View</a></td>
                                                                    </tr>

                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div >

                                                        <div class="tab-pane"  id="tab_1_13">
                                                            <div class="portlet-body">
                                                                <table class="table table-striped table-bordered table-advance table-hover">
                                                                    <thead>
                                                                    <tr>
                                                                        <th><i class="icon-briefcase"></i> Company</th>
                                                                        <th class="hidden-xs"><i class="icon-question-sign"></i> Descrition</th>
                                                                        <th><i class="icon-bookmark"></i> Amount</th>
                                                                        <th></th>
                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td><a href="#">Pixel Ltd</a></td>
                                                                        <td class="hidden-xs">Server hardware purchase</td>
                                                                        <td>52560.10$ <span class="label label-success label-sm">Paid</span></td>
                                                                        <td><a class="btn default btn-xs green-stripe" href="#">View</a></td>
                                                                    </tr>

                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <!--tab-pane-->
                                                        <div class="tab-pane" id="tab_1_22">
                                                            <div class="tab-pane active" id="tab_1_1_1">
                                                                <div class="scroller" data-height="290px" data-always-visible="1" data-rail-visible1="1">
                                                                    <ul class="feeds">
                                                                        <li>
                                                                            <div class="col1">
                                                                                <div class="cont">
                                                                                    <div class="cont-col1">
                                                                                        <div class="label label-success">
                                                                                            <i class="icon-bell"></i>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="cont-col2">
                                                                                        <div class="desc">
                                                                                            You have 4 pending tasks.
                                                                                            <span class="label label-danger label-sm">
                                                               Take action
                                                               <i class="icon-share-alt"></i>
                                                               </span>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col2">
                                                                                <div class="date">
                                                                                    Just now
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">
                                                                                <div class="col1">
                                                                                    <div class="cont">
                                                                                        <div class="cont-col1">
                                                                                            <div class="label label-success">
                                                                                                <i class="icon-bell"></i>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="cont-col2">
                                                                                            <div class="desc">
                                                                                                New version v1.4 just lunched!
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col2">
                                                                                    <div class="date">
                                                                                        20 mins
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </li>

                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--tab-pane-->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane" id="tab_1_3">
                                        <div class="row profile-account">
                                            <div class="col-md-3">
                                                <ul class="ver-inline-menu tabbable margin-bottom-10">
                                                    <li class="active">
                                                        <a data-toggle="tab" href="#tab_1-1">
                                                            <i class="icon-cog"></i>
                                                            Informations personnelles
                                                        </a>
                                                        <span class="after"></span>
                                                    </li>
                                                    <li ><a data-toggle="tab" href="#tab_2-2"><i class="icon-picture"></i> Changer photo de profil</a></li>
                                                    <li ><a data-toggle="tab" href="#tab_3-3"><i class="icon-lock"></i> Changer mot de passe</a></li>
                                                </ul>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="tab-content">
                                                    <div id="tab_1-1" class="tab-pane active">
                                                        <form action="/modifierinfos" method="post" ModelAttribute="locataire">

                                                            <div class="form-action top">
                                                                <div class="form-group">
                                                                    <label class="control-label">Nom :</label>
                                                                    <input type="text" class="form-control" placeholder="Nom" name="nom" required="required" value="<% out.print(l.getNom());%>">

                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">Prénom :</label>
                                                                    <input type="text" class="form-control" placeholder="Prénom" name="prenom" required="required" value="<% out.print(l.getPrenom());%>">

                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">Sexe :</label>

                                                                    <select class="form-control" name="sexe" required="required" value="<% out.print(l.getSexe());%>">
                                                                        <option>homme</option>
                                                                        <option>femme</option>

                                                                    </select>

                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">Date de naissance:</label>
                                                                    <input type="date" class="form-control" placeholder="Date de naissance" name="dateNaissance" required="required" value="<% out.print(l.getDateNaissance());%>">

                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">Numéro de permis :</label>
                                                                    <input type="number" class="form-control" placeholder="Numéro de premis" name="numPermis" required="required" value="<% out.print(l.getNumPermis());%>">

                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">Numéro de téléphone :</label>
                                                                    <input type="text" class="form-control" placeholder="Numéro de téléphone" name="numTlp" required="required" value="<% out.print(l.getNumTlp());%>">

                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label">Email </label>
                                                                    <div class="input-group">

                                                                        <input type="email" class="form-control" placeholder="Email " name="email" required="required" value="<% out.print(l.getEmail());%>">
                                                                        <span class="input-group-addon"><i class="icon-envelope"></i></span>
                                                                    </div>
                                                                </div>


                                                                <div class="form-group">
                                                                    <label class="control-label">Pseudo :</label>
                                                                    <input type="text" class="form-control" placeholder="pseudo" name="pseudo" required="required" value="<% out.print(l.getPseudo());%>">

                                                                </div>


                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="submit" class="btn green col-md-12" style="border-radius: 20px !important">Modifier</button>
                                                            </div>
                                                        </form>

                                                    </div>
                                                    <div id="tab_2-2" class="tab-pane">
                                                        <<label for=""> Changer votre photo de profil</label>
                                                        <form action="#" role="form">
                                                            <div class="form-group">
                                                                <div class="thumbnail" style="width: 310px;">
                                                                    <img src="http://www.placehold.it/310x170/EFEFEF/AAAAAA&amp;text=no+image" alt="">
                                                                </div>
                                                                <div class="margin-top-10 fileupload fileupload-new" data-provides="fileupload">
                                                                    <div class="input-group input-group-fixed">
                                                <span class="input-group-btn">
                                                <span class="uneditable-input">
                                                <i class="icon-file fileupload-exists"></i>
                                                <span class="fileupload-preview"></span>
                                                </span>
                                                </span>
                                                                        <span class="btn default btn-file">
                                                <span class="fileupload-new"><i class="icon-paper-clip"></i> Choisir </span>
                                                <span class="fileupload-exists"><i class="icon-undo"></i> Changer</span>
                                                <input type="file" class="default" />
                                                </span>
                                                                        <a href="#" class="btn red fileupload-exists" data-dismiss="fileupload"><i class="icon-trash"></i> Retirer</a>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="margin-top-10">
                                                                <a href="#" class="btn green">Entregistrer</a>
                                                                <a href="#" class="btn default">Annuler</a>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <div id="tab_3-3" class="tab-pane">
                                                        <form action="/modifiermotdepasse" method="post">
                                                            <div class="form-group" id="div">
                                                                <label class="control-label">Mot de passe actuel</label>
                                                                <input type="password" class="form-control" id="motdepasse" name="ancien" />
                                                            </div>
                                                            <div class="form-group" id="div1">
                                                                <label class="control-label">Nouveau mot de passe</label>
                                                                <input type="password" class="form-control" id="motdepasse1" name="nouveau" />
                                                            </div>
                                                            <div class="form-group" id="div2">
                                                                <label class="control-label">Confirmer mot de passe</label>
                                                                <input type="password" class="form-control" id="motdepasse2">
                                                            </div>

                                                            <div class="margin-top-10">
                                                                <button type="submit" class="btn green" id="changer">Changer</button>
                                                                <a type="reset" class="btn default">Annuler</a>
                                                            </div>
                                                        </form>
                                                    </div>

                                                </div>
                                            </div>
                                            <!--end col-md-9-->
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--END TABS-->
                        </div>
                    </div>
                    <!-- END PAGE CONTENT-->

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
<script type="text/javascript" src="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.js"></script>

<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->

<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/scripts/app.js"></script>
<script>
    jQuery(document).ready(function() {
        App.init();

        $("#motdepasse2").keyup(function(){
            if ($("#motdepasse1").val()==$("#motdepasse2").val()){
                $("#div2").addClass("has-success");
                $("#div2").removeClass("has-error");
                $("#div1").addClass("has-success");
                $("#div1").removeClass("has-error");
                $("#changer").removeAttr('disabled');
            }else{
                $("#div2").removeClass("has-success");
                $("#div2").addClass("has-error");
                $("#div1").removeClass("has-success");
                $("#div1").addClass("has-error");
                $("#changer").attr('disabled','disabled');

            }
        });

    });
</script>

<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>