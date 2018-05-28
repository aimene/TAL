<%@ page import="java.util.ArrayList" %>
<%@ page import="TAL.model.Vehicule" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% response.setContentType("text/html");

    ArrayList<Vehicule> listLoca;


    listLoca= (ArrayList<Vehicule>) request.getAttribute("voiture");


%>


<div class="row">

    <div class="col-md-12" id="affichervoituress">
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
        <div class="portlet box red" >
            <div class="portlet-title">
                <div class="caption"><i class="icon-cogs"></i>Liste des voitures</div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"></a>
                    <a href="#portlet-config" data-toggle="modal" class="config"></a>
                    <a href="javascript:;" class="reload"></a>
                    <a href="javascript:;" class="remove"></a>
                </div>
            </div>
            <span  ></span>
            <div class="portlet-body"  >


                <% if (listLoca==null){%>
                <h1>la liste des vehicules est vide</h1>
                <% }else{%>

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
                        <th>photo</th>
                        <th>action</th>

                    </tr>
                    </thead>
                    <tbody id="myTable">

                    <% for (Vehicule aListLoca : listLoca) {%>

                    <tr class="">
                        <td class="id hidden" ><%out.print(aListLoca.getIdVehicule()); %></td>

                        <td class="marque"><%out.print(aListLoca.getMarque()); %></td>

                        <td class="modèle" ><%out.print(aListLoca.getModèle()); %></td >
                        <td class="matricule2"><%out.print(aListLoca.getMatricule()); %></td>

                        <td class="energie" ><%out.print(aListLoca.getEnergie()); %></td>
                        <td class="boite"><%out.print(aListLoca.getBoite()); %></td>
                        <td class="puissance"><%out.print(aListLoca.getPuissance()); %></td>

                        <td class="couleur" ><%out.print(aListLoca.getCouleur()); %></td >
                        <td class="plj"><%out.print(aListLoca.getPlj()); %></td>
                        <td class="plh"><%out.print(aListLoca.getPlh()); %></td>
                        <td class="klm"><%out.print(aListLoca.getKlm()); %></td>
                        <td class="etat">
                            <p class=" label <%if (!"réservé".equals(aListLoca.getEtat())){%> label-success<%}else {%>label-danger<%};%>" ><%out.print(aListLoca.getEtat());%></p>
                        </td>
                        <td class="photo">
                            <a class="modifier btn yellow" data-toggle="modal" href="#myM<%out.print(aListLoca.getIdVehicule());%>">Voir </a>

                            <div id="myM<%out.print(aListLoca.getIdVehicule());%>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true" style="display: none;" >
                                <div class="modal-dialog" style="padding: 0 !important">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                            <h4 class="modal-title">Photo</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="fileupload-new thumbnail"  style="width: 500px; height: 350px;">
                                                <img src="<%out.print(aListLoca.getImagepath());%>" alt="" class="img">
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button class="btn default" data-dismiss="modal" aria-hidden="true">Close</button>

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </td>
                        <td class="action">

                            <button type="reset" class="btn green cancel">
                                <i class=" icon-external-link"></i>
                                <a class="modifier btn green" data-toggle="modal" href="#modifiervehicule">Modifier </a>
                            </button>
                            <button type="" class="btn red cancel"  >
                                <i class="icon-ban-circle"></i>
                                <a class="bloquer btn red" data-toggle="modal" href="#Supprimer<%out.print(aListLoca.getIdVehicule());%>">Supprimer</a>
                            </button>
                                <div id="Supprimer<%out.print(aListLoca.getIdVehicule());%>" class="modal fade"
                                     tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true" style="display: none;" >

                                    <form action="/supprimervehicule" method="post">
                                        <input type="hidden" name="idsupprimer" value="<%out.print(aListLoca.getIdVehicule());%>">
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
                                                <button type="submit" class="btn green supprimervehicule" >Supprimer</button>
                                                <button class="btn default" data-dismiss="modal" aria-hidden="true">Close</button>

                                            </div>
                                        </div>
                                    </div>
                                </form>
                                </div>


                        </td>

                    </tr>
                    <%
                            }
                            ; };%>

                    </tbody>
                </table>

            </div>

        </div>
    </div>


</div>






<script>
    $(document).ready(function(){
        $("#myInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>
<script type="text/javascript" src="javascript/Back.js">



</script>