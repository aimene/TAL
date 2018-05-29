<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en" class="no-js"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title>TAL | Gestionnaires</title>
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
    <link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>


    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed page-full-width">
<!-- BEGIN HEADER -->
<jsp:include page="../../navbar.jsp"></jsp:include>
<!-- END HEADER -->
<div class="clearfix"></div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN EMPTY PAGE SIDEBAR -->
    <div class="page-sidebar navbar-collapse collapse">
        <ul class="page-sidebar-menu visible-sm visible-xs">




        </ul>
    </div>
    <!-- END EMPTY PAGE SIDEBAR -->
    <!-- BEGIN PAGE -->
    <div class="page-content">
        <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
        <div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title">Modal title</h4>
                    </div>
                    <div class="modal-body">
                        Widget settings form goes here
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn blue">Save changes</button>
                        <button type="button" class="btn default" data-dismiss="modal">Close</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
        <!-- BEGIN STYLE CUSTOMIZER -->

        <!-- END STYLE CUSTOMIZER -->
        <!-- BEGIN PAGE CONTENT-->

        <div class="row">
            <div class="col-md-3 sidebar-content ">

                <!-- BEGIN PORTLET-->
                <div class="portlet box yellow">
                    <div class="portlet-title line">
                        <div class="caption"><i class="icon-comments"></i>Ajouter Gestionnaire</div>
                        <div class="tools">
                            <a href="javascript:;" class="collapse"></a>
                            <a href="#portlet-config" data-toggle="modal" class="config"></a>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <%if (request.getAttribute("ajoutgestionnaire")!=null){
                            if ((boolean)request.getAttribute("ajoutgestionnaire")){
                               %> <h1 id="erreur" style="color: green"> Gestionnaire ajouté</h1><%
                            }else{
                                %> <h1 id="erreur" style="color: red">pseudo ou email  déja exist</h1><%
                            }
                        }%>
                        <form action="/ajoutergestionnaire" method="post" ModelAttribute="utilisateur">
                            <div class="form-group">
                                <div class="input-icon">
                                    <i class="icon-font"></i>
                                    <input name="nom" type="text" class="form-control" placeholder="Nom" required >
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-icon">
                                    <i class="icon-font"></i>
                                    <input name="prenom" type="text" class="form-control" placeholder="Prénom" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-icon">
                                    <i class="icon-user"></i>
                                    <input name="pseudo" type="text" class="form-control" placeholder="Pseudo" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class=" control-label">Type gestionnaire</label>
                                <div class="">
                                    <select name="type" class="form-control  input">
                                        <option value="agence" >Agence</option>
                                        <option value="depot" >Dépot</option>

                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-icon">
                                    <i class="icon-envelope"></i>
                                    <select id="idDepot"  name="idDepot"    placeholder="Numéro de dépot" required class="form-control  input">

                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-icon">
                                    <i class="icon-envelope"></i>
                                    <input   name="email"  type="email" class="form-control" placeholder="Email" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-icon">
                                    <i class="icon-lock"></i>
                                    <input  name="motdepasse" type="password" class="form-control" placeholder="Mot de passe" required>
                                </div>
                            </div>

                            <button  type="submit" class="col-md-12 btn red">Ajouter</button>
                        </form>
                    </div>
                </div>
                <!-- END PORTLET-->
            </div>
            <div class="col-md-9">


                <div class="clearfix"></div>
                <div class="row search-form-default">
                    <div class="col-md-12">
                        <form class="form-inline" action="#">
                            <div class="input-group">
                                <div class="input-cont">
                                    <input id="myInput" type="text" placeholder="Search..." class="form-control">
                                </div>
                                <span class="input-group-btn">
                                    <button type="button" class="btn green">
                                    Search &nbsp;
                                    <i class="m-icon-swapright m-icon-white"></i>
                                    </button>
                                    </span>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- BEGIN PAGE HEADER-->
                <div class="row">
                    <div class="col-md-12">
                      <div id="listgestionnairesdépot">

                      </div>
                </div>
                </div>
                <!-- END PAGE HEADER-->
                <!-- BEGIN PAGE CONTENT-->

                <div class="row">
                    <div class="col-md-12">
                       <div id="listgestionnairesagence">

                       </div>
                    </div>

                </div>

        </div>
        <!-- END PAGE CONTENT-->
    </div>
    <!-- END PAGE -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="footer">
    <div class="footer-inner">
        2018 &copy; TALocation.
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

    $.ajax({
       type: "get",
        url: "/backend/listgestionnairesdépot",

      dataType: "html",
        success: function (result) {

        $("#listgestionnairesdépot").empty();
        $("#listgestionnairesdépot").html(result);

    },
    error: function (response) {
        debugger;
        alert('error'); }

    });

    $.ajax({
        type: "get",
        url: "/backend/listgestionnairesagence",

        dataType: "html",
        success: function (result) {

            $("#listgestionnairesagence").empty();
            $("#listgestionnairesagence").html(result);

        },
        error: function (response) {
            debugger;
            alert('error'); }
    });



   /* $("#ajouter").click(function() {

        var nom = $("#nom").val();
        console.log(nom);
        var prenom =$("#prenom").val();
        var email =$("#email").val();
        var pseudo =$("#pseudo").val();
        var motdepasse=$("#motdepasse").val();
        var type=$("[name='type']:checked").val();
      if(nom==""||prenom==""||email==""||pseudo==""||motdepasse=="")  {
          $("#erreur").html("SVP! Entrez toutes les informations demendées")
      }else{


             $.ajax({
                type: "post",
                url: "/backend/ajoutergestionnaire",
                data : {"nom":nom,"prenom":prenom,"email":email,"pseudo":pseudo,"motdepasse":motdepasse,"type":type},
                dataType: "html",
                success: function (result) {
                    if(type=="dépot"){
                        $("#listgestionnairesdépot").empty();
                        $("#listgestionnairesdépot").html(result);
                    }else{

                        $("#listgestionnairesagence").empty();

                        $("#listgestionnairesagence").html(result);
                    }
         },
                error: function (response) {
                    debugger;
                    alert('error'); }
            });
            });*/
});
</script>

    <script type="text/javascript" src="javascript/Back.js">


    </script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#myInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
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