<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reporte_faltantes.aspx.cs" Inherits="ParcialesFacite.admin.reportes.reporte_faltantes" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Meta-Information -->
    <title>SIPF | Reporte por Alumnos</title>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Vendor: Bootstrap 4 Stylesheets  -->
    <link rel="stylesheet" href="../../css/jquery-ui.min.css">
    <link rel="stylesheet" href="../../css/bootstrap.min.css" type="text/css">

    <!-- Our Website CSS Styles -->
    <link rel="stylesheet" href="../../css/icons.min.css" type="text/css">
    <link rel="stylesheet" href="../../css/main.css" type="text/css">
    <link rel="stylesheet" href="../../css/responsive.css" type="text/css">

    <!-- Color Scheme -->
    <link rel="stylesheet" href="../../css/color-schemes/color.css" type="text/css" title="color3">

     <style type="text/css">
   /*AutoComplete flyout */
        .completionList {
        border:solid 0px #444444;
        margin:0px;
        padding:2px;
        height: 400px;
        overflow:auto;
        background-color: #f9f9f9;
        }

        .listItem {
        color: #1C1C1C;
        }

        .itemHighlighted {
        background-color: #abcdf4;
        }
   </style>

</head>

<body class="panel-data">
<form runat="server">

<div class="topbar">
  <div class="logo">
    <h1><img src="../../images/logo.svg" alt="" Height="50"/></h1>
  </div>

  <div class="topbar-bottom-colors">
    <i style="background-color: #2c3e50;"></i>
    <i style="background-color: #9857b2;"></i>
    <i style="background-color: #2c81ba;"></i>
    <i style="background-color: #5dc12e;"></i>
    <i style="background-color: #feb506;"></i>
    <i style="background-color: #e17c21;"></i>
    <i style="background-color: #bc382a;"></i>
  </div>
</div><!-- Topbar -->

<header class="side-header">
    <div class="nav-head">Menu Principal<span class="menu-trigger"><i class="ion-android-menu"></i></span></div>
    <nav class="custom-scrollbar">
      <ul class="drp-sec">
        <li><a href="http://facitesistemas.gearhostpreview.com/admin/" title=""><i class="ion-home"></i><span>Inicio</span></a>
          
        </li>
      </ul>
      <h4>Administración</h4>
      <ul class="drp-sec">
        <li><a href="http://facitesistemas.gearhostpreview.com/admin/grupos.aspx" title=""><i class="ion-android-contacts"></i> <span>Grupos</span></a></li>
        <li class="has-drp"><a href="#" title=""><i class="ion-android-clipboard"></i> <span>Resultados</span></a>
          <ul class="sb-drp">
            <li><a href="http://facitesistemas.gearhostpreview.com/admin/reportes/reporte_alumno.aspx" title="">Por Alumno</a></li>
        <li><a href="http://facitesistemas.gearhostpreview.com/admin/reportes/reporte_materia.aspx" title="">Por Materia</a></li>
          </ul>
        </li>
        <li><a href="#" title=""><i class="ion-android-contact"></i> <span>Profesores</span></a></li>
      </ul>   
    </nav>
  </header><!-- Side Header -->
  
  <button type="button" style="float:right;" class="btn btn-primary" ID="print"><i class=" ion-android-print"></i></button>
