<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css"
	integrity="sha384-DhY6onE6f3zzKbjUPRc2hOzGAdEf4/Dz+WJwBvEYL/lkkIsI3ihufq9hk9K4lVoK"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.min.js"
	integrity="sha384-5h4UG+6GOuV9qXh6HqOLwZMY4mnLPraeTrjT5v07o347pj6IkfuoASuGBhfDsp3d"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>phone</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-3">
				<div class="card p-2">
					<img class="card-img-top p-2 mx-auto" alt="Bootstrap Thumbnail First"
						src="${ phone.getImgUrl() }" style="max-height:150px;max-width:120px"/>
					<div class="card-block">
						<h5 class="card-title p-2">${ phone.getPhoneName() }</h5>
						<p class="card-text p-2">${ phone.getModel() }</p>
						<p>						
							<a class="btn  btn-success btn-block" href="#">Buy</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>