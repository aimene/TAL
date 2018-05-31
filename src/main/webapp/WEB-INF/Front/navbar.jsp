<%@ page import="TAL.model.Locataire" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<div class="header navbar navbar-inverse navbar-fixed-top " style="    background: radial-gradient(ellipse at center, rgba(181,189,200,1) 41%,rgba(130,140,149,1) 85%, rgba(130,140,149,1) 85%,rgba(130,140,149,1) 99%,rgba(130,140,149,1) 99%,rgba(181,189,200,1) 100%,rgba(181,189,200,1) 100%) !important;">
    <!-- BEGIN TOP NAVIGATION BAR -->

    <!-- END TOP NAVIGATION BAR -->

<div class="header-inner container">
    <!-- BEGIN LOGO -->
    <a class="navbar-brand" href="index.html"  style="padding: 7px;"  >
        <img src="assets/image/talocationlogo.png" alt="logo" style="" />
    </a>
    <a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <img src="assets/img/menu-toggler.png" alt="" />
    </a>
    <!-- END LOGO -->
    <!-- BEGIN HORIZANTAL MENU -->
    <div class="hor-menu hidden-sm hidden-xs ">
        <ul class="nav navbar-nav">

            <li >
                <a class="btn" href="/index.html">

                    Accueil

                </a>

            </li>
            <li >
                <a class="btn" href="/réserver.html">

                    Réserver
                </a>
            </li>

            <li >
                <a class="btn" href="noscontacter.html">Nos contacter</a>

            </li>
            <li  >
                <a class="btn" href="apropos.html">A propos

                </a>

            </li>
            <li  >
                <a class="btn">Conditions de locations

                </a>

            </li>

        </ul>

    </div>
    <!-- END HORIZANTAL MENU -->
    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
    <a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">

    </a>
    <% HttpSession session2= request.getSession();
       Locataire l = (Locataire)session2.getAttribute("locataire");
     if (l==null){
    %>

    <ul class="nav navbar-nav pull-right">

        <li class="dropdown user">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">

                <i class="icon-key" style="    margin-top: 7px;"></i>
            </a>
            <ul class="dropdown-menu">
                <li><a href="/s'inscrire.html" style="color: black !important;"><i class="icon-user"></i> S'inscrire</a></li>


                <li class="divider"></li>

                <li><a href="/seconnecter.html" style="color: black !important;"><i class="icon-key"></i> Se connecter</a></li>
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
                <li><a href="/sedéconnecter"><i class="icon-key"></i> Se déconnecter</a></li>
            </ul>
        </li>
        <!-- END USER LOGIN DROPDOWN -->
    </ul>
    <% };%>

</div>
</div>