<%@ page import="java.util.ArrayList" %>
<%@ page import="TAL.model.Locataire" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% response.setContentType("text/html");
    ArrayList<Locataire> listLoca=new ArrayList<Locataire>();

listLoca= (ArrayList<Locataire>) request.getAttribute("listLoca");

 %>

<p class="title"></p>

<div class="portlet box red">
    <div class="portlet-title">
        <div class="caption"><i class="icon-cogs"></i>Liste des locataires</div>
        <div class="tools">
            <a href="javascript:;" class="collapse"></a>
            <a href="#portlet-config" data-toggle="modal" class="config"></a>
            <a href="javascript:;" class="reload"></a>
            <a href="javascript:;" class="remove"></a>
        </div>
    </div>
    <div class="portlet-body">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>id</th>
                <th>nom</th>
                <th>prénom</th>
                <th>pseudo</th>
                <th>email</th>
                <th>etat</th>
                <th>action</th>
            </tr>
            </thead>
            <tbody id="myTable">

<% for (Locataire aListLoca : listLoca) {%>

<tr class="rowlocataire">
    <td class="id" ><%out.print(aListLoca.getIdLocataire()); %></td>
    <td class="nom"><%out.print(aListLoca.getNom()); %></td>
    <td class="prenom"><%out.print(aListLoca.getPrenom()); %></td>

    <td class="pseudo" ><%out.print(aListLoca.getPseudo()); %></td >
    <td class="email"><%out.print(aListLoca.getEmail()); %></td>

    <td class ="etat">
        <p class="label <% if (!"bloqué".equals(aListLoca.getEtat())) {%> label-success<%
    } else {%>label-danger <% };%>" >
            <%out.print(aListLoca.getEtat()); %>
        </p>
    </td>
    <td class="action">


        <button type="reset" class="btn red cancel">
            <i class="icon-ban-circle"></i>
            <span class="bloquer">Bloquer</span>
        </button>
        <button type="reset" class="btn green cancel">
            <i class="icon-ok"></i>
            <span class="débloquer">Débloquer</span>
        </button>
    </td>
</tr>
<%
    }
    ; %>

            </tbody>
        </table>
    </div>
</div>

<script  type="text/javascript">

    jQuery(document).ready(function($) {
        App.init();
        var id;
        $(".bloquer").click(function() {
            id = $(this).closest("tr")   // Finds the closest row <tr>
                .find(".id")     // Gets a descendent with class="nr"
                .text();// Retrieves the text within <td>

            console.log(id);

        });
        $(".débloquer").click(function() {
            id = $(this).closest("tr")   // Finds the closest row <tr>
                .find(".id")     // Gets a descendent with class="nr"
                .text();// Retrieves the text within <td>

            console.log(id);

        });
        $(".bloquer").click(function() {
            debugger;
            console.log(id);

            $.ajax({
                type: "get",
                url: "/backend/bloquerlocataire",
                data : { "id" :id},
                dataType: "html",
                success: function (result) {

                    $("#listlocataires").empty();
                    $("#listlocatairesbloqués").empty();
                    $("#listlocataires").html(result);

                },
                error: function (response) {
                    debugger;
                    alert('error'); }
            });
        });
        $(".débloquer").click(function() {
            debugger;
            console.log(id);

            $.ajax({
                type: "get",
                url: "/backend/débloquerlocataire",
                data : { "id" :id},
                dataType: "html",
                success: function (result) {

                    $("#listlocataires").empty();
                    $("#listlocatairesbloqués").empty();
                    $("#listlocataires").html(result);

                },
                error: function (response) {
                    debugger;
                    alert('error'); }
            });
        });
    });
</script>