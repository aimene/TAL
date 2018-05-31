<%@ page import="java.util.ArrayList" %>
<%@ page import="TAL.model.Vehicule" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
    <title>TAL | Réserver</title>
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

    <link rel="stylesheet" type="text/css" href="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.css" />
    <link rel="stylesheet" type="text/css" href="assets/plugins/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="assets/plugins/select2/select2_metro.css" />
    <link rel="stylesheet" type="text/css" href="assets/plugins/clockface/css/clockface.css" />
    <link rel="stylesheet" type="text/css" href="assets/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
    <link rel="stylesheet" type="text/css" href="assets/plugins/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/plugins/bootstrap-timepicker/compiled/timepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/plugins/bootstrap-colorpicker/css/colorpicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" />
    <link rel="stylesheet" type="text/css" href="assets/plugins/bootstrap-datetimepicker/css/datetimepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/plugins/jquery-multi-select/css/multi-select.css" />
    <link rel="stylesheet" type="text/css" href="assets/plugins/bootstrap-switch/static/stylesheets/bootstrap-switch-metro.css"/>
    <link rel="stylesheet" type="text/css" href="assets/plugins/jquery-tags-input/jquery.tagsinput.css" />
    <link rel="stylesheet" type="text/css" href="assets/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">

    <link rel="stylesheet" type="text/css" href="assets/plugins/select2/select2_metro.css" />
    <link rel="stylesheet" href="assets/plugins/data-tables/DT_bootstrap.css" />

    <link href="assets/plugins/ion.rangeslider/css/ion.rangeSlider.css" rel="stylesheet" type="text/css"/>
    <link href="assets/plugins/ion.rangeslider/css/ion.rangeSlider.Metronic.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/search-filter.css" rel="stylesheet" type="text/css"/>

    <link href="assets/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" rel="stylesheet" type="text/css"/>
    <link href="assets/plugins/bootstrap-modal/css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>


    <link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <style type="">
    body{
        background-color: #939393 !important;
        }
        label{
            font-weight: bolder;

            color: #2a2a2a ;margin-left: 0%;font-size: 1.4em;border-radius: 20px !important;

        }
        #filter {
            background-image: url("images/filter.jpeg");
            background-position-y: -200px;
            background-color:#a8a8a8 !important;
            padding: 20px; border-radius: 20px !important;

            background-repeat: no-repeat; background-size: cover;
        }
        select{
            background-image: inherit !important;
        }
        #entete{


            margin-top: 1%;
            margin-bottom: 1%;

            color: #d84a38;
            font-size: 2.5em;
            font-weight: bolder; ;
        }
        .td{
            color: black;
            font-size: 1.2em;
            font-weight: bolder;
        }
        .thumbnail{

            border-radius: 20px !important;
            background: radial-gradient(ellipse at center, rgba(181,189,200,1) 41%,rgba(130,140,149,1) 85%,
            rgba(130,140,149,1) 85%,rgba(130,140,149,1) 99%,rgba(130,140,149,1) 99%,rgba(181,189,200,1) 100%,rgba(181,189,200,1) 100%) !important;

            border-radius: 40px !important;

        }
        .thumbnail p {
            color: black ;
        }
        .thumbnail h4 {
            font-size: 1.4em !important;
            font-weight: bolder !important;
            color: #3f3f3f !important;
        }
        .thumbnail img{
            border-radius: 20px !important;

        }
        .caption{
            height: 130px;
            overflow-y:scroll ;
        }
    #card-affichage{
       min-height:500px !important;
        height: 500px !important;
        overflow-y:scroll ;
        background-color: whitesmoke !important;
    }
    .caption::-webkit-scrollbar-track
    {
        -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
        border-radius: 10px;
        background-color: inherit !important;
    }

    .caption::-webkit-scrollbar
    {
        border-radius: 10px;
        width: 7px;
        background-color: #F5F5F5;
    }

    .caption::-webkit-scrollbar-thumb
    {
        border-radius: 10px;
        -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
        background-color: #555;
    }
    #card-affichage::-webkit-scrollbar-track
    {
        -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
        border-radius: 10px;
        background-color: inherit !important;
    }

    #card-affichage::-webkit-scrollbar
    {
        border-radius: 10px;
        width: 7px;
        background-color: #F5F5F5;
    }

    #card-affichage::-webkit-scrollbar-thumb
    {
        border-radius: 10px;
        -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
        background-color: #555;
    }
        .reserver{
            background-color: #d84a38 !important;
            border-radius: 20px !important;
        }
        .infos{
            border-radius: 20px !important;
        }
        #affichage{
            margin-top: 1%;

        }
        .prix{
            color: #35aa47 !important;
        }
        .form-control {
            background-color: inherit !important;
            color: #3f3f3f !important;
            border-color: black !important;
            border-radius: 30px !important;


        }


    .irs-grid-text {
        color: black !important;
    }
    .irs-min, .irs-max {
        color: black !important;
    }
    .irs-line{

        box-shadow: 1px 3px 5px 0.5px #333 !important;
    }

    </style>

    <script>
        jQuery(document).ready(function() {




            $("#parheure").hide();




        });
    </script>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed page-full-width" >
