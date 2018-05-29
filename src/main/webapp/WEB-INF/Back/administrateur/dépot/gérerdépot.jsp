<%@ page import="TAL.model.Vehicule" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="TAL.model.Depot" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en" class="no-js"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title>TAL | Dépot </title>
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

    <link href="assets/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" rel="stylesheet" type="text/css"/>
    <link href="assets/plugins/bootstrap-modal/css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>

    <link rel="stylesheet" type="text/css" href="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.css" />


    <style>
        .form-group label{
            font-size: 1.5em;
            font-weight: bold;
        }



            .modal.container {
                width: 500px !important;
                margin-left: -285px !important;
            }
        .x.modal.fade.in {
            top: 0 !important;
        }

    </style>


</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed page-full-width">
<!-- BEGIN HEADER -->
<jsp:include page="../../navbar.jsp"></jsp:include>

<!-- END HEADER -->
<div class="clearfix"></div>
<!-- BEGIN CONTAINER -->
<div class="page-container" >
    <% if (request.getAttribute("cattype")!=null){%>
    <input type="hidden" id="loadList" value="<%out.print(request.getAttribute("cattype")); %>">
    <%};%>
    <!-- BEGIN EMPTY PAGE SIDEBAR -->
    <div class="row col-md-12" style="margin: 0;padding: 0;">
        <!-- BEGIN SIDEBAR MENU -->


        <a  href="/listdepot" class="start col-md-6  btn red"  id="listedesvehicules">

            <i class=" icon-list-ul"></i>
            <span class="title">Liste des dépot</span>

        </a>

        <a class="start col-md-6 btn red" id="ajouter" data-target="#responsive"
           data-toggle="modal">


                    <span  >
               <i class="icon-plus"></i>   </i> Ajouter dépot</span>
        </a>




        <!-- END SIDEBAR MENU -->
    </div>
    <div class="row col-md-12" >
        <!-- BEGIN SIDEBAR MENU -->



        <!-- END SIDEBAR MENU -->
    </div>

    <!-- END EMPTY PAGE SIDEBAR -->
    <!-- BEGIN PAGE -->
    <div class="page-content">

        <div class="row">


            <div class="col-md-12">
                <div class="message">
                    <% if( request.getAttribute("supprimerDepot")!=null ){%>
                    <% if( (boolean)request.getAttribute("supprimerDepot") ){%>

                    <div class="note note-success">
                        <h4 class="block">Dépot a été supprimé</h4>

                    </div>
                    <% }else{%>
                    <div class="note note-danger">
                        <h4 class="block">Vous pouvez pas supprimer ce dépot car il n'est pa vide</h4>

                    </div>
                    <% }};%>
                </div>

                <div id="afficherlistedesdépots">
                    <% ArrayList<Depot> depots = (ArrayList<Depot>) request.getAttribute("dépotslist");
                    if (depots==null){

                    }else{%>
                    <div class="portlet box red">
                        <div class="portlet-title">
                            <div class="caption"><i class="icon-globe"></i>Listes des dépots</div>
                            <div class="tools">
                                <a href="javascript:;" class="reload"></a>
                                <a href="javascript:;" class="remove"></a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <table class="table table-striped table-bordered table-hover" id="sample_1">
                                <thead>
                                <tr>
                                    <th class="hidden">id</th>
                                    <th>Adresse Dépot</th>
                                    <th>Capacité</th>
                                    <th>Action</th>

                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    for (Depot d : depots){%>
                                <tr>
                                    <td class="id hidden" value="<%out.print(d.getIdDepot());%>"><%out.print(d.getIdDepot());%></td>
                                    <td class="adresse"><%out.print(d.getAdresse());%></td>
                                    <td class="capacité"><%out.print(d.getCapacite());%></td>
                                    <td class="vehicules">
                                       <button class="etat btn yellow" data-toggle="modal" href="#myM<%out.print(d.getIdDepot());%>"><span class="">Etablir etat </span></button>


                                        <div id="myM<%out.print(d.getIdDepot());%>" class="x modal fade" tabindex="-1" aria-hidden="true"
                                                style="height: 0px !important;">
                                            <div class="modal-dialog" style="    width: 1200px !important;    margin-left: -350px !important;">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                                        <h4 class="modal-title">Listes des véhicules de ce dépot</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="scroller" style="height:300px" data-always-visible="1" data-rail-visible1="1">
                                                            <div class="row">
                                                                <div class="Listesdesvehiculesdépot"></div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" data-dismiss="modal" class="btn default">Close</button>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                            <a class="bloquer btn red" data-toggle="modal" href="#Supprimer<%out.print(d.getIdDepot());%>"> <i class="icon-ban-circle"></i>Supprimer</a>

                                        <div id="Supprimer<%out.print(d.getIdDepot());%>" class="modal fade"
                                             tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true" style="display: none;" >

                                            <form action="/supprimerdepot" method="post">
                                                <input type="hidden" name="idDepot" value="<%out.print(d.getIdDepot());%>">
                                                <div class="modal-dialog" style="padding: 0 !important">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                                            <h4 class="modal-title">Confirmation</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <h4 class="modal-title">Voulez vous supprimmer ce vehicule</h4>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="submit" class="btn green " >Supprimer</button>
                                                            <button class="btn default" data-dismiss="modal" aria-hidden="true">Close</button>

                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </td>

                                </tr>
                                    <%};
                                };%>



                                </tbody>
                            </table>
                        </div>
                    </div>




                </div>


                <div id="bassif">

                   <div id="responsive" class="modal container fade col-sm-6" tabindex="-1" style="">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title " style="text-align: center;font-size: 2em;font-weight:bolder !important;color: darkred">Ajouter un Dépot</h4>
                    </div>
                    <div class="modal-body">


                        <h4></h4>
                        <form action="/ajouterdepot" method="post"  ModelAttribute="depot" >
                            <div class="row  " style="margin-right:  10px">
                                <div class="form-group  ">
                                    <label class=" col-md-offset-3 label label-md label-warning">Adresse</label>

                                    <input id="Adresse" class="form-control input" name="adresse" placeholder="adresse">
                                </div>
                                <div class="form-group ">
                                    <div class="input-icon ">
                                        <label class=" col-md-offset-3 label label-md label-warning">Capacité</label>
                                        <i class="icon-font"></i>
                                        <input id="capacite" name="capacite" type="text" class="form-control " placeholder="capacité" required >
                                    </div>
                                </div>



                            <div class="modal-footer">
                                <button type="submit" class=" ajoutervehicule col-md-12 btn red">Ajouter</button>
                            </div>
                        </div>

                        </form>





                </div>
            </div>


                </div>



        </div>

    </div>
