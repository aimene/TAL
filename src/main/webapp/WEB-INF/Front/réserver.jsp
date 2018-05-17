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

        }
        label{
            color: #eeedf2 ;margin-left: 0%;font-size: 1.5em;border-radius: 20px !important;

        }
        #filter {
            background-color: rgb(16,16,16) !important;
            padding: 20px; border-radius: 20px !important;

            background-repeat: no-repeat; background-size: cover;
        }
        select{
            background-image: inherit !important;
        }
        #entete{

            margin-left: 20%;
            margin-top: 1%;
            margin-bottom: 3%;

            color: #d84a38;
            font-size: 2.5em;
            font-weight: bolder; ;
        }
        .thumbnail{
            background-color: rgb(16,16,16) !important;
            border-radius: 20px !important;


        }
        .thumbnail p {
            color: #eeedf2 ;font-size: 1.2em;
        }
        .thumbnail h4 {
            font-size: 1.4em !important;
            font-weight: bolder !important;
            color: #d84a38 !important;
        }
        .thumbnail img{
            border-radius: 20px !important;

        }
        .reserver{
            background-color: #d84a38 !important;
            border-radius: 20px !important;
        }
        #affichage{
            margin-top: 1%;

        }
        #prix{
            color: #35aa47 !important;
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
        <div class="hor-menu hidden-sm hidden-xs pull-right">
            <ul class="nav navbar-nav">

                <li  >
                    <a class="btn">

                        Accueil

                    </a>

                </li>
                <li class="active" >
                    <a class="btn">

                        Réserver
                    </a>
                    <span class="selected"></span>
                </li>
                <li  >
                    <a class="btn">Conditions de locations

                    </a>

                </li>
                <li >
                    <a class="btn" href="noscontacter.html">Nos contacter</a>

                </li>
                <li  >
                    <a class="btn" href="apropos.html">A propos

                    </a>

                </li>
                <li>
                    <a class="btn" >S'inscrire

                    </a>

                </li>
                <li  >
                    <a class="btn">Se connecter

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
<div class="container"  style=" margin-top: 30px; ">
    <!-- BEGIN EMPTY PAGE SIDEBAR -->
    <div class="page-sidebar navbar-collapse collapse">
        <ul class="page-sidebar-menu visible-sm visible-xs">

            <li  >
                <a class="btn">

                    Accueil

                </a>

            </li>
            <li class="active" >
                <a class="btn">

                    Réserver
                </a>
                <span class="selected"></span>
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
                <a class="btn" >S'inscrire

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
    <div class="page-content" style="background-color: #eeedf2 !important;">
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
        <div class="container">

            <div id="filter" style="">
                <div class="row">
                    <p class=" form-group col-md-12" id="entete" >Trouvez le véhicule qui vous convient</p>
                </div>

                <div  id="row"   >

                    <div class="form-group   " >
                        <label style="">Type de réservation</label>
                        <select class="form-control btn red    col-md-12"  id="typeréservation">
                            <option class="type" value="parjours" >Par jours</option>
                            <option class="type" value="parheures" >Par heures</option>
                        </select>
                    </div>

                </div>

                <div class="row">
                    <div class="form-group col-md-2  ">
                        <label style="">Catégorié</label>
                        <select class="form-control btn red    col-md-12" >
                            <option >Option 1</option>

                        </select>
                    </div>
                    <div class="form-group  col-md-2">
                        <label>Marque</label>
                        <select class="form-control btn red col-md-12" >
                            <option>Option 1</option>

                        </select>
                    </div>
                    <div class="form-group col-md-2">
                        <label>Modèle</label>
                        <select class="form-control btn red  col-md-12" >
                            <option>Option 1</option>

                        </select>
                    </div>
                    <div class="form-group col-md-2">
                        <label>Energie</label>
                        <select class="form-control btn red  col-md-12" >
                            <option>Option 1</option>

                        </select>
                    </div>
                    <div class="form-group col-md-2" >
                        <label class="active" >Boite</label>
                        <select class="form-control btn red   col-md-12" >
                            <option>Option 1</option>

                        </select>
                    </div>

                    <div class="form-group col-md-2 ">
                        <label class=" control-label "> Prix max</label>
                        <div class=" col-md-12" >
                            <input id="range_2" type="text" name="range_2" value="1000;10000" data-type="" data-step="500" data-postfix="da" data-from="3000" data-to="90000" data-hasgrid="true"  />
                        </div>
                    </div>

                </div>


                <div id="parjour" class="row">
                    <div class="form-group col-md-12">
                        <label class=" ">Date Début/fin</label>

                        <div class="input-group  date-picker input-daterange  "  data-date="10/11/2012" data-date-format="dd/mm/yyyy">
                            <span class="input-group-addon">de</span>
                            <input  type="text" class="form-control btn red " name="from" placeholder="jj/mm/aaaa">

                            <span class="input-group-addon">à</span>
                            <input type="text" class="form-control btn red" name="to" placeholder="jj/mm/aaaa">


                        </div>


                    </div>

                </div>
                <div id="parheure" class="row">

                    <div class="form-group col-md-4">
                        <label class=" ">Date Début</label>
                        <div class=" ">
                            <div class="input-group  date-picker input-daterange" data-date="10/11/2012" data-date-format="mm/dd/yyyy">

                                <input type="text" class="form-control btn red" name="from" placeholder="jj/mm/aaaa">
                                <span class="input-group-btn">
                                        <button class="btn default" type="button"><i class="icon-calendar"></i></button>
                                        </span>
                            </div>

                        </div>
                    </div>

                    <div class="form-group col-md-4">
                        <label class=" ">Heure Début</label>




                        <div class="input-group ">
                            <input type="text" id="clockface_2" value="08:30" class="form-control btn red" style="background-color: #d84a38 !important" readonly="">
                            <span class="input-group-btn">
                                        <button class="btn default" type="button"  id="clockface_2_toggle"><i class="icon-time"></i></button>
                                        </span>
                        </div>




                    </div>
                    <div class="form-group col-md-4">
                        <label class=" ">Nombre d'heures </label>


                        <div class="input-group ">
                            <input type="number"  class=" form-control  btn red col-md-12"   >

                        </div>
                        <
                    </div>


                </div>

                <div class="row" style="margin-top: 2%">

                    <div class="form-group " style=" text-align: center;" >
                        <div class="btn green offset " style="border-radius: 20px !important; background-color: grey; width: 50%;">Rechercher</div>
                    </div>

                </div>

            </div>


            <div class="row" id="affichage">
                <div class="col-md-4" >
                    <div class="thumbnail" style="">
                        <img src="http://tech.firstpost.com/wp-content/uploads/2014/09/Apple_iPhone6_Reuters.jpg" alt="" class="img-responsive">
                        <div class="caption">
                            <h4 class="pull-right" id="prix">$700.99</h4>
                            <h4 >Mobile Product</h4>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                        </div>

                        <div class="space-ten"></div>
                        <div class="btn-ground text-center">

                            <button type="button" class="btn btn green reserver" data-target="#full-width" data-toggle="modal"><i class="fa fa-search"></i> Réserver</button>
                        </div>
                        <div class="space-ten"></div>
                    </div>
                </div>


            </div>


        </div>
        <div id="full-width" class="modal container fade" tabindex="-1">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">Full Width</h4>
            </div>
            <div class="modal-body">
                <p>This modal will resize itself to the same dimensions as the container class.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sollicitudin ipsum ac ante fermentum suscipit. In ac augue non purus accumsan lobortis id sed nibh. Nunc egestas hendrerit ipsum, et porttitor augue volutpat non. Aliquam erat volutpat. Vestibulum scelerisque lobortis pulvinar. Aenean hendrerit risus neque, eget tincidunt leo. Vestibulum est tortor, commodo nec cursus nec, vestibulum vel nibh. Morbi elit magna, ornare placerat euismod semper, dignissim vel odio. Phasellus elementum quam eu ipsum euismod pretium.</p>
            </div>
            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
                <button type="button" class="btn blue">Save changes</button>
            </div>
        </div>


        <div class="row">


        </div>




        <!-- END PAGE -->
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

<script>
    jQuery(document).ready(function() {
        App.init();
        UIIonSliders.init();
        FormComponents.init();




        $("#typeréservation").change(function() {
            if ($(".type:selected").val()=="parheures") {
                $("#parheure").show();
                $("#parjour").hide();
            }  else {
                $("#parjour").show();
                $("#parheure").hide();


            }

        });
        UIExtendedModals.init();



    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>