<!-- BEGIN HEADER -->
<jsp:include page="navbar.jsp"></jsp:include>
<!-- END HEADER -->
<div class="clearfix"></div>
<!-- BEGIN CONTAINER -->
<div class="page-container"  style=" margin-top: -5px !important; ">
    <!-- BEGIN EMPTY PAGE SIDEBAR -->
    <div class="page-sidebar navbar-collapse collapse">
        <jsp:include page="sidebar.jsp"></jsp:include>

    </div>
    <!-- END EMPTY PAGE SIDEBAR -->
    <!-- BEGIN PAGE -->
       <div class="page-content" style="width:100%;background-color: whitesmoke !important">
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
        <div class="page-container">
            <div id="filter" style="">
            <form action="/rechercher" method="post" >
                <div class="row">
                    <p class=" form-group col-md-12" id="entete" >Trouvez le véhicule qui vous convient</p>
                </div>

                <div  class="row"   >


                        <div class="form-group col-md-2  " >
                            <label style="">Type de réservation</label>
                            <select class="form-control     "  id="typeréservation" name="type">
                                <option class="type" value="parjours" >Par jours</option>
                                <option class="type" value="parheures" >Par heures</option>
                            </select>
                        </div>


                        <div class="form-group col-md-2  ">
                            <label style="">Catégorié</label>
                            <select class="form-control    col-md-12"  id="catégorie" name="catégorie">
                                <option value="" selected > Catégorie</option>

                            </select>
                        </div>
                        <div class="form-group  col-md-2">
                            <label>Marque</label>
                            <select class="form-control  col-md-12" id="marque" name="marque">
                                <option value="" selected  > Marque</option>

                            </select>
                        </div>
                    <div class="col-sm-offset-5"></div>
                   </div>
                <div class="row">
                        <div class="form-group col-md-2">
                            <label>Modèle</label>
                            <select class="form-control  col-md-12" id="modèle" name="modèle">
                                <option value="" selected > Modèle</option>


                            </select>
                        </div>
                        <div class="form-group col-md-2">
                            <label>Energie</label>
                            <select class="form-control  col-md-12"  name="energie">
                                <option value="essence" >Essence</option>
                                <option value="diesel" >Diesel</option>
                                <option value="gpl" >Gpl</option>

                            </select>
                        </div>
                        <div class="form-group col-md-2" >
                            <label class="active" >Boite</label>
                            <select class="form-control   col-md-12"  name="boite">
                                <option value="auto" >Auto</option>
                                <option value="manuel" >Manuel</option>

                            </select>
                        </div>
                    <div class="col-sm-offset-5"></div>
                    </div>


                        <div id="parjour" class="row">
                            <div class="form-group col-sm-6" style="padding-right: 0px;">
                                <label class=" ">Date Début/fin</label>

                                <div style="padding-left: 20px; padding-right: 0;" class="input-group  date-picker input-daterange row col-sm-12 "  data-date="10/11/2012" data-date-format="dd-mm-yyyy">
                                    <input style="width: 50%;" id="dateD" type="text" class="form-control col-sm-6 " name="dateD" placeholder="yyyy-mm-dd" required autocomplete="off" >

                                    <input  style="width: 50%;" id="dateR" type="text" class="form-control col-sm-6" name="dateR" placeholder="yyyy-mm-dd"  required autocomplete="off">


                                </div>


                            </div>
                            <div class="col-sm-offset-5"></div>

                        </div>
                        <div id="parheure" class="row">
                            <div class="col-md-offset-6"></div>
                            <div class="form-group col-md-2">
                                <label class=" ">Date Début</label>
                                <div class=" ">
                                    <div class="input-group  date-picker input-daterange" data-date="10/11/2012" data-date-format="dd-mm-yyyy">

                                        <input id="dateDH" type="text" class="form-control " name="dateDH" placeholder="jj/mm/aaaa"  required autocomplete="off">

                                    </div>

                                </div>
                            </div>

                            <div class="form-group col-md-2">
                                <label class=" ">Heure Début</label>

                                <div class="input-group ">
                                    <input type="text" id="heureD" value="08:30" class="form-control " style="background-color: inherit !important" readonly="" name="heureD">

                                </div>
                          </div>
                            <div class="form-group col-md-2">
                                <label class=" ">Heure retour</label>
                                <div class="input-group ">
                                    <input type="text" id="heureR" value="08:30" class="form-control " style="background-color: inherit !important" name="heureR">

                                </div>

                            </div>
                            <div class="col-sm-offset-5"></div>


                        </div>
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class=" control-label "> Prix max</label>
                        <div class=" col-md-12" >
                            <input id="range_2" type="text" name="range_2" value="150;10000" data-type="" data-step="500" data-postfix="da" data-from="3000" data-to="90000" data-hasgrid="true"  />
                        </div>
                    </div>
                    <div class="col-sm-offset-5"></div>
                </div>





                <div class="row" style="margin-top: 2%">

                    <div class="form-group " style=" text-align: center;" >
                        <button class="btn green " type="submit" style="border-radius: 20px !important; background-color: grey; width: 50%;">Rechercher</button>
                    </div>

                </div>
            </form>
            </div>
        </div>

        <div class="page-content" id="card-affichage">




            <div class="row" id="affichage">
                <%
                if ((request.getAttribute("vehicules") != null)){
                ArrayList<Vehicule> vehicules =(ArrayList<Vehicule>)request.getAttribute("vehicules");

                if (vehicules == null){%>
                <div class="note note-danger">
                    <h4 class="block"><%= request.getAttribute("fail") %></h4>

                </div>

             <%   }else{

                    for (Vehicule v :vehicules){

                %>
                <div class="col-md-3" >
                    <form action="/réserver" method="post">
                        <div class="thumbnail" style=""><span class="badge badge-roundless badge-important" style="
                        margin-left:  30px;
                        margin-top: 5px;
                        border-radius: 17px !important;
                         ">A louer</span>
                            <span class="badge badge-roundless badge-success" style="
                                margin-left: 95px;
                                margin-top: 5px;
                                border-radius: 17px !important;
                            ">Disponible</span>
                            <img src="<% out.print(v.getImagepath());%>" alt="" class="img-responsive">
                            <div class="caption">
                                <div><p style="color: black; font-weight: bold;font-size: 1.2em">Prix par jour : <span class="pull-right">     <span style="color: red; font-weight: bold"><%= v.getPlj()%> </span> DZD </span></div>
                                <div><p style="color: black; font-weight: bold;font-size: 1.2em">Prix par heure : <span class="pull-right">   <span style="color: red; font-weight: bold"><%= v.getPlh()%> </span> DZD</span></p></div>
                                <table class="table table-bordered ">
                                    <tbody>
                                    <tr>
                                        <td class="td">Catégorie</td>
                                        <td>
                                            <div  >
                                                <%= v.getCatégorie()%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td">Marque</td>
                                        <td>
                                            <div  >
                                                <%= v.getMarque()%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td"   >Modèle</td>
                                        <td>
                                            <div  >
                                                <%= v.getModèle()%>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody></table>

                                <input type="hidden" name="idVehicule" value="<%= v.getIdVehicule()%>">
                            </div>

                            <div class="space-ten"></div>
                            <div class="btn-ground text-center">
                                <button type="button" class="btn default infos" data-target="#full-width<%= v.getIdVehicule()%>" data-toggle="modal"><i class="fa fa-search"></i>Infos</button>
                                <button type="submit" class="btn  red reserver" ><i class="fa fa-search"></i> Réserver</button>
                            </div>
                            <div class="space-ten"></div>
                        </div>
                    </form>

                    <div id="full-width<%= v.getIdVehicule()%>" class="modal container fade" tabindex="-1">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Détails</h4>
                        </div>
                        <div class="modal-body">
                          <div class="row left">
                              <div class="title"></div>
                              <div class=" col-sm-6 image ">
                                  <img src="<% out.print(v.getImagepath());%>" alt="" class="img-responsive col-sm-6"  style="width: 500px;height: 300px;">
                              </div>
                              <div class="caption" style="height: 300px">
                                  <table class="table table-bordered ">
                                      <tbody>
                                      <tr>
                                          <td class="td">Catégorie</td>
                                          <td>
                                              <div  >
                                                  <%= v.getCatégorie()%>
                                              </div>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td class="td">Marque</td>
                                          <td>
                                              <div  >
                                                  <%= v.getMarque()%>
                                              </div>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td class="td"   >Modèle</td>
                                          <td>
                                              <div  >
                                                  <%= v.getModèle()%>
                                              </div>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td class="td"   >Couleur</td>
                                          <td>
                                              <div  >
                                                  <%= v.getCouleur()%>
                                              </div>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td class="td"   >Boite</td>
                                          <td>
                                              <div  >
                                                  <%= v.getBoite()%>
                                              </div>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td class="td"   >Energie</td>
                                          <td>
                                              <div  >
                                                  <%= v.getEnergie()%>
                                              </div>
                                          </td>
                                      </tr>
                                      </tbody></table>

                                  <input type="hidden" name="idVehicule" value="<%= v.getIdVehicule()%>">
                              </div>

                          </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
                            <button type="submit" class="btn  red reserver" ><i class="fa fa-search"></i> Réserver</button>

                        </div>
                    </div>
                </div>
                <% };};};%>


            </div>


        </div>








        <!-- END PAGE -->
    </div>

