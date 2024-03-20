
<%@page import="com.project.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User_Page</title>
        <!-- css -->

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/new.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <!-- nav  bar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
            <a class="navbar-brand" href="Login_Page.jsp"> <span class = "fa fa-asterisk"> </span> Bike renting</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp"> <span class = "fa fa-home"> Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"> <span class = "fa fa-info-circle">  About</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class = "fa fa-motorcycle">    categories
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="Login_Page.jsp">High Speed</a>
                            <a class="dropdown-item" href="Login_Page.jsp">Normal Speed</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="Login_Page.jsp">Low speed</a>
                        </div>
                    </li>
                   

                </ul>

                <ul class="navbar-nav mr-right">


                    <li class="nav-item">
                        <a class="nav-link disabled text-white" href="LogoutServele">  <span class = "fa fa-home"> Log out</a>
                    </li>
                </ul>

            </div>
        </nav>
        <!-- nav bar end -->

        <div  class = "container-fluid p-0 m-50 "  >

            <div class ="jumbotron " style="background-color:#81d4fa">

                <div class="container "  >   
                    <h1 class = "display-5 text-center"> Get in Touch  </h1>
                    <h2 > Mayank bike rent center </h2>
                    <p> Contace : 620142887 </p>
                    <p> E-mail : mg30375@gmail.com </p>
                    <p> Instagram page : mayankgoyal5230  </p>
                    <p>Modern Valley near Kharar</p>
                    <a href="https://www.instagram.com/" class = "btn btn-outline-dark btn-lg "> <span class="fa  fa-instagram"></span> Follow us for more regular update</a>
                </div>
            </div>      
        </div>

        <!-- End BANNER -->
        <div class="container">
            <div class="row">

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                             <h>Insert Bike</h>
                              <a href="bikeInsert.jsp" class = "btn btn-outline-dark btn-lg "> Insert as Admin </a>
                   
                        </div>
                    </div>
                </div>  
                
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h>Delete bike</h>
                              <a href="deleteBike.jsp" class = "btn btn-outline-dark btn-lg "> delete as Admin </a>
                   
                        </div>
                    </div>
                </div>  
                
            </div>
        </div>  
        <!-- java script -->

        <script
            src="https://code.jquery.com/jquery-3.6.1.min.js"
            integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

    </body>
</html>
