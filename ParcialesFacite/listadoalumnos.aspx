<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listadoalumnos.aspx.cs" Inherits="ParcialesFacite.listadoalumnos" %>

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

    <link rel="stylesheet" href="css/jquery.toast.min.css">
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
          <li><a href="#" title="">Grupos Capturados</a></li>
                 </ul>
      </li>
    
    </ul>
  </nav>
</header><!-- Side Header -->

<form id="form1" runat="server" class="form-wrp">
<div class="pg-tp">
    <i class="ion-ios-book"></i>
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
        <span>Evaluacion de Valoraciones de los Alumnos</span>
    </div>
</div><!-- Page Top -->
    <div class="panel-content">
        <div class="row mrg20">
            <div class="col-md-12 col-sm-12 col-lg-12">
                 <div class="widget grd">
                            <label id="qsgrupo" runat="server" style="display:none"></label>
                            <label id="qsmateria" runat="server" style="display:none"></label>
                            <label id="qsmaestro" runat="server" style="display:none"></label>
                            <label id="qsparcial" runat="server" style="display:none"></label>
                             <asp:Repeater ID="RepeaterLista" runat="server" DataSourceID="SqlDataSourceLista" ClientIDMode="AutoID">
                                          <HeaderTemplate>
                                             
                                           <table class="table table-striped">
                                              <thead >
                                                <tr>
                                                  <th style="text-align:center"><b>Alumno</b></th>
                                                  <th style="text-align:center"><b>Valoracion (0 al 10)</b></th>
                                                  <th style="text-align:center"><b>% Asistencia (0 al 100)</b></th>
                                                  <th style="text-align:center"><b>Observaciones</b></th>
                                                  <th style="text-align:center"><b>Acciones</b></th>
                                                </tr>
                                              </thead>
                                              <tbody>
                                        </HeaderTemplate>
                                      <ItemTemplate>
                                         <tr class="is-disabled" id="td<%# Eval("id_grupo_alumno") %>">
                                             
                                              <td><div class="o-media">
                                                  <div class="o-media__body">
                                                    <small><b><%# Eval("NombreAlumno") %></b></small>
                                                    <p><small><%# Eval("numCuenta") %></small></p>
                                                  </div>
                                                </div></td>
                                              <td>
                                                  <input class="brd-rd5" style="color:green; font-weight: bold; text-align:center;" id="c<%# Eval("id_grupo_alumno") %>" type="number" onchange="handleChangeCal(this);"></td>
                                             <td>
                                                  <input class="brd-rd5" style="color:green; font-weight: bold; text-align:center;" type="number"  id="p<%# Eval("id_grupo_alumno") %>" onchange="handleChangeAsis(this);"></td>
                                              <td>
                                                  <span id="list_observaciones<%# Eval("numCuenta") %>">
                                                        <span class="rdio-bx">
                                                            <input class="c-choice__input" id="checkbox1<%# Eval("id_grupo_alumno") %>" type="checkbox" name="<%# Eval("id_grupo_alumno") %>" value="Llega tarde con frecuencia">
                                                              <label class="c-choice__label" for="checkbox1<%# Eval("id_grupo_alumno") %>">Llega tarde con frecuencia</label>
                                                        </span><br />
                                   
                                                       <span class="rdio-bx">
                                                              <input class="c-choice__input" id="checkbox2<%# Eval("id_grupo_alumno") %>" type="checkbox" name="<%# Eval("id_grupo_alumno") %>" value="Falta con frecuencia a clase">
                                                              <label class="c-choice__label" for="checkbox2<%# Eval("id_grupo_alumno") %>">Falta con frecuencia a clase</label>
                                                       </span>
                                                      <br />
                                                      <span class="rdio-bx">
                                                              <input class="c-choice__input" id="checkbox3<%# Eval("id_grupo_alumno") %>" type="checkbox" name="<%# Eval("id_grupo_alumno") %>" value="Ya no se presenta a curso">
                                                              <label class="c-choice__label" for="checkbox3<%# Eval("id_grupo_alumno") %>">Ya no se presenta a curso</label>
                                                           </span>
                                                      <br />
                                                     <span class="rdio-bx">
                                                              <input class="c-choice__input" id="checkbox4<%# Eval("id_grupo_alumno") %>" type="checkbox" name="<%# Eval("id_grupo_alumno") %>" value="Presenta problemas de disciplina">
                                                              <label class="c-choice__label" for="checkbox4<%# Eval("id_grupo_alumno") %>">Presenta problemas de disciplina</label>
                                                           </span>
                                                      <br />
                                                     <span class="rdio-bx">
                                                              <input class="c-choice__input" id="checkbox5<%# Eval("id_grupo_alumno") %>" type="checkbox" name="<%# Eval("id_grupo_alumno") %>" value="Presenta problemas de concentración">
                                                              <label class="c-choice__label" for="checkbox5<%# Eval("id_grupo_alumno") %>">Presenta problemas de concentración</label>
                                                           </span>
                                                      <br />
                                                      <span class="rdio-bx">
                                                              <input class="c-choice__input" id="checkbox6<%# Eval("id_grupo_alumno") %>" type="checkbox" name="<%# Eval("id_grupo_alumno") %>" value="No manifiesta interés por el curso">
                                                              <label class="c-choice__label" for="checkbox6<%# Eval("id_grupo_alumno") %>">No manifiesta interés por el curso</label>
                                                           </span>
                                                      <br />
                                                     <span class="rdio-bx">
                                                              <input class="c-choice__input" id="checkbox7<%# Eval("id_grupo_alumno") %>" type="checkbox" name="<%# Eval("id_grupo_alumno") %>" value="No cumple con trabajos tareas y/o presentación de exámenes">
                                                              <label class="c-choice__label" for="checkbox7<%# Eval("id_grupo_alumno") %>">No cumple con trabajos, tareas y/o presentación de exámenes</label>
                                                           </span>
                                                      <br />
                                                     <span class="rdio-bx">
                                                              <input class="c-choice__input" id="checkbox8<%# Eval("id_grupo_alumno") %>" type="checkbox" name="<%# Eval("id_grupo_alumno") %>" value="Carece del dominio de conceptos académicos básicos para el curso">
                                                              <label class="c-choice__label" for="checkbox8<%# Eval("id_grupo_alumno") %>">Carece del dominio de conceptos académicos básicos para el curso</label>
                                                           </span>
                                                  </div>  
                                                 
                                              </td>
                                             <td>
                                                 <button style="width:120" class="btn guardar btn-primary" id="<%# Eval("id_grupo_alumno") %>"><i class=" ion-android-done"></i>Guardar</button>
                                                 <button  style="width:120" class="btn btn-warning Delete" id="d<%# Eval("id_grupo_alumno") %>"><i class="ion-android-delete"></i>Ignorar</button>
                                             </td>
                                            </tr>
                                      </ItemTemplate>
                                       <FooterTemplate>
                                        </tbody>
                                        </table>
                                           </FooterTemplate>
                                  </asp:Repeater>
                            <asp:SqlDataSource runat="server" ID="SqlDataSourceLista" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT id_grupo_alumno, id_grupo, Alumno.numCuenta, NombreAlumno FROM Grupos_Alumnos 
