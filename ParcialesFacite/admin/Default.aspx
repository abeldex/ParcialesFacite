<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ParcialesFacite.admin.Default" %>

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

        <h2 class="c-navbar__title">Administración del Sistema de Captura de Parciales</h2>  
            <div class="u-mr-medium">
            <!--BOTON NUEVO CLIENTE -->
            <button class="c-btn c-btn--fullwidth c-btn--outline" data-toggle="modal" data-target="#nuevo_cliente">Usuario: <i id="lbl_usuario" runat="server"></i></button>
        </div>
                </header>

        <div class="container">
            <form id="form1" runat="server">
                 <div class="row">
                    <div class="col-md-4">
                      <div class="c-state-card c-state-card--primary">
                        <h4 class="c-state-card__title">GRUPOS REGISTRADOS</h4>
                        <span class="c-state-card__number">0</span>
                        <p class="c-state-card__status">
                        </p>    
                      </div>
                    </div>

                     <div class="col-md-4">
                      <div class="c-state-card c-state-card--primary">
                        <h4 class="c-state-card__title">Alumnos Asignados a Grupos</h4>
                        <span class="c-state-card__number">0</span>
                        <p class="c-state-card__status">
                        </p>    
                      </div>
                    </div>

                     <div class="col-md-4">
                      <div class="c-state-card c-state-card--primary">
                        <h4 class="c-state-card__title">Profesores Asignados a Grupos</h4>
                        <span class="c-state-card__number">0</span>
                        <p class="c-state-card__status">
                        </p>    
                      </div>
                    </div>

                </div> <!--row -->
                   
            </form>
        </div>
      </main>
    </div>
     
    <!-- Main JavaScript -->
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/neat.min.js?v=1.0"></script>

  </body>
</html>
