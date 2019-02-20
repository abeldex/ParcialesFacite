<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ParcialesFacite.admin.login" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Meta-Information -->
    <title>Zawya Admin Panel</title>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Vendor: Bootstrap 4 Stylesheets  -->
    <link rel="stylesheet" href="../css/jquery-ui.min.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">

    <!-- Our Website CSS Styles -->
    <link rel="stylesheet" href="../css/icons.min.css" type="text/css">
    <link rel="stylesheet" href="../css/main.css" type="text/css">
    <link rel="stylesheet" href="../css/responsive.css" type="text/css">

    <!-- Color Scheme -->
    <link rel="stylesheet" href="css/color-schemes/color.css" type="text/css" title="color3">
    <link rel="alternate stylesheet" href="../css/color-schemes/color1.css" title="color1">
    <link rel="alternate stylesheet" href="../css/color-schemes/color2.css" title="color2">
    <link rel="alternate stylesheet" href="../css/color-schemes/color4.css" title="color4">
    <link rel="alternate stylesheet" href="../css/color-schemes/color5.css" title="color5">
</head>
<body class="dark panel-data expand-data">
<div class="panel-content">
    <div class="lgn-wrp grysh">
        <div class="bg-img" style="background-image: url(../img/cabecera22.png);"></div>
        <div class="lgn-innr">
            <div class="widget lgn-frm">
                <div class="frm-tl">
                    <a href="#"><img src="../img/logo3.png" Height="50" alt="LOGO FACITE"></a><br /><br />
                    <h4>Administración Sistema de Parciales</h4>
                    
                </div>
                <form id="form1" runat="server">
                    <div class="row mrg10">
                        <div class="col-md-12 col-sm-12 col-lg-12">
                            <input class="brd-rd5" type="text" placeholder="Usuario" />
                        </div>
                        <div class="col-md-12 col-sm-12 col-lg-12">
                            <input class="brd-rd5" type="password" placeholder="Contraseña" />
                        </div>
                        <div class="col-md-12 col-sm-12 col-lg-12">
                            <a class="brd-rd5 blue-bg act-btn" href="#" title="">Ingresar</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div><!-- Login Wrapper -->
</div><!-- Panel Content -->
<!-- Vendor: Javascripts -->
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <!-- Vendor: Followed by our custom Javascripts -->
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../js/jquery-ui.min.js" type="text/javascript"></script>
    <script src="../js/select2.min.js" type="text/javascript"></script>
    <script src="../js/slick.min.js" type="text/javascript"></script>

</body>
</html>    
