<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info_evaluados.aspx.cs" Inherits="ParcialesFacite.admin.info_evaluados" %>

<html>
<head>
    <!-- Meta-Information -->
    <title>FACITE | Sistema de Parciales</title>
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
    <link rel="stylesheet" href="../css/jquery.toast.min.css">
    <!-- Color Scheme -->
    <link rel="stylesheet" href="../css/color-schemes/color.css" type="text/css" title="color3">

</head>
<body class="panel-data expand-data">
<div class="topbar">
  <div class="logo">
    <h1><a href="#" title=""><img src="../images/logo.svg" alt="" Height="50"/></a></h1>
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

<header class="side-header expand-header">
  <div class="nav-head">Menu Principal<span class="menu-trigger"><i class="ion-android-menu"></i></span></div>
  <nav class="custom-scrollbar">
    <ul class="drp-sec">
      <li><a href="/admin/" title=""><i class="ion-home"></i><span>Inicio</span></a>
        
      </li>
    </ul>
    <h4>Administración</h4>
    <ul class="drp-sec">
      <li><a href="grupos.aspx" title=""><i class="ion-android-contacts"></i> <span>Grupos</span></a></li>
      <li class="has-drp"><a href="#" title=""><i class="ion-android-clipboard"></i> <span>Resultados</span></a>
        <ul class="sb-drp">
          <li><a href="#" title="">Por Grupo</a></li>
          <li><a href="#" title="">Por Alumno</a></li>
          <li><a href="#" title="">Por Materia</a></li>
        </ul>
      </li>
      <li><a href="#" title=""><i class="ion-android-contact"></i> <span>Profesores</span></a></li>
    </ul>   
  </nav>
</header><!-- Side Header -->

 <form id="form1" runat="server" class="form-wrp">
<div class="pg-tp">
    <i class=" ion-android-checkbox"></i>
    <div class="pr-tp-inr">
         <asp:ListView ID="lvMateria" runat="server" DataSourceID="SqlDataSourceAsignatura" DataKeyNames="idMateria">
                                    <ItemTemplate>
                                       <h4>Asignatura: <asp:Label Text='<%# Eval("NombreMateria") %>' runat="server" ID="NombreMateriaLabel" /></h4>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <div runat="server" id="itemPlaceholderContainer" style=""><span runat="server" id="itemPlaceholder" /></div>
                                        <div style="">
                                        </div>
                                    </LayoutTemplate>
                                </asp:ListView>
                                <asp:SqlDataSource runat="server" ID="SqlDataSourceAsignatura" ConnectionString='<%$ ConnectionStrings:mycon %>' SelectCommand="SELECT * FROM [Materias] WHERE ([idMateria] = @idMateria)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter QueryStringField="materia" DefaultValue="" Name="idMateria" Type="Int32"></asp:QueryStringParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>

        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSourceGpo" DataKeyNames="id_grupo">
                                    <ItemTemplate>
                                        <small><span><%# Eval("NombreCarrera") %>  </span></small>
                                        <small><span> Semestre: <%# Eval("semestre") %> Grupo: <%# Eval("grupo") %></span></small>
                                
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <div runat="server" id="itemPlaceholderContainer" style=""><span runat="server" id="itemPlaceholder" /></div>
                                        <div style="">
                                        </div>
                                    </LayoutTemplate>
                                </asp:ListView>
                                <asp:SqlDataSource runat="server" ID="SqlDataSourceGpo" ConnectionString='<%$ ConnectionStrings:mycon %>' SelectCommand="select * from grupos inner join Carrera on Grupos.carrera = Carrera.idCarrera WHERE id_grupo = @grupo">
                                    <SelectParameters>
                                        <asp:QueryStringParameter QueryStringField="grupo" DefaultValue="" Name="grupo" Type="Int32"></asp:QueryStringParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSourceMaestro" DataKeyNames="id_maestro">
                                    <ItemTemplate>
                                        <span>Profesor: <%# Eval("nombre_maestro") %>  </span>
                                
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <div runat="server" id="itemPlaceholderContainer" style=""><span runat="server" id="itemPlaceholder" /></div>
                                        <div style="">
                                        </div>
                                    </LayoutTemplate>
                                </asp:ListView>
                                <asp:SqlDataSource runat="server" ID="SqlDataSourceMaestro" ConnectionString='<%$ ConnectionStrings:mycon %>' SelectCommand="select * from Maestros WHERE id_maestro = @maestro">
                                    <SelectParameters>
                                        <asp:QueryStringParameter QueryStringField="maestro" DefaultValue="" Name="maestro" Type="Int32"></asp:QueryStringParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
    </div>
