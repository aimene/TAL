<%@ page import="TAL.model.Utilisateur" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="header navbar navbar-inverse navbar-fixed-top">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="header-inner">
        <!-- BEGIN LOGO -->
        <a class="navbar-brand" href="/espaceadmin"  style="padding: 7px;"  >
            <img src="assets/image/talocationlogo.png" alt="logo" style="" />
        </a>
        <!-- END LOGO -->
        <!-- BEGIN HORIZANTAL MENU -->
        <div class="hor-menu hidden-sm hidden-xs">

            <ul class="nav navbar-nav">
                <li >
                    <a id="réservations" class="aaaa" >

                        Réservations
                    </a>
                </li>
                <li  >
                    <a id="locations" class="aaaa">

                        Locations

                    </a>

                </li>
                <li  >
                    <a href="/gérerdépot" id="dépots" class="aaaa">

                       Dépot

                    </a>

                </li>
                <li >
                    <a id="véhicules" href="/gérervéhicules" class="aaaa"> Véhicules</a>

                </li>

                <li >
                    <a id="locataires" href="/gérercompteslocataires" class="aaaa"> Locataires

                    </a>


                </li>
                <li  >
                    <a  id="gestionnaires" href="/gérercomptesgestionnaires" class="aaaa">Gestionnaires

                    </a>



                </li>

            </ul>

        </div>
        <!-- END HORIZANTAL MENU -->
        <!-- BEGIN RESPONSIVE MENU TOGGLER -->
        <a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <img src="assets/img/menu-toggler.png" alt="" />
        </a>
        <!-- END RESPONSIVE MENU TOGGLER -->
        <!-- BEGIN TOP NAVIGATION MENU -->

            <!-- BEGIN NOTIFICATION DROPDOWN -->
            <% HttpSession session2= request.getSession();
                Utilisateur l = (Utilisateur)session2.getAttribute("utilisateur");
                if (l==null){
            %>

            <ul class="nav navbar-nav pull-right">

                <li class="dropdown user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">

                        <i class="icon-key" style="    margin-top: 7px;"></i>
                    </a>
                    <ul class="dropdown-menu">


                        <li><a href="/seconnecterBack" style="color: black !important;"><i class="icon-key"></i> Se connecter</a></li>
                    </ul>
                </li>

            </ul>
            <% }else{%>

            <ul class="nav navbar-nav pull-right">

                <li class="dropdown user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                        <img alt="" src="assets/img/avatar1_small.jpg"/>
                        <span class="username"><% out.print(l.getPrenom() +""+l.getNom()); %></span>
                        <i class="icon-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="/espacelocataire.html"><i class="icon-user"></i> Mon profil</a></li>



                        <li class="divider"></li>
                        <li><a href="javascript:;" id="trigger_fullscreen"><i class="icon-move"></i> Full Screen</a></li>
                        <li><a href="/sedéconnecterBack"><i class="icon-key"></i> Se déconnecter</a></li>
                    </ul>
                </li>
                <!-- END USER LOGIN DROPDOWN -->
            </ul>
            <% };%>

        <!-- END TOP NAVIGATION MENU -->
    </div>
    <!-- END TOP NAVIGATION BAR -->
</div>

<script>
    jQuery(document).ready(function() {
     /*   $("li").click(function () {
            $(this).append("<span class='selected'></span>");
            $(this).addClass("active");

        });*/


    });
</script>