inner join Alumno on Grupos_Alumnos.numCuenta = Alumno.numCuenta
where id_grupo = @grupo and id_grupo_alumno NOT IN (select grupo_alumno from Evaluaciones_Parciales where materia = @materia and maestro = @maestro and parcial=@parcial)">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="0" Name="grupo" QueryStringField="grupo" />
									<asp:QueryStringParameter DefaultValue="0" Name="parcial" QueryStringField="parcial" />
                                    <asp:QueryStringParameter QueryStringField="materia" DefaultValue="0" Name="materia"></asp:QueryStringParameter>
									<asp:SessionParameter Name="maestro" SessionField="usuario" DefaultValue="0" />
                                </SelectParameters>
                                      
                            </asp:SqlDataSource>   

                     <button class="btn btn-block btn-success" id="btn_finalizar">Finalizar</button>

                    
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
          <script src="js/jquery.toast.min.js"></script>

      <script>
          function SubmitButtonOnclick() {
              alert("22");
              return false;
          }

          $(document).on('click', '.Delete', function (e) {
              var id = this.id;
              delid = id.substring(1, id.length);
              var materia = document.getElementById('qsmateria');
              var maestro = document.getElementById('qsmaestro');
              var parcial = document.getElementById('qsparcial');

              $.ajax({
                  type: "POST",
                  url: "capturas.asmx/Ignorar",
                  data: "grupo_alumno=" + delid + "&materia=" + materia.innerText + "&maestro=" + maestro.innerText + "&parcial=" + parcial.innerText, // the data in form-encoded format, ie as it would appear on a querystring
                  //contentType: "application/x-www-form-urlencoded; charset=UTF-8", // if you are using form encoding, this is default so you don't need to supply it
                  dataType: "text", // the data type we want back, so text.  The data will come wrapped in xml
                  success: function (data) {
                      $.toast({
                          text: data, // Text that is to be shown in the toast
                          heading: 'Correcto!', // Optional heading to be shown on the toast
                          icon: 'success', // Type of toast icon
                          showHideTransition: 'slide', // fade, slide or plain
                          allowToastClose: true, // Boolean value true or false
                          hideAfter: 3000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
                          stack: 5, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
                          position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values         
                          textAlign: 'left',  // Text alignment i.e. left, right or center
                          loader: true,  // Whether to show loader or not. True by default
                          loaderBg: '#9EC600',  // Background color of the toast loader
                      });


                  }
              });
              $(this).parent().parent().remove();
              e.preventDefault();
          });

          $(document).on('click', '#btn_finalizar', function (event) {
              event.preventDefault();
              $(location).attr('href', 'http://facitesistemas.gearhostpreview.com/capturar.aspx')
              //alert('okei');
          });

          $(document).ready(function () {

              $.toast({
                  text: "¡Por favor ingrese los datos solicitados para cada uno de los alumnos asignados y presione el boton Guardar correspondiente o Ignorar si el alumno no se encuentra en su grupo!", // Text that is to be shown in the toast
                  heading: 'Iniciando el Proceso de Captura de Calificaciones Parciales con sus Valoraciones!', // Optional heading to be shown on the toast
                  icon: 'info', // Type of toast icon
                  showHideTransition: 'slide', // fade, slide or plain
                  allowToastClose: true, // Boolean value true or false
                  hideAfter: 15000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
                  stack: 5, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
                  position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values         
                  textAlign: 'left',  // Text alignment i.e. left, right or center
                  loader: true,  // Whether to show loader or not. True by default
                  loaderBg: '#9EC600',  // Background color of the toast loader
              });

          });

          $(document).on('click', '.guardar', function (event) {
              event.preventDefault();
              //alert(this.id);
              var calificacion = document.getElementById('c' + this.id);
              var porcentaje = document.getElementById('p' + this.id);
              var ignorar = document.getElementById('d' + this.id);
              var btn = document.getElementById(this.id);
              //alert(calificacion.value);
              //alert(porcentaje.value);
              //grt selected items from listbox
              var observaciones = [];
              $.each($("input[name='" + this.id + "']:checked"), function () {
                  observaciones.push($(this).val());
              });
              var obs = observaciones.join(", ");
              //alert("Las observaciones son: " + obs);

              //var grupo = document.getElementById('qsgrupo');
              var materia = document.getElementById('qsmateria');
              var maestro = document.getElementById('qsmaestro');
              var parcial = document.getElementById('qsparcial');
              //alert(materia.innerText);
              //alert(maestro.innerText);

              $.ajax({
                  type: "POST",
                  url: "capturas.asmx/Insert",
                  data: "grupo_alumno=" + this.id + "&materia=" + materia.innerText + "&calificacion=" + calificacion.value + "&observaciones=" + obs + "&maestro=" + maestro.innerText + "&asistencia=" + porcentaje.value + "&parcial=" + parcial.innerText, // the data in form-encoded format, ie as it would appear on a querystring
                  //contentType: "application/x-www-form-urlencoded; charset=UTF-8", // if you are using form encoding, this is default so you don't need to supply it
                  dataType: "text", // the data type we want back, so text.  The data will come wrapped in xml
                  success: function (data) {
                      //$('#tabla').load(location.href + ' #tabla>*', "");
                      //location.reload();
                      //alert(data);
                      $.toast({
                          text: data, // Text that is to be shown in the toast
                          heading: 'Correcto!', // Optional heading to be shown on the toast
                          icon: 'success', // Type of toast icon
                          showHideTransition: 'slide', // fade, slide or plain
                          allowToastClose: true, // Boolean value true or false
                          hideAfter: 3000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
                          stack: 5, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
                          position: 'top-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values         
                          textAlign: 'left',  // Text alignment i.e. left, right or center
                          loader: true,  // Whether to show loader or not. True by default
                          loaderBg: '#9EC600',  // Background color of the toast loader
                      });
                      btn.disabled = true;
                      btn.innerHTML = "Capturado";
                      calificacion.disabled = true;
                      observaciones.disabled = true;
                      porcentaje.disabled = true;
                      ignorar.disabled = true;
                  }
              });

          });


          $(document).on('click', '#btn_finalizar', function (event) {
              event.preventDefault();
              //alert('okei');
          });

      </script>
	  
		<script>
            function handleChangeCal(input) {
                if (input.value < 0) input.value = 0;
                if (input.value > 10) input.value = 10;
            }

            function handleChangeAsis(input) {
                if (input.value < 0) input.value = 0;
                if (input.value > 100) input.value = 100;
            }
		</script>
</body>
</html>