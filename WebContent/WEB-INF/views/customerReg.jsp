<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	 
	 <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous" />
	
	<style type="text/css">
    <%@include file="styles/style_login.css" %></style>

</head>
<body>
     <!--  <form action="/PhoneCart/homePage" method="post">
       Username:<input type="text" name="userName">
       <br/>
       password:<input type="text" name="password">
       <br/>
       <input type="submit" value="Click">
    
    </form>--> 
    
    <div class="container" >
    <div class="d-flex justify-content-center h-100">
        <div class="card" style="height:auto;margin-top:50px">
            <div class="card-header">
                <h3>Sign In</h3>
                <div class="d-flex justify-content-end social_icon">
                    <span><i class="fab fa-facebook-square"></i></span>
                    <span><i class="fab fa-google-plus-square"></i></span>
                    <span><i class="fab fa-twitter-square"></i></span>
                </div>
            </div>
            <div class="card-body">
                	
                	<form action="/PhoneMart/customerLogin" method="post">
                
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"></span>
                        </div>
                        <input type="text" name="name" placeholder="Enter Name" style="width:300px">
                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"></span>
                        </div>
                        <input type="email" name="email"  placeholder="Enter Email" style="width:300px">
                    </div>
                    
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"></span>
                        </div>
                       <input type="text" name="street"  placeholder="Enter Street" style="width:300px">
                    </div>
                    
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"></span>
                        </div>
                        <input type="number" name="houseNo" placeholder="Enter House number" style="width:300px">
                    </div>
                    
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"></span>
                        </div>
                        <input type="text" name="city" placeholder="Enter City" style="width:300px">
                    </div>
                    
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"></span>
                        </div>
                        <input type="number" name="pincode" placeholder="Enter Pincode" style="width:300px">
                    </div>
                    
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"></span>
                        </div>
                        <input type="text" name="state" placeholder="Enter State" style="width:300px">
                    </div>
                    
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"></span>
                        </div>
                        <input type="number" name="contactNo" placeholder="Enter Contact Number" style="width:300px">
                    </div>
                    
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"></span>
                        </div>
                        <input type="password" name="password"  placeholder="Enter Password" style="width:300px">
                    </div>
                    <div class="form-group">
                        <input type="submit" value="SignUp" class="btn float-right login_btn"/>
                    </div>
                </form>
            </div>
            
        </div>
    </div>
</div>

</body>
</html>
