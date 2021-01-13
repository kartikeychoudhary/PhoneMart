<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="http://localhost:8080/PhoneMart/resources/img/apple-icon.png" />
<link rel="icon" type="image/png"
	href="http://localhost:8080/PhoneMart/resources/img/favicon.png" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>PhoneCart</title>
<meta content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
	name="viewport" />
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<!-- CSS Files -->
<link
	href="http://localhost:8080/PhoneMart/resources/css/material-dashboard.css?v=2.1.2"
	rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="http://localhost:8080/PhoneMart/resources/demo/demo.css"
	rel="stylesheet" />
</head>

<body class="">
	<div class="wrapper">
		<div class="sidebar" data-color="danger" data-background-color="black"
			data-image="http://localhost:8080/PhoneMart/resources/img/sidebar-1.jpg">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
			<div class="logo">
				<a href="http://www.creative-tim.com"
					class="simple-text logo-normal"> PhoneMart </a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item "><a class="nav-link"
						href="/PhoneMart/dashboard"> <i class="material-icons">dashboard</i>
							<p>Dashboard</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="/PhoneMart/addPhone">
							<i class="material-icons">person</i>
							<p>Add Phone</p>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/PhoneMart/	adminView">
							<i class="material-icons">content_paste</i>
							<p>View Phone</p>
					</a></li>

					<li class="nav-item active"><a class="nav-link"
						href="/PhoneMart/adminOrder"> <i class="material-icons">store</i>
							<p>Manage Orders</p>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
			<div class="container-fluid">
				<div class="navbar-wrapper">
					<a class="navbar-brand" href="javascript:;">#${
						order.getOrderId() }</a>
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					aria-controls="navigation-index" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="sr-only">Toggle navigation</span> <span
						class="navbar-toggler-icon icon-bar"></span> <span
						class="navbar-toggler-icon icon-bar"></span> <span
						class="navbar-toggler-icon icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end">

					<ul class="navbar-nav">

						<li class="nav-item dropdown"><a class="nav-link"
							href="javascript:;" id="navbarDropdownProfile"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="material-icons">person</i>
								<p class="d-lg-none d-md-block">Account</p>
						</a>
							<div class="dropdown-menu dropdown-menu-right"
								aria-labelledby="navbarDropdownProfile">
								<a class="dropdown-item" href="#">Profile</a> <a
									class="dropdown-item" href="#">Settings</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Log out</a>
							</div></li>
					</ul>
				</div>
			</div>
			</nav>
			<!-- End Navbar -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">

						<div class="col-md-12">
							<div class="card card-chart">

								<div class="card-header card-header-image text-center">
									<img class="card-img-top mx-auto shadow-lg"
										alt="Bootstrap Thumbnail First"
										src="https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-a01core-sm-a013.jpg"
										style="max-height: 150px; max-width: 120px">
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-md-6">
											<h4 class="card-title">${ phone.getPhoneName() }</h4>
											<p class="card-category">
												<!-- <span class="text-success"><i class="fa fa-long-arrow-up"></i> 55% </span> increase in today sales.</p> -->
											<dl class="row">

												<dt class="col-sm-3">brand</dt>
												<dd class="col-sm-9">${ phone.getBrand() }</dd>
												<dt class="col-sm-3">Color</dt>
												<dd class="col-sm-9">${ phone.getFeatures().getColor() }
												</dd>

												<dt class="col-sm-3">Memory</dt>
												<dd class="col-sm-9">${ phone.getFeatures().getMemory() }

												</dd>

												<dt class="col-sm-3">Model</dt>
												<dd class="col-sm-9">${ phone.getModel() }</dd>



											</dl>

											<div class="table">
												<table class="table table-sales">
													<thead>
														<th class="blockquote text-primary">Status</th>
														<th class="blockquote text-success">Bill</th>
													</thead>
													<tbody>
														<tr>
															<td class="blockquote">${ order.getStatus() }</td>
															<td class="blockquote"><i class="fa fa-inr"></i> ${ order.getBill() }
															</td>
														</tr>
													</tbody>
												</table>


											</div>
										</div>

										<div class="col-md-6">
											<h4 class="card-title">Order By ${ customer.getName() }</h4>
											<p class="card-category">
												<!-- <span class="text-success"><i class="fa fa-long-arrow-up"></i> 55% </span> increase in today sales.</p> -->
											</p>

											<dl class="row">


												<dt class="col-sm-3">Contact No</dt>
												<dd class="col-sm-9">${ String.format("%10f", customer.getContactNo()).substring(0,10) }
												</dd>
												<dt class="col-sm-3">Address</dt>
												<dd class="col-sm-9">${ customer.getAddress().getHouseNo() },
													${customer.getAddress().getStreet()}
													<p>${customer.getAddress().getCity()},
														${customer.getAddress().getPincode()}</p>
													<p>${customer.getAddress().getState()}</p>
												</dd>

												<dt class="col-sm-3 text-truncate">email</dt>
												<dd class="col-sm-9">${customer.getEmail()}</dd>


											</dl>

											<div class="row">
												<form class="w-100 row"
													action="/PhoneMart/updateOrderDetails/${order.getOrderId()}/${customer.getCustId()}/${phone.getPhoneId()}"
													method="POST">
													<div class="col-md-6">
														<div class="form-group">
															<select class="form-control" name="status"
																value="${order.getStatus()}">
																<option>Status</option>
																<option value="Ordered">Ordered</option>
																<option value="Packed">Packed</option>
																<option value="Shipped">Shipped</option>
																<option value="Out for Delivery">Out for
																	Delivery</option>
																<option value="Delivered">Delivered</option>
															</select>
														</div>
													</div>
													<div class="col-md-6">
														<button type="submit"
															class="btn btn-success btn-block text-center">
															Update</button>
													</div>
												</form>

											</div>

										</div>

									</div>
								</div>
								<div class="card-footer">


									<div class="row w-100">
										<div class="mx-auto">
											<a href="phone/2" class="btn btn-danger"> Cancel order </a> <a
												href="orderDetails" class="btn btn-info text-center mx-auto">
												Invoice </a>
										</div>

									</div>
								</div>
							</div>

						</div>
					</div>


				</div>

			</div>
		</div>
	</div>
	<footer class="footer"> </footer>
	</div>
	</div>


	<!--   Core JS Files   -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/core/jquery.min.js"></script>
	<script
		src="http://localhost:8080/PhoneMart/resources/js/core/popper.min.js"></script>
	<script
		src="http://localhost:8080/PhoneMart/resources/js/core/bootstrap-material-design.min.js"></script>
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!-- Plugin for the momentJs  -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/moment.min.js"></script>
	<!--  Plugin for Sweet Alert -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/sweetalert2.js"></script>
	<!-- Forms Validations Plugin -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/jquery.validate.min.js"></script>
	<!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/jquery.bootstrap-wizard.js"></script>
	<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/bootstrap-selectpicker.js"></script>
	<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/bootstrap-datetimepicker.min.js"></script>
	<!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/jquery.dataTables.min.js"></script>
	<!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/bootstrap-tagsinput.js"></script>
	<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/jasny-bootstrap.min.js"></script>
	<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/fullcalendar.min.js"></script>
	<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/jquery-jvectormap.js"></script>
	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/nouislider.min.js"></script>
	<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
	<!-- Library for adding dinamically elements -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/arrive.min.js"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chartist JS -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/chartist.min.js"></script>
	<!--  Notifications Plugin    -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
	<script
		src="http://localhost:8080/PhoneMart/resources/js/material-dashboard.js?v=2.1.2"
		type="text/javascript"></script>
	<!-- Material Dashboard DEMO methods, don't include it in your project! -->
	<script src="http://localhost:8080/PhoneMart/resources/demo/demo.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							$()
									.ready(
											function() {
												$sidebar = $(".sidebar");

												$sidebar_img_container = $sidebar
														.find(".sidebar-background");

												$full_page = $(".full-page");

												$sidebar_responsive = $("body > .navbar-collapse");

												window_width = $(window)
														.width();

												fixed_plugin_open = $(
														".sidebar .sidebar-wrapper .nav li.active a p")
														.html();

												if (window_width > 767
														&& fixed_plugin_open == "Dashboard") {
													if ($(
															".fixed-plugin .dropdown")
															.hasClass(
																	"show-dropdown")) {
														$(
																".fixed-plugin .dropdown")
																.addClass(
																		"open");
													}
												}

												$(".fixed-plugin a")
														.click(
																function(event) {
																	// Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
																	if ($(this)
																			.hasClass(
																					"switch-trigger")) {
																		if (event.stopPropagation) {
																			event
																					.stopPropagation();
																		} else if (window.event) {
																			window.event.cancelBubble = true;
																		}
																	}
																});

												$(
														".fixed-plugin .active-color span")
														.click(
																function() {
																	$full_page_background = $(".full-page-background");

																	$(this)
																			.siblings()
																			.removeClass(
																					"active");
																	$(this)
																			.addClass(
																					"active");

																	var new_color = $(
																			this)
																			.data(
																					"color");

																	if ($sidebar.length != 0) {
																		$sidebar
																				.attr(
																						"data-color",
																						new_color);
																	}

																	if ($full_page.length != 0) {
																		$full_page
																				.attr(
																						"filter-color",
																						new_color);
																	}

																	if ($sidebar_responsive.length != 0) {
																		$sidebar_responsive
																				.attr(
																						"data-color",
																						new_color);
																	}
																});

												$(
														".fixed-plugin .background-color .badge")
														.click(
																function() {
																	$(this)
																			.siblings()
																			.removeClass(
																					"active");
																	$(this)
																			.addClass(
																					"active");

																	var new_color = $(
																			this)
																			.data(
																					"background-color");

																	if ($sidebar.length != 0) {
																		$sidebar
																				.attr(
																						"data-background-color",
																						new_color);
																	}
																});

												$(".fixed-plugin .img-holder")
														.click(
																function() {
																	$full_page_background = $(".full-page-background");

																	$(this)
																			.parent(
																					"li")
																			.siblings()
																			.removeClass(
																					"active");
																	$(this)
																			.parent(
																					"li")
																			.addClass(
																					"active");

																	var new_image = $(
																			this)
																			.find(
																					"img")
																			.attr(
																					"src");

																	if ($sidebar_img_container.length != 0
																			&& $(".switch-sidebar-image input:checked").length != 0) {
																		$sidebar_img_container
																				.fadeOut(
																						"fast",
																						function() {
																							$sidebar_img_container
																									.css(
																											"background-image",
																											'url("'
																													+ new_image
																													+ '")');
																							$sidebar_img_container
																									.fadeIn("fast");
																						});
																	}

																	if ($full_page_background.length != 0
																			&& $(".switch-sidebar-image input:checked").length != 0) {
																		var new_image_full_page = $(
																				".fixed-plugin li.active .img-holder")
																				.find(
																						"img")
																				.data(
																						"src");

																		$full_page_background
																				.fadeOut(
																						"fast",
																						function() {
																							$full_page_background
																									.css(
																											"background-image",
																											'url("'
																													+ new_image_full_page
																													+ '")');
																							$full_page_background
																									.fadeIn("fast");
																						});
																	}

																	if ($(".switch-sidebar-image input:checked").length == 0) {
																		var new_image = $(
																				".fixed-plugin li.active .img-holder")
																				.find(
																						"img")
																				.attr(
																						"src");
																		var new_image_full_page = $(
																				".fixed-plugin li.active .img-holder")
																				.find(
																						"img")
																				.data(
																						"src");

																		$sidebar_img_container
																				.css(
																						"background-image",
																						'url("'
																								+ new_image
																								+ '")');
																		$full_page_background
																				.css(
																						"background-image",
																						'url("'
																								+ new_image_full_page
																								+ '")');
																	}

																	if ($sidebar_responsive.length != 0) {
																		$sidebar_responsive
																				.css(
																						"background-image",
																						'url("'
																								+ new_image
																								+ '")');
																	}
																});

												$(".switch-sidebar-image input")
														.change(
																function() {
																	$full_page_background = $(".full-page-background");

																	$input = $(this);

																	if ($input
																			.is(":checked")) {
																		if ($sidebar_img_container.length != 0) {
																			$sidebar_img_container
																					.fadeIn("fast");
																			$sidebar
																					.attr(
																							"data-image",
																							"#");
																		}

																		if ($full_page_background.length != 0) {
																			$full_page_background
																					.fadeIn("fast");
																			$full_page
																					.attr(
																							"data-image",
																							"#");
																		}

																		background_image = true;
																	} else {
																		if ($sidebar_img_container.length != 0) {
																			$sidebar
																					.removeAttr("data-image");
																			$sidebar_img_container
																					.fadeOut("fast");
																		}

																		if ($full_page_background.length != 0) {
																			$full_page
																					.removeAttr(
																							"data-image",
																							"#");
																			$full_page_background
																					.fadeOut("fast");
																		}

																		background_image = false;
																	}
																});

												$(".switch-sidebar-mini input")
														.change(
																function() {
																	$body = $("body");

																	$input = $(this);

																	if (md.misc.sidebar_mini_active == true) {
																		$(
																				"body")
																				.removeClass(
																						"sidebar-mini");
																		md.misc.sidebar_mini_active = false;

																		$(
																				".sidebar .sidebar-wrapper, .main-panel")
																				.perfectScrollbar();
																	} else {
																		$(
																				".sidebar .sidebar-wrapper, .main-panel")
																				.perfectScrollbar(
																						"destroy");

																		setTimeout(
																				function() {
																					$(
																							"body")
																							.addClass(
																									"sidebar-mini");

																					md.misc.sidebar_mini_active = true;
																				},
																				300);
																	}

																	// we simulate the window Resize so the charts will get updated in realtime.
																	var simulateWindowResize = setInterval(
																			function() {
																				window
																						.dispatchEvent(new Event(
																								"resize"));
																			},
																			180);

																	// we stop the simulation of Window Resize after the animations are completed
																	setTimeout(
																			function() {
																				clearInterval(simulateWindowResize);
																			},
																			1000);
																});
											});
						});
	</script>
</body>

</html>