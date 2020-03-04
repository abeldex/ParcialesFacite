<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grupos.aspx.cs" Inherits="ParcialesFacite.admin.grupos" %>

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

</head>
<body class="panel-data">
<div class="topbar">
  <div class="logo">
    <h1><a href="#" title=""><img src="../images/logo.svg" alt="" Height="50"/></a></h1>
  </div>
  <div class="topbar-data">
    
    <div class="usr-act">
      <span><img src="../images/default.jpg" alt="" height="40" /><i class="sts away"></i></span>
      <div class="usr-inf">
        <div class="usr-thmb brd-rd50">
          <img class="brd-rd50" src="../images/default.jpg" height="100" alt="" />
          <i class="sts away"></i>
          <a class="green-bg brd-rd5" href="#" title=""><i class="fa fa-envelope"></i></a>
        </div>
        <h5><i id="lbl_usuario" runat="server"></i></h5>
        <span>no. Empleado</span>
        <i></i>
        
        <div class="usr-ft">
          <a class="btn-danger" href="http://facitesistemas.gearhostpreview.com/salir.aspx" title=""><i class="fa fa-sign-out"></i> Salir</a>
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
<div class="pg-tp">
    <i class=" ion-android-alert"></i>
    <div class="pr-tp-inr">
        <h4>Grupos Registrados</h4>
        <span>Administración de Grupos</span>
    </div>
</div><!-- Page Top -->
<div class="panel-content">
        <div class="row grid-wrap mrg20">
                <form id="form1" runat="server" class="form-wrp">
                <div class="row">
                    <div class="col-md-12" id="nota" runat="server">
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <h5 class="c-alert__title" id="lbl_info" runat="server"></h5>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                    </div>
                    
					       <div class="col-lg-3">
                        <div class="widget grd">
                            <h4>Nuevo Grupo</h4>
                                <label class="c-field__label" for="user-plan">Ciclo Escolar</label>
                                <input type="text" class="form-control" placeholder="Ej. 2020-2021" id="txt_cohorte" runat="server" />


                            <label class="c-field__label" for="user-country">Carrera</label>
                            <div class="c-select">
                            <select class="form-control" id="txt_carrera" runat="server">
                              <option value="0">Tronco Común</option>
                              <option value="1">Geodesia</option>
                              <option value="2">Geomatica</option>
                              <option value="3">Astronomia</option>
                            </select>
                          </div>  
                            <label class="c-field__label" for="user-country">Semestre</label>
                            <div class="c-select">
                            <select class="form-control" id="txt_semestre" runat="server">
                              <option value="1">1</option>
                              <option value="2">2</option>
                              <option value="3">3</option>
                              <option value="4">4</option>
                              <option value="5">5</option>
                              <option value="6">6</option>
                              <option value="7">7</option>
                              <option value="8">8</option>
                              <option value="9">9</option>
                            </select>
                          </div>  
                             <label class="c-field__label" for="user-country">Grupo</label>
                            <div class="c-select">
                            <select class="form-control" id="txt_grupo" runat="server">
                              <option value="1">1</option>
                              <option value="2">2</option>
                              <option value="3">3</option>
                            </select>
                          </div>  
                             <label class="c-field__label" for="user-country">Turno</label>
                            <div class="c-select">
                            <select class="form-control" id="txt_turno" runat="server">
                              <option value="Matutino">Matutino</option>
                              <option value="Vespertino">Vespertino</option>
                            </select>
                          </div>  
                            <br />
                            <asp:LinkButton ID="btn_guardar" runat="server" CssClass="btn btn-success btn-block" OnClick="btn_guardar_Click">Registrar Grupo</asp:LinkButton>

                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="col-lg-12">
                            <div class="widget grd">
                                <label class="c-field__label" for="user-country">Seleccione un Ciclo: </label>
                                <select class="form-control" id="txt_ciclo">
                                    <option value="-">Seleccione un ciclo</option>
                                    <option value="2020-2021">2020-2021</option>
                                    <option value="2019-2020">2019-2020</option>
                                    <option value="2018-2019">2018-2019</option>
                                  </select>
                            </div>
                          </div>
                        <div class="widget grd" id="div_grupos">
                            <h4>Grupos Creados</h4>
                            <div class="float-right">
                              <small><i class="ion-android-contacts" style="color:green;" aria-placeholder="Asignar Alumnos"></i>: Asignar Alumnos</small>   
                              <small><i class="ion-ios-book" style="color:blue;"></i>: Asignar Maestros</small>   
                              <small><i class="ion-android-delete eliminar" style="color:red;"></i>: Eliminar Grupo</small>
                            </div>
                                  <!--Aqui pondremos el repeater -->
                                  <asp:Repeater ID="RepeaterGrupos" runat="server" DataSourceID="SqlDataSourceGrupos">
                                          <HeaderTemplate>
                                            <div class="c-table-responsive@wide">
                                           <table class="table table-striped">
                                              <thead class="c-table__head">
                                                <tr class="c-table__row">
                                                  <th class="c-table__cell c-table__cell--head">COD</th>
                                                  <th class="c-table__cell c-table__cell--head">Cohorte</th>
                                                  <th class="c-table__cell c-table__cell--head">Carrera</th>
                                                  <th class="c-table__cell c-table__cell--head">Semestre</th>
                                                  <th class="c-table__cell c-table__cell--head">Grupo</th>
                                                  <th class="c-table__cell c-table__cell--head">Turno</th>
                                                  <th class="c-table__cell c-table__cell--head">Acciones</th>
                                                </tr>
                                              </thead>
                                              <tbody>
                                        </HeaderTemplate>
                                      <ItemTemplate>
                                           <tr class="c-table__row">
                                              <td class="c-table__cell">
                                               <small><asp:Label ID="lblid" runat="server" Text='<%# Eval("id_grupo") %>'  /></small></td>
                                              <td class="c-table__cell"><small><asp:Label ID="lblcohorte" runat="server" Text='<%# Eval("cohorte") %>' /></small></td>
                                              <th class="c-table__cell"><asp:Label ID="lblcarrera" runat="server" Text='<%# Eval("NombreCarrera") %>' /></th>
                                              <td class="c-table__cell"><small><asp:Label ID="lblsemestre" runat="server" Text='<%# Eval("semestre") %>' /></small></td>
                                              <td class="c-table__cell"><small><asp:Label ID="lblgrupo" runat="server" Text='<%# Eval("grupo") %>' /></small></td>
                                              <td class="c-table__cell">
                                              <small><a class="" href="#" id="lblturno" runat="server"><%# Eval("turno") %></small></a>
                                              </td>
                                              <td class="c-table__cell">
                                                    <a class="" href="asignaralumnos.aspx?grupo=<%# Eval("id_grupo") %>"><i class="ion-android-contacts" style="color:green;"></i></a>
                                                    <a class="" href="asignarmaestros.aspx?grupo=<%# Eval("id_grupo") %>"><i class="ion-ios-book" style="color:blue;"></i></a>
                                                    <a class="eliminar" href="#" id="<%# Eval("id_grupo") %>"> <i class="ion-android-delete eliminar" style="color:red;"></i></a>
                                                 
                                              </td>
                                            </tr>
                                      </ItemTemplate>
                                       <FooterTemplate>
                                         </tbody>
                                        </table>
                                           </div>
                                           </FooterTemplate>
                                  </asp:Repeater>
                                  <asp:SqlDataSource runat="server" ID="SqlDataSourceGrupos" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT * FROM [Grupos]
