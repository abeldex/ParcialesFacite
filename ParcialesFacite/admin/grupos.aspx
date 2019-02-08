<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grupos.aspx.cs" Inherits="ParcialesFacite.admin.grupos" %>

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

        <h2 class="c-navbar__title">Administración de Grupos</h2>  
            <div class="u-mr-medium">
            <!--BOTON NUEVO CLIENTE -->
            <button class="c-btn c-btn--fullwidth c-btn--outline" data-toggle="modal" data-target="#nuevo_cliente">Usuario: <i id="lbl_usuario" runat="server"></i></button>
        </div>
                </header>

        <div class="container">
            <form id="form1" runat="server">
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
                    <div class="col-lg-8">
                        <div class="c-card">
                            <h4>Grupos Creados</h4>
                           
                                  <!--Aqui pondremos el repeater -->
                                  <asp:Repeater ID="RepeaterGrupos" runat="server" DataSourceID="SqlDataSourceGrupos">
                                          <HeaderTemplate>
                                            <div class="c-table-responsive@wide">
                                           <table class="c-table">
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
                                               <asp:Label ID="lblid" runat="server" Text='<%# Eval("id_grupo") %>' /></td>
                                              <td class="c-table__cell"><asp:Label ID="lblcohorte" runat="server" Text='<%# Eval("cohorte") %>' /></td>
                                              <th class="c-table__cell"><asp:Label ID="lblcarrera" runat="server" Text='<%# Eval("carrera") %>' /></th>
                                              <td class="c-table__cell"><asp:Label ID="lblsemestre" runat="server" Text='<%# Eval("semestre") %>' /></td>
                                              <td class="c-table__cell"><asp:Label ID="lblgrupo" runat="server" Text='<%# Eval("grupo") %>' /></td>
                                              <td class="c-table__cell">
                                                <a class="c-badge c-badge--small c-badge--info" href="#" id="lblturno" runat="server"><%# Eval("turno") %></a>
                                              </td>
                                              <td class="c-table__cell">
                                                <div class="c-dropdown dropdown">
                                                  <a href="#" class="c-btn c-btn--info has-icon dropdown-toggle" id="dropdownMenuTable1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="feather icon-edit"></i>
                                                  </a>
                                                    <div class="c-dropdown__menu dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuTable1">
                                                    <a class="c-dropdown__item dropdown-item" href="asignaralumnos.aspx?grupo=<%# Eval("id_grupo") %>">Asignar Alumnos</a>
                                                    <a class="c-dropdown__item dropdown-item" href="asignarmaestros.aspx?grupo=<%# Eval("id_grupo") %>">Asignar Maestros</a>
                                                    <a class="c-dropdown__item dropdown-item eliminar" id="<%# Eval("id_grupo") %>">Eliminar</a>
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
                                  <asp:SqlDataSource runat="server" ID="SqlDataSourceGrupos" ConnectionString='<%$ ConnectionStrings:TRAYECTORIA_ESCOLARConnectionString %>' SelectCommand="SELECT * FROM [Grupos]"></asp:SqlDataSource>
                                  
                             

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
                     <div class="col-lg-4">
                        <div class="c-card">
                            <h4>Nuevo Grupo</h4>
                                <label class="c-field__label" for="user-plan">Ciclo Escolar</label>
                                <input type="text" class="c-input" placeholder="Ej. 2012-2017" id="txt_cohorte" runat="server" />


                            <label class="c-field__label" for="user-country">Carrera</label>
                            <div class="c-select">
                            <select class="c-select__input" id="txt_carrera" runat="server">
                              <option value="0">Tronco Común</option>
                              <option value="1">Geodesia</option>
                              <option value="2">Geomatica</option>
                              <option value="3">Astronomia</option>
                            </select>
                          </div>  
                            <label class="c-field__label" for="user-country">Semestre</label>
                            <div class="c-select">
                            <select class="c-select__input" id="txt_semestre" runat="server">
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
                            <select class="c-select__input" id="txt_grupo" runat="server">
                              <option value="1">1</option>
                              <option value="2">2</option>
                              <option value="3">3</option>
                            </select>
                          </div>  
                             <label class="c-field__label" for="user-country">Turno</label>
                            <div class="c-select">
                            <select class="c-select__input" id="txt_turno" runat="server">
                              <option value="Matutino">Matutino</option>
                              <option value="Vespertino">Vespertino</option>
                            </select>
                          </div>  
                            <br />
                            <asp:LinkButton ID="btn_guardar" runat="server" CssClass="c-btn c-btn--info c-btn--fullwidt" OnClick="btn_guardar_Click">Registrar Grupo</asp:LinkButton>

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

           $(document).on('click', '.eliminar', function () {
               swal({
                  title: "¿Desea Eliminar Grupo "+this.id+"?",
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
                              $('#RepeaterGrupos').load(location.href + ' #RepeaterGrupos>*', "");
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