</div>

<jsp:include page="footer.jsp"></jsp:include>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->

<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="assets/plugins/excanvas.min.js"></script>
<script src="assets/plugins/respond.min.js"></script>
<![endif]-->
<script src="assets/plugins/bootstrap-modal/js/bootstrap-modalmanager.js" type="text/javascript" ></script>
<script src="assets/plugins/bootstrap-modal/js/bootstrap-modal.js" type="text/javascript" ></script>


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

<script src="assets/plugins/ion.rangeslider/js/ion-rangeSlider/ion.rangeSlider.min.js"></script>
<script src="assets/scripts/ui-ion-sliders.js"></script>
<script type="text/javascript" src="assets/plugins/fuelux/js/spinner.min.js"></script>
<script type="text/javascript" src="assets/plugins/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.js"></script>
<script type="text/javascript" src="assets/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="assets/plugins/clockface/js/clockface.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap-daterangepicker/moment.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<script type="text/javascript" src="assets/plugins/jquery-inputmask/jquery.inputmask.bundle.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery.input-ip-address-control-1.0.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery-multi-select/js/jquery.multi-select.js"></script>
<script type="text/javascript" src="assets/plugins/jquery-multi-select/js/jquery.quicksearch.js"></script>
<script src="assets/plugins/jquery.pwstrength.bootstrap/src/pwstrength.js" type="text/javascript" ></script>
<script src="assets/plugins/bootstrap-switch/static/js/bootstrap-switch.min.js" type="text/javascript" ></script>
<script src="assets/plugins/jquery-tags-input/jquery.tagsinput.min.js" type="text/javascript" ></script>
<script src="assets/plugins/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript" ></script>
<script src="assets/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript" ></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/scripts/app.js"></script>
<script src="assets/scripts/form-components.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->

