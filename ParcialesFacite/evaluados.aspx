<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="evaluados.aspx.cs" Inherits="ParcialesFacite.evaluados" %>

<html>
<head>
    <!-- Meta-Information -->
    <title>FACITE | Sistema de Parciales</title>
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
<div class="topbar">
  <div class="logo">
    <h1><a href="#" title=""><img src="images/logo.svg" alt="" Height="50"/></a></h1>
  </div>
  <div class="topbar-data">
    <ul class="tobar-links">
      <li><a href="#" title=""><i class="ion-ios-bell"></i><span class="blue-bg">0</span></a>
        <div class="nti-drp-wrp">
          <h5 class="blue-bg"><span>Tienes</span> 0 Notificaciones</h5>
          <div class="nti-lst">
            <!--<div class="nti-usr">
              <span class="brd-rd50 rd-bg"><i class="fa fa-cog"></i></span>
              <div class="nti-usr-inr">
                <h5><a href="#" title="">Sadi Orlaf</a></h5> <span class="pst-tm">Just Now</span>
                <i>Privacy settings changed</i>
              </div>
            </div> -->
          </div>
          <div class="nt-ftr"><a href="#" title="">Ver Todo</a></div>
        </div>
      </li>
      <li><a href="#" title=""><i class="ion-android-drafts"></i><span class="green-bg">0</span></a>
        <div class="nti-drp-wrp">
          <h5 class="green-bg"><span>Tienes</span> 0 Mensajes</h5>
          <div class="nti-lst">
            <!--<div class="nti-usr">
              <img class="brd-rd50" src="images/resource/acti-thmb2.jpg" alt="" />
              <div class="nti-usr-inr">
                <h5><a href="#" title="">Sadi Orlaf</a></h5> <span class="pst-tm">Just Now</span>
                <i>Privacy settings changed</i>
              </div>-->
            </div>
          
          <div class="nt-ftr"><a href="#" title="">Ver Todo</a></div>
        </div>
      </li>
    </ul>
    
    <div class="usr-act">
      <span><img src="images/default.jpg" alt="" height="40" /><i class="sts away"></i></span>
      <div class="usr-inf">
        <div class="usr-thmb brd-rd50">
          <img class="brd-rd50" src="images/default.jpg" height="100" alt="" />
          <i class="sts away"></i>
          <a class="green-bg brd-rd5" href="#" title=""><i class="fa fa-envelope"></i></a>
        </div>
        <h5><a href="#" title="" id="lbl_usuario" runat="server"></a></h5>
        <span>no. Empleado</span>
        <i></i>
        
        <div class="usr-ft">
          <a class="btn-danger" href="http://148.227.28.3/SistemaParciales/salir.aspx" title=""><i class="fa fa-sign-out"></i> Salir</a>
        </div>
      </div>
    </div>
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

<header class="side-header light-skin">
  <div class="nav-head">MENU PRINCIPAL <span class="menu-trigger"><i class="ion-android-menu"></i></span></div>
  <nav class="custom-scrollbar">
    <ul class="drp-sec">
      <li class="has-drp"><a href="#" title=""><i class="ion-home"></i> <span>Inicio</span></a>
        <ul class="sb-drp">
          <li><a href="http://148.227.28.3/SistemaParciales/" title="">Panel de Control</a></li>
        </ul>
      </li>
    </ul>
    <h4 style="display: none;">APLICACIONES</h4>
    <ul class="drp-sec">
      <li class="has-drp"><a href="#" title=""><i class="ion-briefcase"></i> <span>Evaluaciones Parciales</span></a>
        <ul class="sb-drp">
          <li><a href="capturar.aspx" title="">Grupos Asignados</a></li>
          <li><a href="capturados.aspx" title="">Grupos Capturados</a></li>
                 </ul>
      </li>
    
    </ul>
  </nav>
</header><!-- Side Header -->

 <form id="form1" runat="server"  class="form-wrp">
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
                                                  <th style="text-align:center"><b>Acciones</b></th>
                                                </tr>
                                              </thead>
                                              <tbody>
                                        </HeaderTemplate>
                                      <ItemTemplate>
                                         <tr class="is-disabled" id="td<%# Eval("grupo_alumno") %>">
                                             
                                              <td><div class="o-media">
                                                  <div class="o-media__body">
                                                    <small><b><%# Eval("NombreAlumno") %></b></small>
                                                    <p><small><%# Eval("numCuenta") %></small></p>
                                                  </div>
                                                </div></td>
                                              <td>
                                                  <input class="brd-rd5" type="text" id="c<%# Eval("grupo_alumno") %>" value="<%# Eval("calificacion") %>"></td>
                                             <td>
                                                  <input class="brd-rd5" type="text"  id="p<%# Eval("grupo_alumno") %>" value="<%# Eval("asistencia") %>"></td>
                                              <td>
                                                  <small><%# Eval("observaciones") %></small>
                                              </td>
                                             <td>
                                                 <button style="width:120" class="btn guardar btn-primary" id="<%# Eval("grupo_alumno") %>"><i class="ion-edit"></i>Editar</button>
                                                
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
                                    <asp:QueryStringParameter DefaultValue="0" Name="grupo" QueryStringField="grupo" />
                                    <asp:SessionParameter DefaultValue="0" Name="maestro" SessionField="usuario" />
                                    <asp:QueryStringParameter QueryStringField="materia" DefaultValue="0" Name="materia"></asp:QueryStringParameter>
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
</body>
</html>