</div><!-- Page Top -->
<div class="panel-content">
        <div class="row mrg20">
            <div class="col-md-12 col-sm-12 col-lg-12">
                 <div class="widget grd">
                         <asp:Repeater ID="RepeaterLista" runat="server" DataSourceID="SqlDataSourceLista" ClientIDMode="AutoID">
                                          <HeaderTemplate>
                                             
                                           <table class="table table-striped">
                                              <thead >
                                                <tr>
                                                  <th style="text-align:center"><b>Alumno</b></th>
                                                  <th style="text-align:center"><b>Valoracion</b></th>
                                                  <th style="text-align:center"><b>% Asistencia</b></th>
                                                  <th style="text-align:center"><b>Observaciones</b></th>
                                                </tr>
                                              </thead>
                                              <tbody>
                                        </HeaderTemplate>
                                      <ItemTemplate>
                                         <tr class="is-disabled" id="td<%# Eval("id_ep") %>">
                                             
                                              <td><div class="o-media">
                                                  <div class="o-media__body">
                                                    <small><b><%# Eval("NombreAlumno") %></b></small>
                                                    <p><small><%# Eval("numCuenta") %></small></p>
                                                  </div>
                                                </div></td>
                                              <td>
                                                  <input disabled class="brd-rd5" type="text" id="c<%# Eval("id_ep") %>" value="<%# Eval("calificacion") %>"></td>
                                             <td>
                                                  <input disabled class="brd-rd5" type="text"  id="a<%# Eval("id_ep") %>" value="<%# Eval("asistencia") %>"></td>
                                              <td id="o<%# Eval("id_ep") %>">
                                                  <small><%# Eval("observaciones") %></small>
                                              </td>
  
                                            </tr>
                                      </ItemTemplate>
                                       <FooterTemplate>
                                        </tbody>
                                        </table>
                                           </FooterTemplate>
                                  </asp:Repeater>
                            <asp:SqlDataSource runat="server" ID="SqlDataSourceLista" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="
select id_ep, grupo_alumno, materia, calificacion, observaciones, maestro, asistencia, estado, id_grupo, al.numCuenta, NombreAlumno from Evaluaciones_Parciales as ep 
inner join Grupos_Alumnos ga on ep.grupo_alumno = ga.id_grupo_alumno
inner join Alumno al on ga.numCuenta = al.numCuenta
where materia = @materia and maestro = @maestro and ga.id_grupo = @grupo">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="0" Name="grupo" QueryStringField="grupo"  Type="Int32"/>
                                    <asp:QueryStringParameter QueryStringField="maestro" DefaultValue="0" Name="maestro"  Type="Int32"/>
                                    <asp:QueryStringParameter QueryStringField="materia" DefaultValue="0" Name="materia"  Type="Int32"/>
                                </SelectParameters>
                                      
                            </asp:SqlDataSource>                   
                        
                 
                 </div>
        </div>

  
      </div>

</div><!-- Panel Content -->
 </form>      
    <footer>
  <span>Desarrollador: Jesús Abel Cota Dimas | 2019</span>
</footer>
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
    <script src="../js/jquery.toast.min.js"></script>
   

</html>
