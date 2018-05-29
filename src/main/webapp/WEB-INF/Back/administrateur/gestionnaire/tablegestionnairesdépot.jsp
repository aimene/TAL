<%@ page import="java.util.ArrayList" %>
<%@ page import="TAL.model.Utilisateur" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% response.setContentType("text/html");
    ArrayList<Utilisateur> listGest;

listGest= (ArrayList<Utilisateur>) request.getAttribute("listGest");

 %>


<div class="portlet box yellow">
    <div class="portlet-title">
        <div class="caption"><i class="icon-coffee"></i>La liste des gestionnaires des dépots</div>
        <div class="tools">
            <a href="javascript:;" class="collapse"></a>
            <a href="#portlet-config" data-toggle="modal" class="config"></a>
            <a href="javascript:;" class="reload"></a>
            <a href="javascript:;" class="remove"></a>
        </div>
    </div>

    <div class="portlet-body">
        <table class="table table-bordered table-hover">
            <thead>
            <tr>

                <th>Nom</th>
                <th>Prénom</th>
                <th class="hidden-XS">Pseudo</th>
                <th>email</th>
                <th>adreesse dépot</th>
                <th>etat</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody id="myTable">

            <% if(listGest==null) {%> <h1> aucun gestionnaire trouvé </h1> <% }else{%>
         <% for (Utilisateur l : listGest) {%>
            <tr>
                <td class="id hidden"><%out.print(l.getIdUtilisateur()); %></td>
                <td><%out.print(l.getNom()); %></td>
                <td><%out.print(l.getPrenom()); %></td>
                <td class="hidden-XS"><%out.print(l.getPseudo()
                ); %></td>
                <td class="hidden-XS"><%out.print(l.getEmail()
                ); %></td>
                <td class="hidden-XS"><%out.print(l.getIdDepot().getAdresse()
                ); %></td>
                <td><p class="label <% if (!"bloqué".equals(l.getEtat())) {%> label-success<%
                } else {%>label-danger <% };%>" ><%out.print(l.getEtat()); %></p>
                </td>


             <td class="action">
                 <button type="reset" class="btn red cancel">
                     <i class="icon-ban-circle"></i>
                     <span class="bloquera">Bloquer</span>
                 </button>
                 <button type="reset" class="btn green cancel">
                     <i class="icon-ok"></i>
                     <span class="débloquera">Débloquer</span>
                 </button>
             </td>
            </tr>
         <% };};%>

            </tbody>
        </table>
    </div>
</div>
<script  type="text/javascript">

    jQuery(document).ready(function($) {
        App.init();

        var id;
        $(".bloquera").click(function() {
            id = $(this).closest("tr")   // Finds the closest row <tr>
                .find(".id")     // Gets a descendent with class="nr"
                .text();// Retrieves the text within <td>

            console.log(id);

        });
        $(".débloquera").click(function() {
            id = $(this).closest("tr")   // Finds the closest row <tr>
                .find(".id")     // Gets a descendent with class="nr"
                .text();// Retrieves the text within <td>

            console.log(id);

        });
        $(".bloquera").click(function() {
            debugger;
            console.log(id);

            $.ajax({
                type: "get",
                url: "/backend/bloquerGestionnaireDépot",
                data : { "id" :id},
                dataType: "html",
                success: function (result) {
                    debugger;

                    $("#listgestionnairesdépot").empty();
                    $("#listgestionnairesdépot").html(result);

                },
                error: function (response) {
                    debugger;
                    alert('error'); }
            });
        });
        $(".débloquera").click(function() {
            debugger;
            console.log(id);

            $.ajax({
                type: "get",
                url: "/backend/débloquerGestionnaireDépot",
                data : { "id" :id},
                dataType: "html",
                success: function (result) {

                    $("#listgestionnairesdépot").empty();

                    $("#listgestionnairesdépot").html(result);

                },
                error: function (response) {
                    debugger;
                    alert('error'); }
            });
        });
    });
</script>