<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="http://localhost:8080/PhoneMart/resources/img/apple-icon.png">
  <link rel="icon" type="image/png" href="http://localhost:8080/PhoneMart/resources/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    PhoneCart
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="http://localhost:8080/PhoneMart/resources/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="http://localhost:8080/PhoneMart/resources/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="black" data-image="http://localhost:8080/PhoneMart/resources/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo"><a href="http://www.creative-tim.com" class="simple-text logo-normal">
         PhoneMart
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item active  ">
            <a class="nav-link" href="dashboard">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="addPhone">
              <i class="material-icons">phone</i>
              <p>Add Phone</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="viewPhone">
              <i class="material-icons">smartphone</i>
              <p>View Phone</p>
            </a>
          </li>
          
          <li class="nav-item">
              <a class="nav-link" href="adminOrder">
                <i class="material-icons">store</i>
                <p>Manage Orders</p>
              </a>
            </li>
          
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="javascript:;">Dashboard</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            
            <ul class="navbar-nav">
              
              <li class="nav-item dropdown">
                <a class="nav-link" href="javascript:;" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                  <a class="dropdown-item" href="#">Profile</a>
                  <a class="dropdown-item" href="#">Settings</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#">Log out</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-warning card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">shopping_cart</i>
                  </div>
                  <p class="card-category">Total Orders</p>
                  <h3 class="card-title">15
                    <small></small>
                  </h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons text-info">info</i>
                    <a href="javascript:;">Get More details.</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-success card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">store</i>
                  </div>
                  <p class="card-category">Revenue</p>
                  <h3 class="card-title">$34,245</h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">date_range</i> Last 24 Hours
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-danger card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">info_outline</i>
                  </div>
                  <p class="card-category">Canceled Orders</p>
                  <h3 class="card-title">2</h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-info card-header-icon">
                  <div class="card-icon">
                    <i class="fa fa-user"></i>
                  </div>
                  <p class="card-category">Total Customers</p>
                  <h3 class="card-title">+245</h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="card card-chart">
                <div class="card-header card-header-success">
                  <div class="ct-chart" id="dailySalesChart"></div>
                </div>
                <div class="card-body">
                  <h4 class="card-title">Daily Sales</h4>
                  <p class="card-category">
                    <span class="text-success"><i class="fa fa-long-arrow-up"></i> 55% </span> increase in today sales.</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i> updated
                  </div>
                </div>
              </div>
            </div>
            
            <div class="col-md-6">
              <div class="card card-chart">
                <div class="card-header card-header-primary">
                  <div class="ct-chart" id="completedTasksChart"></div>
                </div>
                <div class="card-body">
                  <h4 class="card-title">Monthly Orders</h4>
                  <p class="card-category">Last Campaign Performance</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i> updated
                  </div>
                </div>
              </div>
            </div>
          </div>
          
            
            </div>
          </div>
        </div>
      </div>
      <footer class="footer">
       
      </footer>
    </div>
  </div>
  <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
      <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
      </a>
      <ul class="dropdown-menu">
        <li class="header-title"> Sidebar Filters</li>
        <li class="adjustments-line">
          <a href="javascript:void(0)" class="switch-trigger active-color">
            <div class="badge-colors ml-auto mr-auto">
              <span class="badge filter badge-purple" data-color="purple"></span>
              <span class="badge filter badge-azure" data-color="azure"></span>
              <span class="badge filter badge-green" data-color="green"></span>
              <span class="badge filter badge-warning" data-color="orange"></span>
              <span class="badge filter badge-danger" data-color="danger"></span>
              <span class="badge filter badge-rose active" data-color="rose"></span>
            </div>
            <div class="clearfix"></div>
          </a>
        </li>
        <li class="header-title">Images</li>
        <li class="active">
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="http://localhost:8080/PhoneMart/resources/img/sidebar-1.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="http://localhost:8080/PhoneMart/resources/img/sidebar-2.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="http://localhost:8080/PhoneMart/resources/img/sidebar-3.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="http://localhost:8080/PhoneMart/resources/img/sidebar-4.jpg" alt="">
          </a>
        </li>
        <li class="button-container">
          <a href="https://www.creative-tim.com/product/material-dashboard" target="_blank" class="btn btn-primary btn-block">Free Download</a>
        </li>
        <!-- <li class="header-title">Want more components?</li>
            <li class="button-container">
                <a href="https://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-warning btn-block">
                  Get the pro version
                </a>
            </li> -->
        <li class="button-container">
          <a href="https://demos.creative-tim.com/material-dashboard/docs/2.1/getting-started/introduction.html" target="_blank" class="btn btn-default btn-block">
            View Documentation
          </a>
        </li>
        <li class="button-container github-star">
          <a class="github-button" href="https://github.com/creativetimofficial/material-dashboard" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star ntkme/github-buttons on GitHub">Star</a>
        </li>
        <li class="header-title">Thank you for 95 shares!</li>
        <li class="button-container text-center">
          <button id="twitter" class="btn btn-round btn-twitter"><i class="fa fa-twitter"></i> &middot; 45</button>
          <button id="facebook" class="btn btn-round btn-facebook"><i class="fa fa-facebook-f"></i> &middot; 50</button>
          <br>
          <br>
        </li>
      </ul>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="http://localhost:8080/PhoneMart/resources/js/core/jquery.min.js"></script>
  <script src="http://localhost:8080/PhoneMart/resources/js/core/popper.min.js"></script>
  <script src="http://localhost:8080/PhoneMart/resources/js/core/bootstrap-material-design.min.js"></script>
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/sweetalert2.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/jquery.validate.min.js"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/bootstrap-datetimepicker.min.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/jquery.dataTables.min.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/jasny-bootstrap.min.js"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/fullcalendar.min.js"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/nouislider.min.js"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/arrive.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="http://localhost:8080/PhoneMart/resources/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="http://localhost:8080/PhoneMart/resources/js2/material-dashboard.js?v=2.1.2" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script>
    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');

        $sidebar_img_container = $sidebar.find('.sidebar-background');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

        if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
          if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
            $('.fixed-plugin .dropdown').addClass('open');
          }

        }

        $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .active-color span').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-color', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data-color', new_color);
          }
        });

        $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('background-color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-background-color', new_color);
          }
        });

        $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');


          var new_image = $(this).find("img").attr('src');

          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            $sidebar_img_container.fadeOut('fast', function() {
              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $sidebar_img_container.fadeIn('fast');
            });
          }

          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $full_page_background.fadeOut('fast', function() {
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              $full_page_background.fadeIn('fast');
            });
          }

          if ($('.switch-sidebar-image input:checked').length == 0) {
            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
          }
        });

        $('.switch-sidebar-image input').change(function() {
          $full_page_background = $('.full-page-background');

          $input = $(this);

          if ($input.is(':checked')) {
            if ($sidebar_img_container.length != 0) {
              $sidebar_img_container.fadeIn('fast');
              $sidebar.attr('data-image', '#');
            }

            if ($full_page_background.length != 0) {
              $full_page_background.fadeIn('fast');
              $full_page.attr('data-image', '#');
            }

            background_image = true;
          } else {
            if ($sidebar_img_container.length != 0) {
              $sidebar.removeAttr('data-image');
              $sidebar_img_container.fadeOut('fast');
            }

            if ($full_page_background.length != 0) {
              $full_page.removeAttr('data-image', '#');
              $full_page_background.fadeOut('fast');
            }

            background_image = false;
          }
        });

        $('.switch-sidebar-mini input').change(function() {
          $body = $('body');

          $input = $(this);

          if (md.misc.sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            md.misc.sidebar_mini_active = false;

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

          } else {

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

            setTimeout(function() {
              $('body').addClass('sidebar-mini');

              md.misc.sidebar_mini_active = true;
            }, 300);
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);

        });
      });
    });
  </script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      md.initDashboardPageCharts();

    });
  </script>

  <script>
  /*!

  =========================================================
  * Material Dashboard - v2.1.2
  =========================================================

  * Product Page: https://www.creative-tim.com/product/material-dashboard
  * Copyright 2020 Creative Tim (http://www.creative-tim.com)

  * Designed by www.invisionapp.com Coded by www.creative-tim.com

  =========================================================

  * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

  */

 (function() {
   isWindows = navigator.platform.indexOf('Win') > -1 ? true : false;

   if (isWindows) {
     // if we are on windows OS we activate the perfectScrollbar function
     $('.sidebar .sidebar-wrapper, .main-panel, .main').perfectScrollbar();

     $('html').addClass('perfect-scrollbar-on');
   } else {
     $('html').addClass('perfect-scrollbar-off');
   }
 })();


 var breakCards = true;

 var searchVisible = 0;
 var transparent = true;

 var transparentDemo = true;
 var fixedTop = false;

 var mobile_menu_visible = 0,
   mobile_menu_initialized = false,
   toggle_initialized = false,
   bootstrap_nav_initialized = false;

 var seq = 0,
   delays = 80,
   durations = 500;
 var seq2 = 0,
   delays2 = 80,
   durations2 = 500;

 $(document).ready(function() {

   $('body').bootstrapMaterialDesign();

   $sidebar = $('.sidebar');

   md.initSidebarsCheck();

   window_width = $(window).width();

   // check if there is an image set for the sidebar's background
   md.checkSidebarImage();

   //    Activate bootstrap-select
   if ($(".selectpicker").length != 0) {
     $(".selectpicker").selectpicker();
   }

   //  Activate the tooltips
   $('[rel="tooltip"]').tooltip();

   $('.form-control').on("focus", function() {
     $(this).parent('.input-group').addClass("input-group-focus");
   }).on("blur", function() {
     $(this).parent(".input-group").removeClass("input-group-focus");
   });

   // remove class has-error for checkbox validation
   $('input[type="checkbox"][required="true"], input[type="radio"][required="true"]').on('click', function() {
     if ($(this).hasClass('error')) {
       $(this).closest('div').removeClass('has-error');
     }
   });

 });

 $(document).on('click', '.navbar-toggler', function() {
   $toggle = $(this);

   if (mobile_menu_visible == 1) {
     $('html').removeClass('nav-open');

     $('.close-layer').remove();
     setTimeout(function() {
       $toggle.removeClass('toggled');
     }, 400);

     mobile_menu_visible = 0;
   } else {
     setTimeout(function() {
       $toggle.addClass('toggled');
     }, 430);

     var $layer = $('<div class="close-layer"></div>');

     if ($('body').find('.main-panel').length != 0) {
       $layer.appendTo(".main-panel");

     } else if (($('body').hasClass('off-canvas-sidebar'))) {
       $layer.appendTo(".wrapper-full-page");
     }

     setTimeout(function() {
       $layer.addClass('visible');
     }, 100);

     $layer.click(function() {
       $('html').removeClass('nav-open');
       mobile_menu_visible = 0;

       $layer.removeClass('visible');

       setTimeout(function() {
         $layer.remove();
         $toggle.removeClass('toggled');

       }, 400);
     });

     $('html').addClass('nav-open');
     mobile_menu_visible = 1;

   }

 });

 // activate collapse right menu when the windows is resized
 $(window).resize(function() {
   md.initSidebarsCheck();

   // reset the seq for charts drawing animations
   seq = seq2 = 0;

   setTimeout(function() {
     md.initDashboardPageCharts();
   }, 500);
 });

 md = {
   misc: {
     navbar_menu_visible: 0,
     active_collapse: true,
     disabled_collapse_init: 0,
   },

   checkSidebarImage: function() {
     $sidebar = $('.sidebar');
     image_src = $sidebar.data('image');

     if (image_src !== undefined) {
       sidebar_container = '<div class="sidebar-background" style="background-image: url(' + image_src + ') "/>';
       $sidebar.append(sidebar_container);
     }
   },

   showNotification: function(from, align) {
     type = ['', 'info', 'danger', 'success', 'warning', 'rose', 'primary'];

     color = Math.floor((Math.random() * 6) + 1);

     $.notify({
       icon: "add_alert",
       message: "Welcome to <b>Material Dashboard Pro</b> - a beautiful admin panel for every web developer."

     }, {
       type: type[color],
       timer: 3000,
       placement: {
         from: from,
         align: align
       }
     });
   },

   initDocumentationCharts: function() {
     if ($('#dailySalesChart').length != 0 && $('#websiteViewsChart').length != 0) {
       /* ----------==========     Daily Sales Chart initialization For Documentation    ==========---------- */

       dataDailySalesChart = {
         labels: ['M', 'T', 'W', 'T', 'F', 'S', 'S'],
         series: [
           [12, 17, 7, 17, 23, 18, 38]
         ]
       };

       optionsDailySalesChart = {
         lineSmooth: Chartist.Interpolation.cardinal({
           tension: 0
         }),
         low: 0,
         high: 50, // creative tim: we recommend you to set the high sa the biggest value + something for a better look
         chartPadding: {
           top: 0,
           right: 0,
           bottom: 0,
           left: 0
         },
       }

       var dailySalesChart = new Chartist.Line('#dailySalesChart', dataDailySalesChart, optionsDailySalesChart);

       var animationHeaderChart = new Chartist.Line('#websiteViewsChart', dataDailySalesChart, optionsDailySalesChart);
     }
   },


   initFormExtendedDatetimepickers: function() {
     $('.datetimepicker').datetimepicker({
       icons: {
         time: "fa fa-clock-o",
         date: "fa fa-calendar",
         up: "fa fa-chevron-up",
         down: "fa fa-chevron-down",
         previous: 'fa fa-chevron-left',
         next: 'fa fa-chevron-right',
         today: 'fa fa-screenshot',
         clear: 'fa fa-trash',
         close: 'fa fa-remove'
       }
     });

     $('.datepicker').datetimepicker({
       format: 'MM/DD/YYYY',
       icons: {
         time: "fa fa-clock-o",
         date: "fa fa-calendar",
         up: "fa fa-chevron-up",
         down: "fa fa-chevron-down",
         previous: 'fa fa-chevron-left',
         next: 'fa fa-chevron-right',
         today: 'fa fa-screenshot',
         clear: 'fa fa-trash',
         close: 'fa fa-remove'
       }
     });

     $('.timepicker').datetimepicker({
       //          format: 'H:mm',    // use this format if you want the 24hours timepicker
       format: 'h:mm A', //use this format if you want the 12hours timpiecker with AM/PM toggle
       icons: {
         time: "fa fa-clock-o",
         date: "fa fa-calendar",
         up: "fa fa-chevron-up",
         down: "fa fa-chevron-down",
         previous: 'fa fa-chevron-left',
         next: 'fa fa-chevron-right',
         today: 'fa fa-screenshot',
         clear: 'fa fa-trash',
         close: 'fa fa-remove'

       }
     });
   },


   initSliders: function() {
     // Sliders for demo purpose
     var slider = document.getElementById('sliderRegular');

     noUiSlider.create(slider, {
       start: 40,
       connect: [true, false],
       range: {
         min: 0,
         max: 100
       }
     });

     var slider2 = document.getElementById('sliderDouble');

     noUiSlider.create(slider2, {
       start: [20, 60],
       connect: true,
       range: {
         min: 0,
         max: 100
       }
     });
   },

   initSidebarsCheck: function() {
     if ($(window).width() <= 991) {
       if ($sidebar.length != 0) {
         md.initRightMenu();
       }
     }
   },

   checkFullPageBackgroundImage: function() {
     $page = $('.full-page');
     image_src = $page.data('image');

     if (image_src !== undefined) {
       image_container = '<div class="full-page-background" style="background-image: url(' + image_src + ') "/>'
       $page.append(image_container);
     }
   },

   initDashboardPageCharts: function() {

     if ($('#dailySalesChart').length != 0 || $('#completedTasksChart').length != 0 || $('#websiteViewsChart').length != 0) {
       /* ----------==========     Daily Sales Chart initialization    ==========---------- */

       dataDailySalesChart = {
         labels: ['M', 'T', 'W', 'T', 'F', 'S', 'S'],
         series: [
           [1, 2, 3, 2, 2, 5, 8]
         ]
       };

       optionsDailySalesChart = {
         lineSmooth: Chartist.Interpolation.cardinal({
           tension: 0
         }),
         low: 0,
         high: 15, // creative tim: we recommend you to set the high sa the biggest value + something for a better look
         chartPadding: {
           top: 0,
           right: 0,
           bottom: 0,
           left: 0
         },
       }

       var dailySalesChart = new Chartist.Line('#dailySalesChart', dataDailySalesChart, optionsDailySalesChart);

       md.startAnimationForLineChart(dailySalesChart);



       /* ----------==========     Completed Tasks Chart initialization    ==========---------- */

       dataCompletedTasksChart = {
         labels: ['aug','sept', 'oct', 'nov', 'dec', 'jan'],
         series: [
           [10, 20, 30, 25, 35, 45]
         ]
       };

       optionsCompletedTasksChart = {
         lineSmooth: Chartist.Interpolation.cardinal({
           tension: 0
         }),
         low: 0,
         high: 50, // creative tim: we recommend you to set the high sa the biggest value + something for a better look
         chartPadding: {
           top: 0,
           right: 0,
           bottom: 0,
           left: 0
         }
       }

       var completedTasksChart = new Chartist.Line('#completedTasksChart', dataCompletedTasksChart, optionsCompletedTasksChart);

       // start animation for the Completed Tasks Chart - Line Chart
       md.startAnimationForLineChart(completedTasksChart);


       /* ----------==========     Emails Subscription Chart initialization    ==========---------- */

       var dataWebsiteViewsChart = {
         labels: ['J', 'F', 'M', 'A', 'M', 'J', 'J', 'A', 'S', 'O', 'N', 'D'],
         series: [
           [542, 443, 320, 780, 553, 453, 326, 434, 568, 610, 756, 895]

         ]
       };
       var optionsWebsiteViewsChart = {
         axisX: {
           showGrid: false
         },
         low: 0,
         high: 1000,
         chartPadding: {
           top: 0,
           right: 5,
           bottom: 0,
           left: 0
         }
       };
       var responsiveOptions = [
         ['screen and (max-width: 640px)', {
           seriesBarDistance: 5,
           axisX: {
             labelInterpolationFnc: function(value) {
               return value[0];
             }
           }
         }]
       ];
       var websiteViewsChart = Chartist.Bar('#websiteViewsChart', dataWebsiteViewsChart, optionsWebsiteViewsChart, responsiveOptions);

       //start animation for the Emails Subscription Chart
       md.startAnimationForBarChart(websiteViewsChart);
     }
   },

   initMinimizeSidebar: function() {

     $('#minimizeSidebar').click(function() {
       var $btn = $(this);

       if (md.misc.sidebar_mini_active == true) {
         $('body').removeClass('sidebar-mini');
         md.misc.sidebar_mini_active = false;
       } else {
         $('body').addClass('sidebar-mini');
         md.misc.sidebar_mini_active = true;
       }

       // we simulate the window Resize so the charts will get updated in realtime.
       var simulateWindowResize = setInterval(function() {
         window.dispatchEvent(new Event('resize'));
       }, 180);

       // we stop the simulation of Window Resize after the animations are completed
       setTimeout(function() {
         clearInterval(simulateWindowResize);
       }, 1000);
     });
   },

   checkScrollForTransparentNavbar: debounce(function() {
     if ($(document).scrollTop() > 260) {
       if (transparent) {
         transparent = false;
         $('.navbar-color-on-scroll').removeClass('navbar-transparent');
       }
     } else {
       if (!transparent) {
         transparent = true;
         $('.navbar-color-on-scroll').addClass('navbar-transparent');
       }
     }
   }, 17),


   initRightMenu: debounce(function() {
     $sidebar_wrapper = $('.sidebar-wrapper');

     if (!mobile_menu_initialized) {
       $navbar = $('nav').find('.navbar-collapse').children('.navbar-nav');

       mobile_menu_content = '';

       nav_content = $navbar.html();

       nav_content = '<ul class="nav navbar-nav nav-mobile-menu">' + nav_content + '</ul>';

       navbar_form = $('nav').find('.navbar-form').get(0).outerHTML;

       $sidebar_nav = $sidebar_wrapper.find(' > .nav');

       // insert the navbar form before the sidebar list
       $nav_content = $(nav_content);
       $navbar_form = $(navbar_form);
       $nav_content.insertBefore($sidebar_nav);
       $navbar_form.insertBefore($nav_content);

       $(".sidebar-wrapper .dropdown .dropdown-menu > li > a").click(function(event) {
         event.stopPropagation();

       });

       // simulate resize so all the charts/maps will be redrawn
       window.dispatchEvent(new Event('resize'));

       mobile_menu_initialized = true;
     } else {
       if ($(window).width() > 991) {
         // reset all the additions that we made for the sidebar wrapper only if the screen is bigger than 991px
         $sidebar_wrapper.find('.navbar-form').remove();
         $sidebar_wrapper.find('.nav-mobile-menu').remove();

         mobile_menu_initialized = false;
       }
     }
   }, 200),

   startAnimationForLineChart: function(chart) {

     chart.on('draw', function(data) {
       if (data.type === 'line' || data.type === 'area') {
         data.element.animate({
           d: {
             begin: 600,
             dur: 700,
             from: data.path.clone().scale(1, 0).translate(0, data.chartRect.height()).stringify(),
             to: data.path.clone().stringify(),
             easing: Chartist.Svg.Easing.easeOutQuint
           }
         });
       } else if (data.type === 'point') {
         seq++;
         data.element.animate({
           opacity: {
             begin: seq * delays,
             dur: durations,
             from: 0,
             to: 1,
             easing: 'ease'
           }
         });
       }
     });

     seq = 0;
   },
   startAnimationForBarChart: function(chart) {

     chart.on('draw', function(data) {
       if (data.type === 'bar') {
         seq2++;
         data.element.animate({
           opacity: {
             begin: seq2 * delays2,
             dur: durations2,
             from: 0,
             to: 1,
             easing: 'ease'
           }
         });
       }
     });

     seq2 = 0;
   },


   initFullCalendar: function() {
     $calendar = $('#fullCalendar');

     today = new Date();
     y = today.getFullYear();
     m = today.getMonth();
     d = today.getDate();

     $calendar.fullCalendar({
       viewRender: function(view, element) {
         // We make sure that we activate the perfect scrollbar when the view isn't on Month
         if (view.name != 'month') {
           $(element).find('.fc-scroller').perfectScrollbar();
         }
       },
       header: {
         left: 'title',
         center: 'month,agendaWeek,agendaDay',
         right: 'prev,next,today'
       },
       defaultDate: today,
       selectable: true,
       selectHelper: true,
       views: {
         month: { // name of view
           titleFormat: 'MMMM YYYY'
           // other view-specific options here
         },
         week: {
           titleFormat: " MMMM D YYYY"
         },
         day: {
           titleFormat: 'D MMM, YYYY'
         }
       },

       select: function(start, end) {

         // on select we show the Sweet Alert modal with an input
         swal({
             title: 'Create an Event',
             html: '<div class="form-group">' +
               '<input class="form-control" placeholder="Event Title" id="input-field">' +
               '</div>',
             showCancelButton: true,
             confirmButtonClass: 'btn btn-success',
             cancelButtonClass: 'btn btn-danger',
             buttonsStyling: false
           }).then(function(result) {

             var eventData;
             event_title = $('#input-field').val();

             if (event_title) {
               eventData = {
                 title: event_title,
                 start: start,
                 end: end
               };
               $calendar.fullCalendar('renderEvent', eventData, true); // stick? = true
             }

             $calendar.fullCalendar('unselect');

           })
           .catch(swal.noop);
       },
       editable: true,
       eventLimit: true, // allow "more" link when too many events


       // color classes: [ event-blue | event-azure | event-green | event-orange | event-red ]
       events: [{
           title: 'All Day Event',
           start: new Date(y, m, 1),
           className: 'event-default'
         },
         {
           id: 999,
           title: 'Repeating Event',
           start: new Date(y, m, d - 4, 6, 0),
           allDay: false,
           className: 'event-rose'
         },
         {
           id: 999,
           title: 'Repeating Event',
           start: new Date(y, m, d + 3, 6, 0),
           allDay: false,
           className: 'event-rose'
         },
         {
           title: 'Meeting',
           start: new Date(y, m, d - 1, 10, 30),
           allDay: false,
           className: 'event-green'
         },
         {
           title: 'Lunch',
           start: new Date(y, m, d + 7, 12, 0),
           end: new Date(y, m, d + 7, 14, 0),
           allDay: false,
           className: 'event-red'
         },
         {
           title: 'Md-pro Launch',
           start: new Date(y, m, d - 2, 12, 0),
           allDay: true,
           className: 'event-azure'
         },
         {
           title: 'Birthday Party',
           start: new Date(y, m, d + 1, 19, 0),
           end: new Date(y, m, d + 1, 22, 30),
           allDay: false,
           className: 'event-azure'
         },
         {
           title: 'Click for Creative Tim',
           start: new Date(y, m, 21),
           end: new Date(y, m, 22),
           url: 'http://www.creative-tim.com/',
           className: 'event-orange'
         },
         {
           title: 'Click for Google',
           start: new Date(y, m, 21),
           end: new Date(y, m, 22),
           url: 'http://www.creative-tim.com/',
           className: 'event-orange'
         }
       ]
     });
   },

   initVectorMap: function() {
     var mapData = {
       "AU": 760,
       "BR": 550,
       "CA": 120,
       "DE": 1300,
       "FR": 540,
       "GB": 690,
       "GE": 200,
       "IN": 200,
       "RO": 600,
       "RU": 300,
       "US": 2920,
     };

     $('#worldMap').vectorMap({
       map: 'world_mill_en',
       backgroundColor: "transparent",
       zoomOnScroll: false,
       regionStyle: {
         initial: {
           fill: '#e4e4e4',
           "fill-opacity": 0.9,
           stroke: 'none',
           "stroke-width": 0,
           "stroke-opacity": 0
         }
       },

       series: {
         regions: [{
           values: mapData,
           scale: ["#AAAAAA", "#444444"],
           normalizeFunction: 'polynomial'
         }]
       },
     });
   }
 }

 // Returns a function, that, as long as it continues to be invoked, will not
 // be triggered. The function will be called after it stops being called for
 // N milliseconds. If `immediate` is passed, trigger the function on the
 // leading edge, instead of the trailing.

 function debounce(func, wait, immediate) {
   var timeout;
   return function() {
     var context = this,
       args = arguments;
     clearTimeout(timeout);
     timeout = setTimeout(function() {
       timeout = null;
       if (!immediate) func.apply(context, args);
     }, wait);
     if (immediate && !timeout) func.apply(context, args);
   };
 };

  </script>

</body>

</html>