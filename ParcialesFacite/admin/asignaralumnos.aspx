﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="asignaralumnos.aspx.cs" Inherits="ParcialesFacite.admin.asignaralumnos" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Captura de Evaluaciones Parciales | FACITE</title>
    <meta name="description" content="Neat">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

    <!-- Favicon -->
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="../css/neat.min.css?v=1.0">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


      <style type="text/css">
   /*AutoComplete flyout */
        .completionList {
        border:solid 1px #444444;
        margin:0px;
        padding:2px;
        height: 100px;
        overflow:auto;
        background-color: #FFFFFF;
        font-family:Calibri;
        }

        .listItem {
        color: #1C1C1C;
        }

        .itemHighlighted {
        background-color: #abcdf4;
        }
   </style>

     
  </head>
  <body>

    <div class="o-page">
      <div class="o-page__sidebar js-page-sidebar">
        <aside class="c-sidebar" style="background-image:url('../img/cabecera22.png');">
          <div class="c-sidebar__brand">
            <a href="#"><img src="../img/logo3.png" alt="LOGO FACITE"></a>
          </div>

          <!-- Scrollable -->
          <div class="c-sidebar__body">
            <span class="c-sidebar__title">MENU PRINCIPAL</span>
            <ul class="c-sidebar__list">
                  <li>
                <a class="c-sidebar__link" href="../admin/" style="color: white !important;">
                  <i class="c-sidebar__icon feather icon-home" style="color: white !important;"></i>Inicio
                </a>
              </li>
              <li>
                <a class="c-sidebar__link" href="../admin/grupos.aspx" style="color: white !important;">
                  <i class="c-sidebar__icon feather icon-edit" style="color: white !important;"></i>Administración de Grupos
                </a>
              </li>
             
            </ul>

			
			
			
          </div>
          

          <a class="c-sidebar__footer" href="#">
            Salir <i class="c-sidebar__footer-icon feather icon-power"></i>
          </a>
        </aside>
      </div>

      <main class="o-page__content">
        <header class="c-navbar u-mb-medium">
          <button class="c-sidebar-toggle js-sidebar-toggle">
            <i class="feather icon-align-left"></i>
          </button>

        <h2 class="c-navbar__title">Asignación de Alumnos al Grupo #<%=this.Request.QueryString["grupo"]%></h2>  
            <div class="u-mr-medium">
            <!--BOTON NUEVO CLIENTE -->
            <button class="c-btn c-btn--fullwidth c-btn--outline" data-toggle="modal" data-target="#nuevo_cliente">Usuario: <i id="lbl_usuario" runat="server"></i></button>
        </div>
                </header>

        <div class="container">
            <form id="form1" runat="server">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <div class="row">
                    <div class="col-md-12" id="nota" runat="server">
                      <div class="c-alert c-alert--info alert u-mb-medium" id="">
                        <span class="c-alert__icon">
                          <i class="feather icon-info"></i>
                        </span>

                        <div class="c-alert__content">
                          <h4 class="c-alert__title" id="lbl_info" runat="server"></h4>
                        </div>

                        <button class="c-close" data-dismiss="alert" type="button">×</button>
                      </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="c-card">
                            <h4>Alumnos Asignados</h4>
                            
                                  <!--Aqui pondremos el repeater -->
                                  <asp:Repeater ID="RepeaterGrupos" runat="server" DataSourceID="SqlDataSourceGrupos">
                                          <HeaderTemplate>
                                           <div class="c-feed" id="tabla">
                                        </HeaderTemplate>
                                      <ItemTemplate>
                                          <div class="c-feed__item c-feed__item--success">
                                            <p class="u-text-success"><%# Eval("numCuenta") %></p>
                                             <p><b><small><%# Eval("NombreAlumno") %></small></b></p>
                                            <p class="u-text-xsmall"><a href="#" class="eliminar" id="<%# Eval("id_grupo_alumno") %>" /><i class="feather icon-trash"></i></a></p>
                                          </div>
                                      </ItemTemplate>
                                       <FooterTemplate>
                                         </div><!-- // .c-feed -->
                                           </FooterTemplate>
                                  </asp:Repeater>
                                  <asp:SqlDataSource runat="server" ID="SqlDataSourceGrupos" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT id_grupo_alumno, id_grupo, Alumno.numCuenta, Alumno.NombreAlumno FROM Grupos_Alumnos
