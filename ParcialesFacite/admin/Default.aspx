<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ParcialesFacite.admin.Default" %>

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
      <li><a href="http://facitesistemas.gearhostpreview.com/admin/profesores.aspx" title=""><i class="ion-android-contact"></i> <span>Profesores</span></a></li>
    </ul>   
  </nav>
</header><!-- Side Header -->


<div class="panel-content">
    <div class="filter-items">
        <div class="row grid-wrap mrg20">
           <div class="col-md-4 grid-item col-sm-12 col-lg-3">
                <div class="stat-box widget bg-clr1">
                    <div class="wdgt-ldr">
                        <div class="ball-scale-multiple">
                            <div></div>
                            <div></div>
                            <div></div>
                        </div>
                    </div>
                    <i class="ion-android-contacts"></i>
                    <div class="stat-box-innr">
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceGruposAsignados" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT count(*) as 'grupos' FROM Grupos WHERE cohorte = '2020-2021'">
                          </asp:SqlDataSource>   
                        <span>
                            <i class="counter">
                                 <asp:Repeater ID="RepeaterGrupos" runat="server" DataSourceID="SqlDataSourceGruposAsignados">
                                     <ItemTemplate>
                                        <%# Eval("grupos") %>
                                     </ItemTemplate>
                                 </asp:Repeater>
                            </i>
                        </span>
                        <h5>Grupos Registrados</h5>
                    </div>
                    <span><a href="grupos.aspx"><i class="ion-eye"></i> Ver los Grupos Registrados</a></span>
                </div>
            </div>

            <div class="col-md-4 grid-item col-sm-12 col-lg-3">
                <div class="stat-box widget bg-clr2">
                    <div class="wdgt-ldr">
                        <div class="ball-scale-multiple">
                            <div></div>
                            <div></div>
                            <div></div>
                        </div>
                    </div>
                   <i class="ion-android-clipboard"></i>
                    <div class="stat-box-innr">
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceMaestrosAsignados" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT count(id_maestro) as 'asignaciones' FROM Maestros_Grupos
                          inner join Grupos on Maestros_Grupos.id_grupo = Grupos.id_grupo
                          WHERE Grupos.cohorte = '2020-2021'
                          ">
                          </asp:SqlDataSource>   
                        <span>
                            <i class="counter">
                                 <asp:Repeater ID="RepeaterMaestrosAsignados" runat="server" DataSourceID="SqlDataSourceMaestrosAsignados">
                                     <ItemTemplate>
                                        <%# Eval("asignaciones") %>
                                     </ItemTemplate>
                                 </asp:Repeater>
                            </i>
                        </span>
                        <h5>Materias Asignadas a Profesores</h5>
                    </div>
                    <span><a href="grupos.aspx"><i class="ion-eye"></i> Ver Materias Asignadas</a></span>
                </div>
            </div>

            <div class="col-md-4 grid-item col-sm-12 col-lg-3">
                <div class="stat-box widget bg-clr6">
                    <div class="wdgt-ldr">
                        <div class="ball-scale-multiple">
                            <div></div>
                            <div></div>
                            <div></div>
                        </div>
                    </div>
                    <i class="ion-android-alarm"></i>
                    <div class="stat-box-innr">
                        
                        <h5>Evaluaciones Faltantes</h5>
                        <span>Periodo 1</span>
                    </div>
                    <span><a href="reportes/reporte_faltantes_p1.aspx?ciclo=2020-2021"><i class="ion-eye"></i> Ver las Evaluaciones Faltantes</a></span>
                </div>
            </div>

            <div class="col-md-4 grid-item col-sm-12 col-lg-3">
              <div class="stat-box widget bg-clr6">
                  <div class="wdgt-ldr">
                      <div class="ball-scale-multiple">
                          <div></div>
                          <div></div>
                          <div></div>
                      </div>
                  </div>
                  <i class="ion-android-alarm"></i>
                  <div class="stat-box-innr">
                      
                      <h5>Evaluaciones Faltantes</h5>
                      <span>Periodo 2</span>
                  </div>
                  <span><a href="reportes/reporte_faltantes.aspx?ciclo=2020-2021"><i class="ion-eye"></i> Ver las Evaluaciones Faltantes</a></span>
              </div>
          </div>


        </div><!-- Filter Items -->

                         <div class="widget grd">
                         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSourceLista" ClientIDMode="AutoID">
                                          <HeaderTemplate>
                                             
                                           <table class="table table-striped">
                                              <thead >
                                                <tr>
                                                  <th style=""><b>Carrera</b></th>
                                                  <th style=""><b>Semestre</b></th>
                                                  <th style=""><b>Grupo</b></th>
                                                  <th style=""><b>Turno</b></th>
                                                  <th style=""><b>Alumnos Asignados</b></th>
                                                  <th style=""><b>Profesores Asignados</b></th>
                                                  <th style=""></th>
                                                </tr>
                                              </thead>
                                              <tbody>
                                        </HeaderTemplate>
                                      <ItemTemplate>
                                         <tr class="is-disabled" id="td<%# Eval("id_grupo") %>">
                                             
                                              <td><div class="o-media">
                                                  <div class="o-media__body">
                                                    <small><b><%# Eval("NombreCarrera") %></b></small>
                                                  </div>
                                                </div></td>
                                              <td>
                                                 <small> <%# Eval("Semestre") %></small>
                                              </td>
                                             <td>
                                                 <small> <%# Eval("grupo") %></small></td>
                                              <td>
                                                 <small> <%# Eval("turno") %></small>
                                              </td>
                                             <td>
                                                 <small> <%# Eval("alumnos_asignados") %></small>
                                             </td>
                                             <td>
                                                 <small> <%# Eval("maestros_asignados") %></small>
                                             </td>
                                              <td>
                                                <a href="info_grupos.aspx?grupo=<%# Eval("id_grupo") %>&parcial=1" title="" class="brd-rd30 btn btn-sm btn-success"><i class="fa fa-eye"></i> Parcial 1</a>
                                                <a href="info_grupos.aspx?grupo=<%# Eval("id_grupo") %>&parcial=2" title="" class="brd-rd30 btn btn-sm btn-success"><i class="fa fa-eye"></i> Parcial 2</a>
                                             
                                             </td>
                                            </tr>
                                      </ItemTemplate>
                                       <FooterTemplate>
                                        </tbody>
                                        </table>
                                           </FooterTemplate>
                                  </asp:Repeater>
                            <asp:SqlDataSource runat="server" ID="SqlDataSourceLista" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="
SELECT Grupos_Alumnos.id_grupo,Carrera.NombreCarrera, Grupos.Semestre, Grupos.grupo, Grupos.turno, count(*) as 'alumnos_asignados', (SELECT count(*) FROM Maestros_grupos WHERE id_grupo = Grupos_Alumnos.id_grupo) as 'maestros_asignados' 
FROM Grupos_Alumnos 
inner join Grupos on Grupos_Alumnos.id_grupo = Grupos.id_grupo
inner join Carrera on Grupos.carrera = Carrera.idCarrera
WHERE Grupos.cohorte = '2020-2021'
group by Carrera.NombreCarrera, Grupos.Semestre, Grupos_Alumnos.id_grupo, Grupos.grupo, Grupos.turno
order by  Grupos.Semestre">
                                       
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
</form>
</body>

</html>
