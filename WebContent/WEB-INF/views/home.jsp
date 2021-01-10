<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<title>Home</title>

<meta name="description" content="" />
<meta name="author" content="" />

<!-- Favicon -->
<link rel="icon" href="" />

<!-- Bootstrap 4 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous" />

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous" />
</head>
<body>

	<nav class="nav justify-content-center mb-2"> <a
		class="nav-link active" href="home">Home</a> <a class="nav-link"
		href="add_phone">Cart</a> <a class="nav-link disabled" href="#">Wishlist</a>
	<a class="nav-link disabled" href="#">Logout</a> </nav>
	<div class="container-fluid">
		<div class="row">

			<c:if test="${not empty phones}">
				<c:forEach var=	"phone" items="${phones}" >

					<div class="col-3 my-2">
						<div class="card p-2">
							<img class="card-img-top p-2 mx-auto"
								alt="Bootstrap Thumbnail First" src="${ phone.getImgUrl() }"
								style="max-height: 150px; max-width: 120px">
							<div class="card-block">
								<h5 class="card-title p-2">${ phone.getPhoneName() }</h5>
								<p class="card-text p-2">${ phone.getModel() }</p>
								<a class="btn  btn-success btn-block" href="#">Buy</a>
								</p>
							</div>
						</div>
					</div>

				</c:forEach>
			</c:if>

		</div>
	</div>

	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
		integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"
		crossorigin="anonymous"></script>

	<!-- Tether -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
		integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
		crossorigin="anonymous"></script>

	<!-- Bootstrap 4 -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
		integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
		crossorigin="anonymous"></script>
</body>
</html>
