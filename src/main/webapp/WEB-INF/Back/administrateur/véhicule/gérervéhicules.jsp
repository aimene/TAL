<%@ page import="TAL.model.Vehicule" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en" class="no-js"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title>TAL | gérer véhicules </title>
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


            <a class="start col-md-6  btn yellow"  id="listedesvehicules">

                    <i class=" icon-list-ul"></i>
                    <span class="title">Liste des véhicules</span>

            </a>

            <a class="start col-md-6 btn yellow" id="ajouter" data-target="#full-width"
               data-toggle="modal">


                    <span  >
               <i class="icon-plus"></i>   </i> Ajouter véhicule</span>
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
                    <% if( request.getAttribute("supprimerVehicule")!=null ){%>
                    <% if( (boolean)request.getAttribute("supprimerVehicule") ){%>

                    <div class="note note-success">
                        <h4 class="block">Ce vehicule a été supprimé</h4>

                    </div>
                    <% }else{%>
                    <div class="note note-danger">
                        <h4 class="block">Vous pouvez pas supprimer ce vehicule car il n'est pas libre</h4>

                    </div>
                    <% }};%>
                </div>



                <div class="success">
                    <% if( request.getAttribute("success")!=null ){%>
                    <% if( (boolean)request.getAttribute("success") ){%>
                   <% response.setContentType("text/html");


                    ArrayList<Vehicule> v;


                    v= (ArrayList<Vehicule>) request.getAttribute("v");

                        %>

                    <div class="note note-success">
                        <h4 class="block">Le véhicule a été ajouté avec succés</h4>
                        <table class="table table-hover">
                            <thead>
                            <tr>


                                <th>marque</th>
                                <th>modèle</th>
                                <th>matricule</th>
                                <th>energie</th>
                                <th>boite</th>
                                <th>puissance</th>
                                <th>couleur</th>

                                <th>PLJ</th>
                                <th>PLH</th>
                                <th>kélométrage</th>
                                <th>etat</th>
                                <th>image</th>
                            </tr>
                            </thead>
                            <tbody id="myTable">

                            <% for (Vehicule aListLoca : v) {%>

                            <tr class="">
                                <td class=" hidden" ><%out.print(aListLoca.getIdVehicule()); %></td>

                                <td ><%out.print(aListLoca.getMarque()); %></td>

                                <td  ><%out.print(aListLoca.getModèle()); %></td >
                                <td ><%out.print(aListLoca.getMatricule()); %></td>

                                <td ><%out.print(aListLoca.getEnergie()); %></td>
                                <td ><%out.print(aListLoca.getBoite()); %></td>
                                <td ><%out.print(aListLoca.getPuissance()); %></td>

                                <td  ><%out.print(aListLoca.getCouleur()); %></td >
                                <td ><%out.print(aListLoca.getPlj()); %></td>
                                <td ><%out.print(aListLoca.getPlh()); %></td>
                                <td ><%out.print(aListLoca.getKlm()); %></td>
                                <td >
                                    <p class=" label <%if (!"réservé".equals(aListLoca.getEtat())){%> label-success<%}else {%>label-danger<%};%>" ><%out.print(aListLoca.getEtat());%></p>

                                </td>
                                <td>
                                    <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                        <img src="<%out.print(aListLoca.getImagepath());%>" alt="">
                                    </div>
                                </td>


                            </tr>
                            <%
                                    }; }else{%>
                            <div class="note note-danger">
                                <h4 class="block">Véhicule n'est pas ajouter</h4>
                                <p>
                                    un véhicule exist déjà avec ce matricule
                                </p>
                            </div>
                            <%}
                                    ;};%>

                            </tbody>
                        </table>

                    </div>


                </div>

                <div id="afficherlistedesvehicules">


                </div>


                <div id="full-width" class="modal container fade" tabindex="-1">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title">Ajouter un véhicule</h4>
                    </div>
                    <div class="modal-body">


                                <h4></h4>
                        <form action="/ajoutervehicule" method="post"  ModelAttribute="vehicule" enctype="multipart/form-data">
                            <div class="row col-sm-6" style="margin-right:  10px">
                                <div class="form-group  ">
                                    <label class="label label-md label-warning">Catégorie</label>

                                    <input id="catégorie" class="form-control input" name="catégorie" placeholder="catégorie" required >
                                </div>
                                <div class="form-group">
                                    <div class="input-icon">
                                        <label class="label label-md label-warning">Marque</label>
                                        <i class="icon-font"></i>
                                        <input name="marque" type="text" class="form-control" placeholder="Marque" required >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-icon">
                                        <label class="label label-md label-warning">Modèle</label>
                                        <i class="icon-font"></i>
                                        <input name="modèle" type="text" class="form-control" placeholder="Modèle" name="modèle" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-icon">
                                        <label class="label label-md label-warning">Matricule</label>
                                        <i class="icon-font"></i>
                                        <input name="matricule" type="text" class="form-control matricule" placeholder="Matricule" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="label label-md label-warning">Energie</label>
                                    <select name="energie" class="form-control  input">
                                        <option value="essence" >Essence</option>
                                        <option value="diesel" >Diesel</option>
                                        <option value="gpl" >Gpl</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <div class="input-icon">
                                        <label class="label label-md label-warning">Puissance</label>
                                        <i class="icon-font"></i>

                                        <select name="puissance" type="text" class="form-control" placeholder="Puissance" required >
                                            <option value="75ch-90ch" >75ch-90ch</option>
                                            <option value="90ch-120ch" >90ch-120ch</option>
                                            <option value="120ch-170ch" >120ch-170ch</option>
                                            <option value="<170ch" ><170ch</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-icon">
                                        <label class="label label-md label-warning">Couleur</label>
                                        <i class="icon-font"></i>
                                        <input name="couleur" type="text" class="form-control" placeholder="Couleur" required>
                                    </div>
                                </div>

                            </div>
                            <div class="row col-sm-6" style="padding: 10px">
                                <div class="form-group  ">
                                    <label class="label label-md label-warning">Boite</label>
                                    <select name="boite" class="form-control input" >
                                        <option value="auto" >Auto</option>
                                        <option value="manuel" >Manuel</option>
                                    </select>
                                </div>
                                <div class="form-group" class="div1">
                                    <div class="input-icon">
                                        <label class="label label-md label-warning">Prix de location par heure</label>
                                        <i class="icon-font"></i>
                                        <input id="plh" name="plh"  type="text" class="form-control " placeholder="Prix de location par heure" required>
                                    </div>
                                </div>
                                <div class="form-group" class="div2">
                                    <div class="input-icon" >
                                        <label class="label label-md label-warning">Prix de location par jour</label>
                                        <i class="icon-font"></i>
                                        <input id="plj" name="plj"  type="text" class="form-control " placeholder="Prix de location par jour" required>
                                    </div>
                                    <span class="incorrect" style='color :red ; font-size: 1.3em'> Veillez entrer un plj < plh*24   </span>
                                    <span class="correct" style='color :green ; font-size: 1.3em'> Correct   </span>
                                </div>
                                <div class="form-group">
                                    <div class="input-icon">
                                        <label class="label label-md label-warning">Kilométrage</label>
                                        <i class="icon-font"></i>
                                        <input id="klm" name="klm" type="text" class="form-control" placeholder="Kilométrage" required>
                                    </div>
                                </div>
                                <div class="form-group  ">
                                    <label class="label label-md label-warning">Dépot</label>
                                    <select  id="idDepotV" class="form-control input" name="idDepot" >


                                    </select>
                                </div>
                                <div class="form-group  ">
                                    <label class="label label-md label-warning">Etat</label>
                                    <select name="etat" class="form-control input">
                                        <option value="réservé" >réservé</option>
                                        <option value="libre" >Libre</option>
                                        <option value="enpanne" >En panne</option>
                                    </select>
                                </div>

                                <div class="form-group last">
                                    <label class="label label-md label-warning">Ajouter la photo du véhicule</label>
                                    <hr>
                                    <div class="fileupload fileupload-new" data-provides="fileupload" ><input type="hidden">
                                        <div class="fileupload-new thumbnail"  style="width: 200px; height: 150px;">
                                            <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="">
                                        </div>
                                        <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 2px;"></div>
                                        <div>
                                                   <span class="btn default btn-file">
                                                   <span class="fileupload-new"><i class="icon-paper-clip"></i> Select image</span>
                                                   <span class="fileupload-exists"><i class="icon-undo"></i> Change</span>
                                                    <input type="file" name="file" required>
                                                   </span>
                                            <a href="#" class="btn red fileupload-exists" data-dismiss="fileupload"><i class="icon-trash"></i> Remove</a>
                                        </div>
                                    </div>


                                </div>

                            </div>


                            <div class="modal-footer">
                                <button type="submit" class=" ajoutervehicule col-md-12 btn red">Ajouter</button>
                            </div>
                        </form>


                        </div>


                </div>
                </div>






            </div>
        <div id="modifiervehicule" class="modal container fade" tabindex="-1">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">Modifier un véhicule</h4>
            </div>
            <div class="modal-body">


                <h4></h4>
                <form action="/modifiervehicule" method="post"  ModelAttribute="vehicule" enctype="multipart/form-data" id="modifierform">
                    <div class="row col-sm-6" style="margin-right:  10px">
                        <input type="hidden" name="idVehicule" id="id1">
                        <div class="form-group  ">
                            <label class="label label-md label-warning">Catégorie</label>
                            <input id="catégorie1" class="form-control input" name="catégorie">

                        </div>
                        <div class="form-group">
                            <div class="input-icon">
                                <label class="label label-md label-warning">Marque</label>
                                <i class="icon-font"></i>
                                <input id="marque1" name="marque" type="text" class="form-control" placeholder="Marque" required >
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-icon">
                                <label class="label label-md label-warning">Modèle</label>
                                <i class="icon-font"></i>
                                <input id="modèle1" name="modèle" type="text" class="form-control" placeholder="Modèle" name="modèle" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-icon">
                                <label class="label label-md label-warning">Matricule</label>
                                <i class="icon-font"></i>
                                <input id="matricule1" name="matricule" type="text" class="form-control matricule" placeholder="Matricule" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="label label-md label-warning">Energie</label>
                            <select id="energie1" name="energie" class="form-control  input">
                                <option value="essence" >Essence</option>
                                <option value="diesel" >Diesel</option>
                                <option value="gpl" >Gpl</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="input-icon">

                                <label class="label label-md label-warning">Puissance</label>
                                <i class="icon-font"></i>
                                <select id="puissance1" name="puissance" type="text" class="form-control" placeholder="Puissance" required >
                                    <option value="75ch-90ch" >75ch-90ch</option>
                                    <option value="90ch-120ch" >90ch-120ch</option>
                                    <option value="120ch-170ch" >120ch-170ch</option>
                                    <option value="<170ch" ><170ch</option>
                                </select>

                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-icon">
                                <label class="label label-md label-warning">Couleur</label>
                                <i class="icon-font"></i>
                                <input id="couleur1" name="couleur" type="text" class="form-control" placeholder="Couleur" required>
                            </div>
                        </div>

                    </div>
                    <div class="row col-sm-6" style="padding: 10px">
                        <div class="form-group  ">
                            <label class="label label-md label-warning">Boite</label>
                            <select id="boite1" name="boite" class="form-control input" >
                                <option value="auto" >Auto</option>
                                <option value="manuel" >Manuel</option>
                            </select>
                        </div>
                        <div class="form-group" class="div1">
                            <div class="input-icon">
                                <label class="label label-md label-warning">Prix de location par heure</label>
                                <i class="icon-font"></i>
                                <input id="plh1" name="plh"  type="text" class="form-control prixLH " placeholder="Prix de location par heure" required>
                            </div>
                        </div>
                        <div class="form-group" class="div2">
                            <div class="input-icon" >
                                <label class="label label-md label-warning">Prix de location par jour</label>
                                <i class="icon-font"></i>
                                <input id="plj1" name="plj"  type="text" class="form-control prixLJ" placeholder="Prix de location par jour" required>
                            </div>
                            <span class="incorrect" style='color :red ; font-size: 1.3em'> Veillez entrer un plj < plh*24   </span>
                            <span class="correct" style='color :green ; font-size: 1.3em'> Correct   </span>
                        </div>
                        <div class="form-group">
                            <div class="input-icon">
                                <label class="label label-md label-warning">Kilométrage</label>
                                <i class="icon-font"></i>
                                <input id="klm1" name="klm" type="text" class="form-control kélom" placeholder="Kilométrage" required>
                            </div>
                        </div>
                        <div class="form-group  ">
                            <label class="label label-md label-warning">Dépot</label>
                            <select  id="idDepot1" class="form-control input" name="idDepot" >



                            </select>
                        </div>
                        <div class="form-group  ">
                            <label class="label label-md label-warning">Etat</label>
                            <select id="etat1" name="etat" class="form-control input">
                                <option value="réservé" >réservé</option>
                                <option value="libre" >Libre</option>
                                <option value="enpanne" >En panne</option>
                            </select>
                        </div>

                        <div class="form-group last">
                            <label class="label label-md label-warning">Ajouter la photo du véhicule</label>
                            <hr>
                            <div class="fileupload fileupload-new" data-provides="fileupload" ><input type="hidden">
                                <div class="fileupload-new thumbnail"  style="width: 200px; height: 150px;">
                                    <img src="" alt="" id="img">
                                </div>
                                <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 2px;"></div>
                                <div>
                                                   <span class="btn default btn-file">
                                                   <span class="fileupload-new"><i class="icon-paper-clip"></i> Select image</span>
                                                   <span class="fileupload-exists"><i class="icon-undo"></i> Change</span>
                                                    <input type="file" name="file" required>
                                                   </span>
                                    <a href="#" class="btn red fileupload-exists" data-dismiss="fileupload"><i class="icon-trash"></i> Remove</a>
                                </div>
                            </div>


                        </div>

                    </div>


                    <div class="modal-footer">
                        <button  type="submit" class=" ajoutervehicule col-md-12 btn red">Modifier</button>
                    </div>
                </form>


            </div>

        </div>
        </div>
        </div>

        <!-- END PAGE CONTENT-->
    </div>
    <!-- END PAGE -->

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

<script type="text/javascript">

</script>



<script type="text/javascript" src="javascript/Back.js">


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


<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->


<script src="cleave/cleave.min.js">

</script>



</body>
<!-- END BODY -->
</html>