<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="capturados.aspx.cs" Inherits="ParcialesFacite.capturados1" %>
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
          <li><a href="#" title="">Panel de Control</a></li>
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


<div class="pg-tp">
    <i class=" ion-android-alert"></i>
    <div class="pr-tp-inr">
        <h4>Grupos Evaluados</h4>
        <span>Información de los grupos evaluados</span>
    </div>
</div><!-- Page Top -->
<div class="panel-content">
        <div class="row mrg20">
            <div class="col-md-12 col-sm-12 col-lg-12">
                 <div class="widget grd">
                    <form id="form1" runat="server">                      
                            <asp:Repeater ID="RepeaterGruposEvaluados" runat="server" DataSourceID="SqlDataSourceGrupos">
                                          <HeaderTemplate>
                                              <div class="">
                                           <table class="table table-striped">
                                              <thead>
                                                <tr>
                                                  <th >Carrera</th>
                                                  <th >Semestre</th>
                                                  <th >Grupo</th>
                                                  <th >Materia</th>
                                                  <th >Acciones</th>
                                                </tr>
                                              </thead>
                                              <tbody>
                                        </HeaderTemplate>
                                      <ItemTemplate>
                                         <tr >
                                              <td ><small><asp:Label ID="lblcohorte" runat="server" Text='<%# Eval("NombreCarrera") %>' /></small></td>
                                              <th ><asp:Label ID="lblcarrera" runat="server" Text='<%# Eval("semestre") %>' /></th>
                                              <td ><asp:Label ID="lblsemestre" runat="server" Text='<%# Eval("grupo") %>' /></td>
                                              <td >
                                                <small><span class="badge badge--small badge-primary" href="#" id="lblturno" runat="server"><%# Eval("NombreMateria") %></span></small>
                                              </td>
                                              <td >
                                                <div class="c-dropdown dropdown">
                                                    <a href="evaluados.aspx?grupo=<%# Eval("id_grupo") %>&materia=<%# Eval("idMateria") %>" title="" class="brd-rd30 btn btn-sm btn-success"><i class="fa fa-eye"></i> Visualizar</a>
                                                  </div>
                                                </div>
                                              </td>
                                            </tr>
                                      </ItemTemplate>
                                       <FooterTemplate>
                                        </tbody>
                                        </table>
                                           </div>
                                           </FooterTemplate>
                                  </asp:Repeater>
                                  <asp:SqlDataSource runat="server" ID="SqlDataSourceGrupos" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT * FROM Grupos inner join Maestros_Grupos on Grupos.id_grupo = Maestros_Grupos.id_grupo
inner join Materias on Maestros_Grupos.id_materia = Materias.idMateria
inner join Carrera on Grupos.carrera = Carrera.idCarrera
WHERE id_maestro IN (SELECT maestro FROM Evaluaciones_Parciales WHERE materia = Materias.idMateria) and id_maestro = @maestro">
                                      <SelectParameters>
                                          <asp:SessionParameter DefaultValue="0" Name="maestro" SessionField="usuario" />
                                      </SelectParameters>
                                      
                            </asp:SqlDataSource>       
                    </form>
                     </div>
        </div>
      </div>

</div><!-- Panel Content -->
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