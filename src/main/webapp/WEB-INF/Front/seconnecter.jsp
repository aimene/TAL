
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
<div id="seconnecter" class="modal fade" tabindex="-1" data-width="500" style="border-radius: 30px !important;">
<div class="modal-header" style="background-color: black !important;border-radius: 30px !important; ">
    <a class="navbar-brand" href="index.html"  style="padding: 0;margin: 0"  >
        <img src="assets/image/talocationlogo.png" alt="logo" style="" />
    </a>

    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    <h4 class="modal-title" style=" color: #e02222 !important; font-weight: 1000 !important; margin-left:40%">Connexion</h4>
</div>
<div class="modal-body">
    <div class="row">
        <div class="col-md-12">

            <form action="#">

                <div class="form-group">
                    <label class="control-label">Email </label>
                    <div class="input-group">

                        <input type="email" class="form-control" placeholder="Email " name="email" required="required">
                        <span class="input-group-addon"><i class="icon-envelope"></i></span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label">Mot de passe</label>
                    <div class="input-group">
                        <input type="password" class="form-control" placeholder="Mo de passe" name="motdepasse" required="required">
                        <span class="input-group-addon"><i class="icon-user"></i></span>
                    </div>
                </div>

            </form>
        </div>

    </div>
</div>

<div class="modal-footer">
    <button type="button" data-dismiss="modal" class="btn red">Annuler</button>
    <button type="button" class="btn green">Se connecter</button>
</div>
</div>