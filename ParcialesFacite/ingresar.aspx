<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ingresar.aspx.cs" Inherits="ParcialesFacite.ingresar" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Meta-Information -->
    <title>Sistema Integral para Profesores | Ingresar</title>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Vendor: Bootstrap 4 Stylesheets  -->
    <link rel="stylesheet" href="css/jquery-ui.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

    <!-- Our Website CSS Styles -->
    <link rel="stylesheet" href="css/icons.min.css" type="text/css">
    <link rel="stylesheet" href="css/main.css" type="text/css">
    <link rel="stylesheet" href="css/responsive.css" type="text/css">

</head>
<body class="panel-data">

<div class="panel-content">
    <div class="lgn-wrp grysh">
        <div class="bg-img" style="background-image: url(img/cabecera.png);"></div>
        <div class="lgn-innr">
            <div class="widget lgn-frm">
				<h1><a href="#" title=""><img src="images/logo.svg" alt="" Height="50"/></a></h1><br>
                <div class="frm-tl">
                    <h4>Sistema Integral para Profesores</h4>
                    <span>Ingresa la información solicitada</span>
                </div>
                <form runat="server">
                    <div class="row mrg10">
                        <div class="col-md-12 col-sm-12 col-lg-12">
                            <input class="brd-rd5" type="text" placeholder="No. de Empleado" required id="txt_num_empleado" runat="server" />
                        </div>
                        <div class="col-md-12 col-sm-12 col-lg-12">
                            <input class="brd-rd5" type="password" placeholder="Contraseña" required id="txt_password" runat="server"/>
                        </div>
                        <div class="col-md-12 col-sm-12 col-lg-12">
							<asp:LinkButton ID="btn_ingresar" runat="server" CssClass="brd-rd5 blue-bg act-btn" OnClick="btn_ingresar_Click">Ingresar</asp:LinkButton>
                        </div>
                    </div>
                    <div class="alert alert-warning" id="info" runat="server"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                    </button><a ID="respuesta" runat="server"></a></div>
				
                </form>
            </div>
        </div>
    </div><!-- Login Wrapper -->
</div><!-- Panel Content -->
    <!-- Vendor: Javascripts -->
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <!-- Vendor: Followed by our custom Javascripts -->
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui.min.js" type="text/javascript"></script>
    <script src="js/select2.min.js" type="text/javascript"></script>
    <script src="js/slick.min.js" type="text/javascript"></script>

    <!-- Our Website Javascripts -->
    <script src="js/isotope.min.js" type="text/javascript"></script>
    <script src="js/isotope-int.js" type="text/javascript"></script>
    <script src="js/jquery.counterup.js" type="text/javascript"></script>
    <script src="js/waypoints.min.js" type="text/javascript"></script>
    <script src="js/highcharts.js" type="text/javascript"></script>
    <script src="js/exporting.js" type="text/javascript"></script>
    <script src="js/highcharts-more.js" type="text/javascript"></script>
    <script src="js/moment.min.js" type="text/javascript"></script>
    <script src="js/jquery.circliful.min.js" type="text/javascript"></script>
    <script src="js/fullcalendar.min.js" type="text/javascript"></script>
    <script src="js/jquery.downCount.js" type="text/javascript"></script>
    <script src="js/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
    <script src="js/jquery.formtowizard.js" type="text/javascript"></script>
    <script src="js/form-validator.min.js" type="text/javascript"></script>
    <script src="js/form-validator-lang-en.min.js" type="text/javascript"></script>
    <script src="js/cropbox-min.js" type="text/javascript"></script>
    <script src="js/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="js/ion.rangeSlider.min.js" type="text/javascript"></script>
    <script src="js/jquery.poptrox.min.js" type="text/javascript"></script>
    <script src="js/styleswitcher.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

          <script>
          document.getElementById("txt_password")
            .addEventListener("keyup", function(event) {
            event.preventDefault();
            if (event.keyCode === 13) {
                document.getElementById("btn_ingresar").click();
            }
        });

      </script>
</body>
</html>


