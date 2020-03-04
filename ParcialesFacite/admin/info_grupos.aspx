<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info_grupos.aspx.cs" Inherits="ParcialesFacite.admin.info_grupos" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Meta-Information -->
    <title>Administración Sistema Integral de Profesores</title>
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
    <link rel="stylesheet" href="../css/color-schemes/color.css" type="text/css" title="color3">
</head>

<body class="panel-data">
        <form runat="server">
<div class="topbar">
  <div class="logo">
    <h1><img src="../images/logo.svg" alt="" Height="50"/></h1>
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


<div class="panel-content">
    <div class="filter-items">
        <div class="row grid-wrap mrg20">

        </div><!-- Filter Items -->

                         <div class="widget grd">
                         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSourceLista" ClientIDMode="AutoID">
                                          <HeaderTemplate>
                                             
                                           <table class="table table-striped">
                                              <thead >
                                                <tr>
                                                  <th style=""><b>Materia</b></th>
                                                  <th style=""><b>Profesor</b></th>
                                                  <th style=""><b>Capturados</b></th>
                                                   <th style="text-align:center"><b>Faltantes</b></th>
                                                  <th style=""></th>
                                                </tr>
                                              </thead>
                                              <tbody>
                                        </HeaderTemplate>
                                      <ItemTemplate>
                                         <tr class="is-disabled">
                                             
                                              <td><div class="o-media">
                                                  <div class="o-media__body">
                                                    <small><b><%# Eval("NombreMateria") %></b></small>
                                                  </div>
                                                </div></td>
                                              <td>
                                                 <small> <%# Eval("nombre_maestro") %></small>
                                              </td>
                                             <td>
                                                 <small> <%# Eval("capturados") %></small></td>
                                           
                                                  <td>
                                                 <small> <%# Eval("faltantes") %></small></td>
                                              <td>
                                                <a href="info_evaluados.aspx?grupo=<%# Eval("id_grupo") %>&maestro=<%# Eval("id_maestro") %>&materia=<%# Eval("idMateria") %>" title="" class="brd-rd30 btn btn-sm btn-success url_visualizar"><i class="fa fa-eye"></i> Visualizar</a>
                                             </td>
                                            </tr>
                                      </ItemTemplate>
                                       <FooterTemplate>
                                        </tbody>
                                        </table>
                                           </FooterTemplate>
                                  </asp:Repeater>
                            <asp:SqlDataSource runat="server" ID="SqlDataSourceLista" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="
                               
SELECT id_maestro_grupo, Maestros_Grupos.id_maestro, Maestros_Grupos.id_grupo, idMateria, NombreMateria, nombre_maestro, (select count(id_ep) from Evaluaciones_Parciales as ep 
inner join Grupos_Alumnos ga on ep.grupo_alumno = ga.id_grupo_alumno
inner join Alumno al on ga.numCuenta = al.numCuenta and parcial = @parcial
where materia = Materias.idMateria and maestro = Maestros_Grupos.id_maestro and ga.id_grupo = Maestros_Grupos.id_grupo) as 'capturados',
((SELECT count(*) FROM Grupos_Alumnos WHERE id_grupo = Maestros_Grupos.id_grupo) - (select count(id_ep) from Evaluaciones_Parciales as ep 
inner join Grupos_Alumnos ga on ep.grupo_alumno = ga.id_grupo_alumno
inner join Alumno al on ga.numCuenta = al.numCuenta and parcial = @parcial
where materia = Materias.idMateria and maestro = Maestros_Grupos.id_maestro and ga.id_grupo = Maestros_Grupos.id_grupo)) as 'faltantes'
FROM Maestros_Grupos
inner join Materias on Maestros_Grupos.id_materia =  Materias.idMateria
inner join Maestros on Maestros_Grupos.id_maestro = Maestros.id_maestro
WHERE Maestros_Grupos.id_grupo = @grupo
">
                                       <SelectParameters>
                                          <asp:QueryStringParameter QueryStringField="grupo" DefaultValue="0" Name="grupo"></asp:QueryStringParameter>
										  <asp:QueryStringParameter QueryStringField="parcial" DefaultValue="0" Name="parcial"></asp:QueryStringParameter>
                                      </SelectParameters>
                            </asp:SqlDataSource>                   
                        
                 
                 </div>

    </div>
</div><!-- Panel Content -->

    <!-- Vendor: Javascripts -->
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <!-- Vendor: Followed by our custom Javascripts -->
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../js/jquery-ui.min.js" type="text/javascript"></script>
    <script src="../js/select2.min.js" type="text/javascript"></script>
    <script src="../js/slick.min.js" type="text/javascript"></script>

    <!-- Our Website Javascripts -->
    <script src="../js/isotope.min.js" type="text/javascript"></script>
    <script src="../js/isotope-int.js" type="text/javascript"></script>
    <script src="../js/jquery.counterup.js" type="text/javascript"></script>
    <script src="../js/waypoints.min.js" type="text/javascript"></script>
    <script src="../js/highcharts.js" type="text/javascript"></script>
    <script src="../js/exporting.js" type="text/javascript"></script>
    <script src="../js/highcharts-more.js" type="text/javascript"></script>
    <script src="../js/moment.min.js" type="text/javascript"></script>
    <script src="../js/jquery.circliful.min.js" type="text/javascript"></script>
    <script src="../js/fullcalendar.min.js" type="text/javascript"></script>
    <script src="../js/jquery.downCount.js" type="text/javascript"></script>
    <script src="../js/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
    <script src="../js/jquery.formtowizard.js" type="text/javascript"></script>
    <script src="../js/form-validator.min.js" type="text/javascript"></script>
    <script src="../js/form-validator-lang-en.min.js" type="text/javascript"></script>
    <script src="../js/cropbox-min.js" type="text/javascript"></script>
    <script src="../js/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="../js/ion.rangeSlider.min.js" type="text/javascript"></script>
    <script src="../js/jquery.poptrox.min.js" type="text/javascript"></script>
    <script src="../js/styleswitcher.js" type="text/javascript"></script>
    <script src="../js/main.js" type="text/javascript"></script>    
	<script>
        $(document).ready(function () {
            //se obtiene el parcial de la query string
            var par = new URLSearchParams(location.search).get('parcial');
            //alert(param);
            //se lo agregamos al url de visualizar
            //var _href = $(".url_visualizar").attr("href");
            //alert(_href);
            $(".url_visualizar").each(function () {
                var $this = $(this);
                var _href = $this.attr("href");
                $this.attr("href", _href + "&parcial=" + par);
            });
        });

	</script>
</form>
</body>

</html>