inner join Alumno on Grupos_Alumnos.numCuenta = Alumno.numCuenta
 WHERE id_grupo = @grupo">
                                      <SelectParameters>
                                          <asp:QueryStringParameter DefaultValue="0" Name="grupo" QueryStringField="grupo" />
                                      </SelectParameters>
                            </asp:SqlDataSource>   

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
                     <div class="col-lg-6">
                        <div class="c-card">
                            <h4>Asignar Alumnos</h4>
                           
                            <asp:TextBox ID="txt_alumno" CssClass="c-input" runat="server" CompletionListCssClass="completionList" Width="100%"></asp:TextBox>

                                <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txt_alumno"

         MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000"

         ServiceMethod="GetAlumnos" CompletionListCssClass="completionList"
     CompletionListHighlightedItemCssClass="itemHighlighted"
     CompletionListItemCssClass="listItem" ></asp:AutoCompleteExtender>
                                
                            <br />
                            <button type="button" class="c-btn" id="btn_guardar">Asignar</button>
                    </div>
                         </div>

                </div>
            </form>
        </div>
      </main>
    </div>
     
    <!-- Main JavaScript -->
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/neat.min.js?v=1.0"></script>
       <script>
          $(document).ready(function () {
              $('#nota').delay(5000).fadeOut('slow');
           });

           $(document).on('click', '#btn_guardar', function () {
               if ($('#txt_alumno').val() != "") {
                      var alumno = $('#txt_alumno').val();
                      var nocuenta = /\(([^)]*)\)/.exec(alumno)[1];
                      var gpo = '<%=this.Request.QueryString["grupo"]%>';

                      //alert("cuenta:" + nocuenta + " / Grupo: " + gpo);

                      var formData = {
                          cuenta: nocuenta,
                          grupo: gpo
                      };
                      $.ajax({
                          type: "POST",
                          url: "asignaralumno.asmx/Insert",
                          data: "cuenta=" + nocuenta + "&grupo=" + gpo, // the data in form-encoded format, ie as it would appear on a querystring
                          //contentType: "application/x-www-form-urlencoded; charset=UTF-8", // if you are using form encoding, this is default so you don't need to supply it
                          dataType: "text", // the data type we want back, so text.  The data will come wrapped in xml
                          success: function (data) {
                              //$('#tabla').load(location.href + ' #tabla>*', "");
                               location.reload();
                              $('#txt_alumno').val('');
                              //alert(data);
                          }
                      });
                  }
                  else {
                      //alert('Seleccione un alumno primero');
                      swal("Seleccione un alumno primero!");

                  }
           });

           $(document).on('click', '.eliminar', function () {

               swal({
                  title: "¿Desea Eliminar al alumno del grupo?",
                  text: "¡Una vez eliminado no aparecerá en las listas de los profesores asignados a este grupo!",
                  icon: "warning",
                  buttons: true,
                  dangerMode: true,
                })
                .then((willDelete) => {
                    if (willDelete) {
                        $.ajax({
                          type: "POST",
                          url: "asignaralumno.asmx/Delete",
                          data: "id=" + this.id, // the data in form-encoded format, ie as it would appear on a querystring
                          //contentType: "application/x-www-form-urlencoded; charset=UTF-8", // if you are using form encoding, this is default so you don't need to supply it
                          dataType: "text", // the data type we want back, so text.  The data will come wrapped in xml
                          success: function (data) {
                              //$('#RepeaterGrupos').load(location.href + ' #RepeaterGrupos>*', "");
                              //alert(data);
                              location.reload();
                          }
                      });

                    swal("Listo! El alumno fue eliminado correctamente!", {
                      icon: "success",
                    });
                  } else {
                    swal("Se canceló la eliminación del alumno del grupo!");
                  }
                });
            
            });
        
      </script>
  </body>
</html>