<!-- BEGIN PAGE LEVEL PLUGINS -->

<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="cleave/cleave.min.js"></script>
<script>
    jQuery(document).ready(function() {
        App.init();


        UIIonSliders.init();
        FormComponents.init();

        var cleave = new Cleave('#heureD', {
            delimiters: [':'],
            blocks: [2, 2],
            min:['08:00'],
            numericOnly: true

        });
        var cleave1 = new Cleave('#heureR', {
            delimiters: [':'],
            blocks: [2, 2],

            numericOnly: true

        });


        getCatégorie();

        $("#marque").click(function() {

            var catégorie = $("#catégorie").val();
            var marque = $("#marque").val();

            getModèleByCatégorieAndMarque(catégorie,marque)


        });
        $("#catégorie").click(function() {

            var catégorie = $("#catégorie").val();
            getMarqueByCatégorie(catégorie);


        });

        function getCatégorie() {
            debugger;
            $.ajax({
                type: "GET",
                url: "/getCatégorie",

                success: function (result) {
                    debugger;
                    var op =" <option value=\"\" selected > Catégorie</option>";
                    $.each(result, function (index, result) {
                        op= op+"<option value='" +result.catégorie + "'>" + result.catégorie + "</option>";
                    });
                    $("#catégorie").html(op);
                },
                error: function (response) {

                    alert('error');
                }
            });
        };

        function getMarqueByCatégorie(catégorie) {
            debugger;
            $.ajax({
                type: "GET",
                data:{'catégorie': catégorie},
                url: "/getMarqueByCatégorie",

                success: function (result) {
                    debugger;
                    var op =" <option value=\"\" selected > Marque</option>";
                    $.each(result, function (index, result) {
                        op= op+"<option value='" +result.marque + "'>" + result.marque + "</option>";
                    });
                    $("#marque").html(op);
                },
                error: function (response) {

                    alert('error marque');
                }
            });
        };

        function getModèleByCatégorieAndMarque(catégorie,marque) {
            debugger;
            $.ajax({
                type: "GET",
                data:{'catégorie': catégorie,'marque': marque},
                url: "/getModelByMarqueAndCatégorie",

                success: function (result) {
                    debugger;
                    var op =" <option value=\"\" selected > Modèle</option>";
                    $.each(result, function (index, result) {
                        op= op+"<option value='" +result.modèle + "'>" + result.modèle + "</option>";
                    });
                    $("#modèle").html(op);
                },
                error: function (response) {

                    alert('error modèle');
                }
            });
        };
        var d = new Date();

        var month = d.getMonth()+1;
        var day = d.getDate();

        var output = (day<10 ? '0' : '') + day + '-' +
            (month<10 ? '0' : '') + month + '-' +
            d.getFullYear();

        $("#dateD").val(output);
        $("#dateR").val(output);
        $("#dateDH").val(output);

        $("#typeréservation").change(function() {
            if ($(".type:selected").val()=="parheures") {
                $("#parjour").show();
                $("#parheure").show();
                $("#dateD").val(output);
                $("#dateR").val(output);
              /*  $("#dateD").attr('required','required');
                $("#dateR").attr('required','required');
                $("#dateDH").removeAttr('required');*/


                $("#parjour").hide();

            }else{
                if($(".type:selected").val()=="parjours"){

                    $("#parjour").show();
                /*    $("#dateD").removeAttr('required');
                    $("#dateR").removeAttr('required');
                    $("#dateDH").attr('required','required');*/

                    $("#dateDH").val(output);
                    $("#parheure").hide();


                }}

        });

        //  UIExtendedModals.init();



    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>