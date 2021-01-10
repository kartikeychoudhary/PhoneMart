<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Edit Phone</title>

    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- Favicon -->
    <link rel="icon" href="" />

    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
        integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous" />

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />

    <style>
        .vertical-center {
            min-height: 100vh;
            /* These two lines are counted as one :-)       */
        }
    </style>
</head>

<body>
    <div class="jumbotron vertical-center">
        <div class="container">
            <div class="row">

                <div class="col-12">

                    <form action="/PhoneMart/update/${phone.getPhoneId()}">
                        <div class="row">

                            <div class="col-6">
                                <div class="form-group">
                                    <label for="">Phone Name</label>
                                    <input type="text" class="form-control" name="phoneName" aria-describedby="helpId"
                                        placeholder=" Enter Phone Name" value="${ phone.getPhoneName() }"/>
                                </div>

                                <div class="form-group">
                                    <label for="">Brand</label>
                                    <input type="text" class="form-control" name="brand" aria-describedby="helpId"
                                        placeholder="Enter Brand" value="${phone.getBrand()}"/>
                                </div>

                                <div class="form-group">
                                    <label for="">Model</label>
                                    <input type="text" class="form-control" name="model" aria-describedby="helpId"
                                        placeholder="Enter Model" value="${phone.getModel()}"/>
                                </div>

                                <div class="form-group">
                                    <label for="">Cost</label>
                                    <input type="number" class="form-control" name="cost" aria-describedby="helpId"
                                        placeholder="Enter Cost" value="${phone.getCost()}"/>
                                </div>

                                <div class="form-group">
                                    <label for="">Image Url</label>
                                    <input type="text" class="form-control" name="imgUrl" aria-describedby="helpId"
                                        placeholder="Enter Model" value="${phone.getImgUrl()}"/>
                                </div>

                            </div>

                            <div class="col-6">

                                <div class="form-group">
                                    <label for="">Color</label>
                                    <input type="text" class="form-control" name="color" aria-describedby="helpId"
                                        placeholder="Enter color" value="${phone.getFeatures().getColor()}"/>
                                </div>

                                <div class="form-group">
                                    <label for="">Dimensions</label>
                                    <input type="text" class="form-control" name="dimensions" aria-describedby="helpId"
                                        placeholder="Enter Dimensions" value="${phone.getFeatures().getDimensions()}"/>
                                </div>

                                <div class="form-group">
                                    <label for="">Battery</label>
                                    <input type="text" class="form-control" name="battery" aria-describedby="helpId"
                                        placeholder="Enter Battery" value="${phone.getFeatures().getBattery()}"/>
                                </div>

                                <div class="form-group">
                                    <label for="">Selfie Camera</label>
                                    <input type="text" class="form-control" name="selfieCamera" aria-describedby="helpId"
                                        placeholder="Enter Selfie Camera" value="${phone.getFeatures().getSelfieCamera()}"/>
                                </div>

                                <div class="form-group">
                                    <label for="">Main Camera</label>
                                    <input type="text" class="form-control" name="mainCamera" aria-describedby="helpId"
                                        placeholder="Enter Main Camera" value="${phone.getFeatures().getMainCamera()}"/>
                                </div>

                            </div>

                        </div>

                        <div class="form-group">
                            <label for="">Processor</label>
                            <input type="text" class="form-control" name="processor" aria-describedby="helpId"
                                placeholder="Enter Processor" value="${phone.getFeatures().getProcessor()}"/>
                        </div>

                        <div class="form-group">
                            <label for="">Memory</label>
                            <input type="text" class="form-control" name="memory" aria-describedby="helpId"
                                placeholder="Enter Memory" value="${phone.getFeatures().getMemory()}" />
                        </div>

                        <div class="form-group">
                            <label for="">OS</label>
                            <input type="text" class="form-control" name="os" aria-describedby="helpId"
                                placeholder="Enter OS" value="${phone.getFeatures().getOs()}"/>
                        </div>



                        <button type="submit" class="btn btn-success btn-block">Update</button>
                    </form>

                </div>


            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
        integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous">
    </script>

    <!-- Tether -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
        integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous">
    </script>

    <!-- Bootstrap 4 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
        integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous">
    </script>
</body>

</html>