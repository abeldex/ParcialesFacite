<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ParcialesFacite.Default" %>

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

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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
          <a class="btn btn-danger" href="salir.aspx" title=""><i class="fa fa-sign-out"></i> Salir</a>
        </div>
      </div>
    </div>
  </div>
  <div class="topbar-bottom-colors">
    <i style="background-color: #2c3e50;"></i>
    <i style="background-color: #2c3e50;"></i>
    <i style="background-color: #2c3e50;"></i>
    <i style="background-color: #2c3e50;"></i>
    <i style="background-color: #2c3e50;"></i>
    <i style="background-color: #2c3e50;"></i>
    <i style="background-color: #2c3e50;"></i>
  </div>
</div><!-- Topbar -->

<header class="side-header light-skin">
  <div class="nav-head">MENU PRINCIPAL <span class="menu-trigger"><i class="ion-android-menu"></i></span></div>
  <nav class="custom-scrollbar">
    <ul class="drp-sec">
      <li class="has-drp"><a href="#" title=""><i class="ion-home"></i> <span>Inicio</span></a>
        <ul class="sb-drp">
          <li><a href="http://facitesistemas.gearhostpreview.com/" title="">Panel de Control</a></li>
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
    <i class="ion-cube"></i>
    <div class="pr-tp-inr">
        <h4>Bienvenido <asp:SqlDataSource runat="server" ID="SqlDataSourceMaestros" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT * FROM Maestros WHERE id_maestro = @maestro">
                         <SelectParameters>
                                          <asp:SessionParameter DefaultValue="0" Name="maestro" SessionField="usuario" />
                          </SelectParameters>  
                          </asp:SqlDataSource>   
                                 <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSourceMaestros">
                                     <ItemTemplate>
                                       <%# Eval("nombre_maestro") %>
                                     </ItemTemplate>
                          </asp:Repeater></h4>
        <span>Sistema Integral para Profesores</span>
    </div>
</div><!-- Page Top -->

<div class="panel-content">
    <div class="filter-items">
        <div class="row grid-wrap mrg20">
            <label id="qsmaestro" runat="server" style="display:none"></label>
            

            <div class="col-md-4 grid-item col-sm-6 col-lg-3">
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
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceGruposAsignados" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT count(*) as 'grupos' FROM Maestros_Grupos
                            inner join Grupos on Grupos.id_grupo = Maestros_Grupos.id_grupo
                            WHERE id_maestro = @maestro and Grupos.cohorte = '2020-2021'">
                         <SelectParameters>
                                          <asp:SessionParameter DefaultValue="0" Name="maestro" SessionField="usuario" />
                          </SelectParameters>  
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
                        <h5>Grupos Asignados</h5>
                    </div>
                    <span><a href="capturar.aspx"><i class="ion-eye"></i> Ver los Grupos Asignados</a></span>
                </div>
            </div>

            <div class="col-md-4 grid-item col-sm-6 col-lg-3">
                <div class="stat-box widget bg-clr2">
                    <div class="wdgt-ldr">
                        <div class="ball-scale-multiple">
                            <div></div>
                            <div></div>
                            <div></div>
                        </div>
                    </div>
                    <i class=" ion-android-checkbox-outline"></i>
                    <div class="stat-box-innr">
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT count(*) as 'evaluados' FROM Grupos inner join Maestros_Grupos on Grupos.id_grupo = Maestros_Grupos.id_grupo
inner join Materias on Maestros_Grupos.id_materia = Materias.idMateria
inner join Carrera on Grupos.carrera = Carrera.idCarrera
WHERE id_maestro IN (SELECT maestro FROM Evaluaciones_Parciales WHERE materia = Materias.idMateria and Evaluaciones_Parciales.parcial = 1) and id_maestro = @maestro and Grupos.cohorte = '2020-2021'">
                         <SelectParameters>
                                          <asp:SessionParameter DefaultValue="0" Name="maestro" SessionField="usuario" />
                          </SelectParameters>  
                          </asp:SqlDataSource>   
                        <span>
                            <i class="counter">
                                 <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                     <ItemTemplate>
                                        <%# Eval("evaluados") %>
                                     </ItemTemplate>
                                 </asp:Repeater>
                            </i>
                            </span>
                        <h5>GRUPOS EVALUADOS</h5>
                    </div>
                    <span><a href="capturados.aspx"><i class="ion-eye"></i> Ver los Grupos Evaluados</a></span>
                </div>
            </div>


                      <div class="col-md-4 grid-item col-sm-6 col-lg-3">
                <div class="stat-box widget bg-clr6">
                    <div class="wdgt-ldr">
                        <div class="ball-scale-multiple">
                            <div></div>
                            <div></div>
                            <div></div>
                        </div>
                    </div>
                    <i class=" ion-ios-keypad-outline"></i>
                    <div class="stat-box-innr">
                          <span>********</span>
                        <h5>Contraseña</h5>
                    </div>
                    <span><a href="#" data-toggle="modal" data-target="#modal_password"><i class="ion-edit"></i> Actualizar la contraseña</a></span>
                </div>
            </div>

             <div class="col-md-4 grid-item col-sm-6 col-lg-3">
                <div class="stat-box widget bg-clr8">
                    <div class="wdgt-ldr">
                        <div class="ball-scale-multiple">
                            <div></div>
                            <div></div>
                            <div></div>
                        </div>
                    </div>
                    <i class=" ion-android-exit"></i>
                    <div class="stat-box-innr">
                          <span><a href="salir.aspx" > Salir</a></span>
                        <h5><a href="salir.aspx" >CERRAR SESIÓN</a></h5>
                    </div>
                    
                </div>
            </div>
         </div>
     </div>
</div><!-- Panel Content -->
<footer>
  <span>Desarrollador: Jesús Abel Cota Dimas | 2019</span>
</footer>

<!-- Modal -->
<div class="modal fade" id="modal_password" tabindex="-1" role="dialog" aria-labelledby="modal_password" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><i class="ion-ios-keypad-outline"></i> Actualizar Contraseña</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          <div class="form-group">
            <label for="exampleInputPassword1">Contraseña Nueva</label>
            <input type="password" class="form-control" id="txt_pass" placeholder="">
          </div>

          <div class="form-group">
            <label for="exampleInputPassword1">Confirmar Contraseña</label>
            <input type="password" class="form-control" id="txt_pass_new" placeholder="">
          </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary" id="btn_actualizar_pass">Guardar</button>
      </div>
    </div>
  </div>
</div>

    
</body>
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
        $(document).on('click', '#btn_actualizar_pass', function () {
            var contra = $('#txt_pass').val();
            var contra2 = $('#txt_pass_new').val();
            var maestro = document.getElementById('qsmaestro');
            if (contra == contra2) {
                $.ajax({
                    type: "POST",
                    url: "update_password.asmx/actualizar",
                    data: "password=" + contra + "&maestro=" + maestro.innerText, // the data in form-encoded format, ie as it would appear on a querystring
                    //contentType: "application/x-www-form-urlencoded; charset=UTF-8", // if you are using form encoding, this is default so you don't need to supply it
                    dataType: "text", // the data type we want back, so text.  The data will come wrapped in xml
                    success: function (data) {
                        //alert('ok se actualiza');
                        Swal.fire(
                            data,
                            'De ahora en adelante iniciará sesión con su contraseña nueva!',
                            'success'
                        )
                        //cerra el modal

                        $('#modal_password').modal('hide');
                    }
                });
            }
            else {
                alert('Las contraseña deben de coincidir');
            }

        });
    </script>
</html>