</div>

<!-- END PAGE CONTENT-->

<!-- END PAGE -->

<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="footer">
    <div class="footer-inner">
        2018 &copy;TALocaation.
    </div>
    <div class="footer-tools">
         <span class="go-top">
         <i class="icon-angle-up"></i>
         </span>
    </div>
</div>





<script type="text/javascript" >
    jQuery(document).ready(function() {
        App.init();
        debugger;
    $(".etat").click(function() {
        debugger;
        var idDepot= $(this).closest("tr").find(".id").text();        debugger;
        console.log(idDepot);
        $.ajax({
            type: "get",
            data: {"id":idDepot},
            url: "/listeVehiculesDépot",

            dataType: "html",
            success: function (result) {
                debugger;
                // $("#menu2").show();
                $(".Listesdesvehiculesdépot").html(result);

            },
            error: function (response) {
                debugger;
                alert('error : Listesdesvehiculesdépot'); }
        });  });




    });

</script>

<script src="assets/plugins/excanvas.min.js"></script>
<script src="assets/plugins/respond.min.js"></script>
<![endif]-->

<script src="assets/scripts/app.js"></script>
<script src="assets/scripts/ui-extended-modals.js"></script>
<script src="assets/scripts/form-components.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.js"></script>

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
<script src="assets/plugins/bootstrap-modal/js/bootstrap-modalmanager.js" type="text/javascript" ></script>
<script src="assets/plugins/bootstrap-modal/js/bootstrap-modal.js" type="text/javascript" ></script>









</body>
<!-- END BODY -->
</html>