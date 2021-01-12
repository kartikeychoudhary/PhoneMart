<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta charset="utf-8" />
    <link
      rel="apple-touch-icon"
      sizes="76x76"
      href="../resources/img/apple-icon.png"
    />
    <link rel="icon" type="image/png" href="../resources/img/favicon.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>PhoneCart</title>
    <meta
      content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
      name="viewport"
    />
    <!--     Fonts and icons     -->
    <link
      rel="stylesheet"
      type="text/css"
      href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons"
    />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
    />
    <!-- CSS Files -->
    <link
      href="../resources/css/material-dashboard.css?v=2.1.2"
      rel="stylesheet"
    />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../resources/demo/demo.css" rel="stylesheet" />

    <style>
body{margin-top:20px;
background:#eee;
}

.invoice {
    padding: 30px;
}

.invoice h2 {
	margin-top: 0px;
	line-height: 0.8em;
}

.invoice .small {
	font-weight: 300;
}

.invoice hr {
	margin-top: 10px;
	border-color: #ddd;
}

.invoice .table tr.line {
	border-bottom: 1px solid #ccc;
}

.invoice .table td {
	border: none;
}

.invoice .identity {
	margin-top: 10px;
	font-size: 1.1em;
	font-weight: 300;
}

.invoice .identity strong {
	font-weight: 600;
}


.grid {
    position: relative;
	width: 100%;
	background: #fff;
	color: #666666;
	border-radius: 2px;
	margin-bottom: 25px;
	box-shadow: 0px 1px 4px rgba(0, 0, 0, 0.1);
}

    </style>

  </head>

  <body class="">
    <div class="wrapper">
        <div class="container">
            <div class="row">
                                <!-- BEGIN INVOICE -->
                                <div class="col-xs-12">
                                    <div class="grid invoice">
                                        <div class="grid-body">
                                            <div class="invoice-title">
                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <img src="http://localhost:8080/PhoneMart/resources/logo.png" alt="" height="100">
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <h2>Invoice<br>
                                                        <span class="small">order #${order.getOrderId()}</span></h2>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-6">
                                                    <address>
                                                        <strong>Billed To:</strong><br>
                                                        ${customer.getName()}<br>
                                                        ${address.getHouseNo()}  ${address.getStreet()} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br> 
                                                        ${address.getCity()},  ${address.getPincode()}<br>
                                                        <abbr title="Phone">P:</abbr>  ${customer.getContactNo()}
                                                    </address>
                                                </div>
                                                <div class="col-6 text-right">
                                                    <address>
                                                        <strong>Billed To:</strong><br>
                                                        ${customer.getName()}<br>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${address.getHouseNo()}  ${address.getStreet()}<br>
                                                        ${address.getCity()},  ${address.getPincode()}<br>
                                                        <abbr title="Phone">P:</abbr>  ${customer.getContactNo()}
                                                    </address>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <address>
                                                        <strong>Payment Method:</strong><br>
                                                        Cash On Delivery<br>
                                                        ${customer.getEmail()}<br>
                                                    </address>
                                                </div>
                                                <div class="col-xs-6 text-right">
                                                    <address>
                                                        <strong>Order Date:</strong><br>
                                                        __/__/__
                                                    </address>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <h3>ORDER SUMMARY</h3>
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr class="line">
                                                                <td><strong>#</strong></td>
                                                                <td class="text-center"><strong>Phone</strong></td>
        
                                                                <td class="text-right"><strong>SUBTOTAL</strong></td>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>1</td>
                                                                <td><strong>${phone.getPhoneName()}</strong><br>By ${phone.getBrand()}</td>
                                    
                                                                <td class="text-right">${order.getBill()}</td>
                                                            </tr>
                                                            
                                                            <tr class="line w-100">
                                                                <td style="min-width:75vw" colspan="3">
                                                               
                                                                </td>
                                                  
                                                            </tr>
                                                            <tr>
                                                                <hr>
                                                                <td class="line" colspan="1"></td>
                                                                <td class="text-right"><strong>Taxes</strong></td>
                                                                <td class="text-right"><strong>GST 18%  <i class="fa fa-inr"></i>&nbsp;${order.getBill()*18/100} </strong></td>
                                                            </tr>
                                                            <tr>
                                                                <td  colspan="1">
                                                                </td><td class="text-right"><strong>Total</strong></td>
                                                                <td class="text-right"><strong><i class="fa fa-inr"></i> &nbsp;${order.getBill() + order.getBill()*18/100 }</strong></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>									
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 text-right identity">
                                                    <p>Retailer<br><strong>PhoneMart</strong></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END INVOICE -->
                            </div>
            </div>
    </div>
    <!--   Core JS Files   -->
    <script src="../resources/js/core/jquery.min.js"></script>
    <script src="../resources/js/core/popper.min.js"></script>
    <script src="../resources/js/core/bootstrap-material-design.min.js"></script>
    <script src="../resources/js/plugins/perfect-scrollbar.jquery.min.js"></script>
    <!-- Plugin for the momentJs  -->
    <script src="../resources/js/plugins/moment.min.js"></script>
    <!--  Plugin for Sweet Alert -->
    <script src="../resources/js/plugins/sweetalert2.js"></script>
    <!-- Forms Validations Plugin -->
    <script src="../resources/js/plugins/jquery.validate.min.js"></script>
    <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
    <script src="../resources/js/plugins/jquery.bootstrap-wizard.js"></script>
    <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
    <script src="../resources/js/plugins/bootstrap-selectpicker.js"></script>
    <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
    <script src="../resources/js/plugins/bootstrap-datetimepicker.min.js"></script>
    <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
    <script src="../resources/js/plugins/jquery.dataTables.min.js"></script>
    <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
    <script src="../resources/js/plugins/bootstrap-tagsinput.js"></script>
    <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
    <script src="../resources/js/plugins/jasny-bootstrap.min.js"></script>
    <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
    <script src="../resources/js/plugins/fullcalendar.min.js"></script>
    <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
    <script src="../resources/js/plugins/jquery-jvectormap.js"></script>
    <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
    <script src="../resources/js/plugins/nouislider.min.js"></script>
    <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
    <!-- Library for adding dinamically elements -->
    <script src="../resources/js/plugins/arrive.min.js"></script>
    <!--  Google Maps Plugin    -->
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
    <!-- Chartist JS -->
    <script src="../resources/js/plugins/chartist.min.js"></script>
    <!--  Notifications Plugin    -->
    <script src="../resources/js/plugins/bootstrap-notify.js"></script>
    <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
    <script
      src="../resources/js/material-dashboard.js?v=2.1.2"
      type="text/javascript"
    ></script>
    <!-- Material Dashboard DEMO methods, don't include it in your project! -->
    <script src="../resources/demo/demo.js"></script>
    <script>
     
    </script>
  </body>
</html>