<div class="panel-content">

    <div class="filter-items" id="i_reportes">
                        
                         <div class="widget grd">
                             <small>Sistema Integral de Profesores | Reporte de Evaluaciones Parciales</small> 
                             <img src="../../img/logo.png" width="250" style="float:right; margin-right:35px; margin-top:5px"/>
                             <h4><b id="lbl_alumno" runat="server">Reporte de Evaluaciones Parciales de los Profesores Faltantes por Evaluar Periodo 1: </b></h4>

                         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="GridDataSource" ClientIDMode="AutoID">
                                          <HeaderTemplate>
                                           
                                           <table class="table table-compact">
                                              <thead style="background-color:darkgrey">
                                                <tr>
                                                    <th style=""><b>Ciclo</b></th>
                                                    <th style=""><b>Periodo</b></th>
                                                  <th style=""><b>Materia</b></th>
                                                  <th style=""><b>Profesor</b></th>
                                                    <th style=""><b>Capturados</b></th>
                                                  <th style=""><b>Faltantes</b></th>
                                                </tr>
                                              </thead>
                                              <tbody>
                                        </HeaderTemplate>
                                      <ItemTemplate>
                                             <tr class="is-disabled">
                                                 <td><div class="o-media">
                                                  <div class="o-media__body">
                                                    <small><b><%# Eval("cohorte") %></b></small>
                                                  </div>
                                                </div></td>
                                                <td><div class="o-media">
                                                    <div class="o-media__body">
                                                      <small><b><%# Eval("parcial") %></b></small>
                                                    </div>
                                                  </div></td>
                                              <td><div class="o-media">
                                                  <div class="o-media__body">
                                                    <small><b><%# Eval("NombreMateria") %></b></small>
                                                  </div>
                                                </div></td>
                                              <td>
                                                 <small> <%# Eval("nombre_maestro") %></small>
                                              </td>
                                                 <td style="text-align:center">
                                                 <small> <%# Eval("capturados") %></small>
                                             </td>
                                             <td style="text-align:center">
                                                 <small> <%# Eval("faltantes") %></small>
                                             </td>
                                            </tr>
                                      </ItemTemplate>
                                       <FooterTemplate>
                                        </tbody>
                                        </table>
                                           </FooterTemplate>
                       </asp:Repeater>
                             <asp:SqlDataSource ID="GridDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>"
                                 SelectCommand="SELECT * FROM Evaluaciones_Reporte_Faltantes_p1 WHERE Cohorte = @ciclo and faltantes > 0">
                                 <SelectParameters>
                                     <asp:QueryStringParameter QueryStringField="ciclo" Name="ciclo"></asp:QueryStringParameter>
                                 </SelectParameters>
                             </asp:SqlDataSource>            
                        
                 
                 </div>

    </div>
</div><!-- Panel Content -->

    <!-- Vendor: Javascripts -->
    <script src="../../js/jquery.min.js" type="text/javascript"></script>
    <!-- Vendor: Followed by our custom Javascripts -->
    <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../../js/jquery-ui.min.js" type="text/javascript"></script>
    <script src="../../js/select2.min.js" type="text/javascript"></script>
    <script src="../../js/slick.min.js" type="text/javascript"></script>

    <!-- Our Website Javascripts -->
    <script src="../../js/isotope.min.js" type="text/javascript"></script>
    <script src="../../js/isotope-int.js" type="text/javascript"></script>
    <script src="../../js/jquery.counterup.js" type="text/javascript"></script>
    <script src="../../js/waypoints.min.js" type="text/javascript"></script>
    <script src="../../js/highcharts.js" type="text/javascript"></script>
    <script src="../../js/exporting.js" type="text/javascript"></script>
    <script src="../../js/highcharts-more.js" type="text/javascript"></script>
    <script src="../../js/moment.min.js" type="text/javascript"></script>
    <script src="../../js/jquery.circliful.min.js" type="text/javascript"></script>
    <script src="../../js/fullcalendar.min.js" type="text/javascript"></script>
    <script src="../../js/jquery.downCount.js" type="text/javascript"></script>
    <script src="../../js/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
    <script src="../../js/jquery.formtowizard.js" type="text/javascript"></script>
    <script src="../../js/form-validator.min.js" type="text/javascript"></script>
    <script src="../../js/form-validator-lang-en.min.js" type="text/javascript"></script>
    <script src="../../js/cropbox-min.js" type="text/javascript"></script>
    <script src="../../js/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="../../js/ion.rangeSlider.min.js" type="text/javascript"></script>
    <script src="../../js/jquery.poptrox.min.js" type="text/javascript"></script>
    <script src="../../js/styleswitcher.js" type="text/javascript"></script>
    <script src="../../js/main.js" type="text/javascript"></script>  
    <script src="../../js/jquery-printme.min.js" type="text/javascript"></script>    
</form>
</body>
    <script>
        $(document).on('click', '#print', function () {
            $("#i_reportes").printMe({ "path": ["../../css/main.css"] });
        });
    </script>
</html>
