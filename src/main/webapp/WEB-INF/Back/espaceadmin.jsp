<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en" class="no-js"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title>TAL | Espace admin </title>
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

    <style>
      .form-group label{
            font-size: 1.5em;
            font-weight: bold;
        }
    </style>


</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed page-full-width">
<!-- BEGIN HEADER -->
<jsp:include page="navbar.jsp"></jsp:include>

<!-- END HEADER -->
<div class="clearfix"></div>
<!-- BEGIN CONTAINER -->
<div class="page-container" >



    <!-- END PAGE -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="footer">
    <div class="footer-inner">
        2013 &copy; Metronic by keenthemes.
    </div>
    <div class="footer-tools">
         <span class="go-top">
         <i class="icon-angle-up"></i>
         </span>
    </div>
</div>

<script type="text/javascript"> jQuery(document).ready(function() {
    App.init();
    debugger;
  //  $("#ajoutervéhicule").hide();
    $("#ajouter").click(function() {


        $("#gérerfinlocation").hide();
        $("#listcatégorie").hide();
        $("#listcatégorie").hide();
        $("#ajoutervéhicule").show();

    });

    $("#listedesvehicules").click(function() {

        $.ajax({
            type: "get",
            url: "/backend/listedesvehicules",

            dataType: "html",
            success: function (result) {
                debugger;

                $("#ajoutervéhicule").hide();
                $("#supprimervéhicule").hide();
                $("#gérerfinlocation").hide();


                $("#afficherlistedesvehicules").html(result);

            },
            error: function (response) {
                debugger;
                alert('error'); }
        });
    });



    $("#ajoutervehicule").click(function() {

        var categorie = $("#catégorie option:selected").val();
        console.log(categorie);
        var marque =$("#marque").val();
        console.log(marque);
        var modele =$("#modèle").val();
        console.log(modele);
        var matricule =$("#matricule").val();
        console.log(matricule);
        var energie=$("#energie option:selected").val();
        var puissance=$("#puissance").val();
        console.log(energie);
        var couleur=$("#couleur").val();
        console.log(couleur);
        var boite=$("#boite option:selected").val();
        console.log(boite);
        var plh=$("#plh").val();
        var plj =$("#plj").val();
        var klm = $("#klm").val();
        var etat = $("#etat").val();
        console.log(plj);

        $.ajax({
            type: "get",
            url: "/backend/ajoutervehicule",
            data : {"categorie":categorie,"marque":marque,"modele":modele,"matricule":matricule,"energie":energie,
                "couleur":couleur,"boite":boite,"plh":plh,"plj":plj,"klm":klm,"etat":etat,"puissance":puissance},
            dataType: "html",
            success: function (result) {
                debugger;

                $("#ajoutervéhicule").hide();
                $("#supprimervéhicule").hide();
                $("#gérerfinlocation").hide();
                $("#listcatégorie").hide();


                $("#afficherlistedesvehicules").html(result);

            },
            error: function (response) {
                debugger;
                alert('error'); }
        });
    });




});
</script>

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


</body>
<!-- END BODY -->
</html>