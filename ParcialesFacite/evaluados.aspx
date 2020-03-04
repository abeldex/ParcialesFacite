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
    <link rel="stylesheet" href="css/jquery.toast.min.css">

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
          <li><a href="capturados.aspx" title="">Grupos Capturados</a></li>
                 </ul>
      </li>
    
    </ul>
  </nav>
</header><!-- Side Header -->

<form id="form1" runat="server" class="form-wrp">
  <div  id="i_reportes">
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
<button type="button" style="float:right;" class="btn btn-primary tbl_ops" ID="print"><i class=" ion-android-print"></i> Imprimir</button>
<div class="panel-content">
        <div class="row mrg20">
            <div class="col-md-12 col-sm-12 col-lg-12" >
                
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
                                                  <th style="text-align:center" class="tbl_ops"><b>Acciones</b></th>
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
                                                  <input style="color:green; font-weight: bold; text-align:center;" disabled class="brd-rd5" type="text" id="c<%# Eval("id_ep") %>" value="<%# Eval("calificacion") %>" type="number" onchange="handleChangeCal(this);"></td>
                                             <td>
                                                  <input style="color:green; font-weight: bold; text-align:center;" disabled class="brd-rd5" type="text"  id="a<%# Eval("id_ep") %>" value="<%# Eval("asistencia") %>" type="number" onchange="handleChangeAsis(this);"></td>
                                              <td id="o<%# Eval("id_ep") %>">
                                                  <small><%# Eval("observaciones") %></small>
                                              </td>
                                             <td class="tbl_ops">
                                                 <button style="width:120" class="btn btn-primary editar" id="<%# Eval("id_ep") %>"><i class="ion-edit"></i>Editar</button>
                                                 <button style="width:120; display:none" class="btn btn-success guardar" id="g<%# Eval("id_ep") %>"><i class="ion-save"></i>Guardar</button>
												 <button  style="width:120; display:none" class="btn btn-warning Delete" id="d<%# Eval("id_ep") %>"><i class="ion-android-delete"></i>Ignorar</button>
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
where materia = @materia and maestro = @maestro and ga.id_grupo = @grupo and parcial = @parcial">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="0" Name="grupo" QueryStringField="grupo" />
									<asp:QueryStringParameter DefaultValue="0" Name="parcial" QueryStringField="parcial" />
                                    <asp:SessionParameter DefaultValue="0" Name="maestro" SessionField="usuario" />
                                    <asp:QueryStringParameter QueryStringField="materia" DefaultValue="0" Name="materia"></asp:QueryStringParameter>
                                </SelectParameters>
                                      
                            </asp:SqlDataSource>                   
                        
                 
                 </div>
        </div>
      </div>