inner join Carrera on Grupos.carrera = Carrera.idCarrera WHERE cohorte = @ciclo"> <SelectParameters>
    <asp:QueryStringParameter DefaultValue="0" Name="ciclo" QueryStringField="ciclo" />
</SelectParameters></asp:SqlDataSource>
                                  
                             

                            <!--<ul>
                                <li>
                                    <div class="c-note u-mb-medium">
                                      <span class="c-note__icon">
                                        <i class="feather icon-users"></i>
                                      </span>
                                      <p><a href="#">Geodesia  1 - 1</a></p>
                                    </div>
                                </li>
                            </ul>-->
                        </div>
                    </div>
              

                </div>
            </form>

      </div>
</div><!-- Panel Content -->
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
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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
     <!-- Main JavaScript -->
     <script src="../js/jquery-3.3.1.min.js"></script>
     <script src="../js/neat.min.js?v=1.0"></script>
        <script>
            $(document).ready(function () {
                $('#nota').delay(5000).fadeOut('slow');
            });

            $('#txt_ciclo').change(function () {
                // $(this).val() will work here
                //alert(this.value);
                location.href = "http://facitesistemas.gearhostpreview.com/admin/grupos.aspx?ciclo=" + this.value;
                //$("#div_grupos").load(QueryString + " #div_grupos > *");
            });

            $(document).on('click', '.eliminar', function () {
                swal({
                    title: "¿Desea Eliminar Grupo " + this.id + "?",
                    text: "¡Una vez eliminado se van a desvincular los alumnos que estaban asignados a este grupo!",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true,
                })
                    .then((willDelete) => {
                        if (willDelete) {
                            $.ajax({
                                type: "POST",
                                url: "grupos.asmx/Delete",
                                data: "id=" + this.id, // the data in form-encoded format, ie as it would appear on a querystring
                                //contentType: "application/x-www-form-urlencoded; charset=UTF-8", // if you are using form encoding, this is default so you don't need to supply it
                                dataType: "text", // the data type we want back, so text.  The data will come wrapped in xml
                                success: function (data) {
                                    $('#div_grupos').load(location.href + ' #div_grupos>*', "");
                                    //alert(data);
                                    //location.reload();
                                }
                            });

                            swal("Listo! El grupo fue eliminado correctamente!", {
                                icon: "success",
                            });
                        } else {
                            swal("Se canceló la eliminación del grupo!");
                        }
                    });

            });
       </script>
</body>
</html>