</div><!-- Panel Content -->
</div>
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
    <script src="js/jquery-printme.min.js" type="text/javascript"></script>    
   

    <script>
        //Script para imprimir
        $(document).on('click', '#print', function (e) {
            e.preventDefault();
            $(".tbl_ops").hide();
            $("#i_reportes").printMe({ "path": ["css/main.css"] });
            $(".tbl_ops").show();
        });

        $(document).on('click', '.editar', function (e) {
            //obtener el id del boton
            var id = this.id;

            //var obs = $('#o' + id).text();
            //habilitar las cajas de text
            $('#c' + id).prop("disabled", false);
            $('#a' + id).prop("disabled", false);


            apnd = '<span id="list_observaciones"> ' +
                '<span class="rdio-bx">' +
                '    <input class="c-choice__input" id="checkbox1' + id + '" type="checkbox" name="c' + id + '" value="Llega tarde con frecuencia">' +
                '      <label class="c-choice__label" for="checkbox1' + id + '">Llega tarde con frecuencia</label>' +
                '</span><br />' +
                '<span class="rdio-bx">' +
                '     <input class="c-choice__input" id="checkbox2' + id + '" type="checkbox" name="c' + id + '" value="Falta con frecuencia a clase">' +
                '     <label class="c-choice__label" for="checkbox2' + id + '">Falta con frecuencia a clase</label>' +
                '</span>' +
                '<br />' +
                '<span class="rdio-bx">' +
                '        <input class="c-choice__input" id="checkbox3' + id + '" type="checkbox" name="c' + id + '" value="Ya no se presenta a curso">' +
                '        <label class="c-choice__label" for="checkbox3' + id + '">Ya no se presenta a curso</label>' +
                '     </span>' +
                '<br />' +
                '<span class="rdio-bx">' +
                '         <input class="c-choice__input" id="checkbox4' + id + '" type="checkbox" name="c' + id + '" value="Presenta problemas de disciplina">' +
                '         <label class="c-choice__label" for="checkbox4' + id + '">Presenta problemas de disciplina</label>' +
                '      </span>' +
                ' <br />' +
                '<span class="rdio-bx">' +
                '         <input class="c-choice__input" id="checkbox5' + id + '" type="checkbox" name="c' + id + '" value="Presenta problemas de concentración">' +
                '         <label class="c-choice__label" for="checkbox5' + id + '">Presenta problemas de concentración</label>' +
                '      </span>' +
                ' <br />' +
                ' <span class="rdio-bx">' +
                '         <input class="c-choice__input" id="checkbox6' + id + '" type="checkbox" name="c' + id + '" value="No manifiesta interés por el curso">' +
                '         <label class="c-choice__label" for="checkbox6' + id + '">No manifiesta interés por el curso</label>' +
                '      </span>' +
                ' <br />' +
                '<span class="rdio-bx">' +
                '         <input class="c-choice__input" id="checkbox7' + id + '" type="checkbox" name="c' + id + '" value="No cumple con trabajos tareas y/o presentación de exámenes">' +
                '         <label class="c-choice__label" for="checkbox7' + id + '">No cumple con trabajos, tareas y/o presentación de exámenes</label>' +
                '      </span>' +
                ' <br />' +
                '<span class="rdio-bx">' +
                '         <input class="c-choice__input" id="checkbox8' + id + '" type="checkbox" name="c' + id + '" value="Carece del dominio de conceptos académicos básicos para el curso">' +
                '         <label class="c-choice__label" for="checkbox8' + id + '">Carece del dominio de conceptos académicos básicos para el curso</label>' +
                '      </span>' +
                '</div>  ';
            $('#o' + id).empty().append(apnd);
            $('#' + id).attr("style", "display: none !important; width:120;");
            $('#g' + id).attr("style", "display: block !important; width:120;");
            $('#d' + id).attr("style", "display: block !important; width:120;");

            e.preventDefault();
        });

        $(document).on('click', '.Delete', function (e) {
            var id = this.id;
            delid = id.substring(1, id.length);
            alert(delid);
            $.ajax({
                type: "POST",
                url: "capturas.asmx/ActualizarIgnorar",
                data: "id_ep=" + delid, // the data in form-encoded format, ie as it would appear on a querystring
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

            e.preventDefault();
        });

        //evento click del boton guardar
        $(document).on('click', '.guardar', function (e) {
            //obtener el id del boton
            var id = this.id;
            itemid = id.substring(1, id.length);
            //obtener los valores de las cajas de texto
            var cal = $('#c' + itemid).val();
            var asis = $('#a' + itemid).val();

            //grt selected items from listbox
            var observaciones_chk = [];
            //alert("name of checks: c" + itemid);
            $.each($("input[name='c" + itemid + "']:checked"), function () {
                observaciones_chk.push($(this).val());
            });

            var obs = observaciones_chk.join(", ");


            //alert('id: ' + itemid + ' | cal: ' + cal + " | asis: " + asis + " | " + obs );

            //guardar en la base de datos mandando llmaar el webservice Editar
            $.ajax({
                type: "POST",
                url: "capturas.asmx/Actualizar",
                data: "id_ep=" + itemid + "&calificacion=" + cal + "&observaciones=" + obs + "&asistencia=" + asis, // the data in form-encoded format, ie as it would appear on a querystring
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
                    //actualizamos la vista de los controles
                    $('#' + itemid).attr("style", "display: block !important; width:120;");
                    $('#g' + itemid).attr("style", "display: none !important; width:120;");
                    $('#c' + id).prop("disabled", true);
                    $('#a' + id).prop("disabled", true);
                    apnd2 = '<small>' + obs + '</small>';
                    $('#o' + itemid).empty().append(apnd2);
                }
            });


            e.preventDefault();
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
