<%@page import="com.project.helper.ConnectionProvider"%>
<%@page import="com.project.servelet.AdminLogin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bike rent</title>

  <!-- css -->

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       

    </head>
    <body>

        <!<!-- navbar -->
        <%@include file="normal_nvbar.jsp" %>

        <!<!-- banner -->

        <div  class = "container-fluid p-0 m-0">
               
            <div class ="jumbotron " >
                <div class="container">
                    <h1 class = "display-4"> Welcome , Friends </h1>
                    <h2> Mayank's bike rent center </h2>
                    <p>Wide range of bikes is offered here.</p>
                    <p>Near modern valley , Kharar , punjab</p>

                    <a href="Register_page.jsp" class = "btn btn-outline-dark btn-lg "> <span class="fa fa-user-circle-o"></span> Start! It's Free</a>
                    <a href="Login_Page.jsp" class = "btn btn-outline-dark btn-lg "> <span class="fa fa-unlock fa-spin"></span> Login as User </a>
                    <a href="adminLogin.jsp" class = "btn btn-outline-dark btn-lg "> <span class="fa fa-unlock fa-spin"></span> Login as Admin </a>
                    
                
                </div>
            </div>      

        </div>

        <!<!-- cards -->

       
        <<h2 class="text-center" style="color:red; ">HONDA</h2>
        <br>

        <div class="row">
            <div class="col-md-4">
                <div class ="card">
                    <div class="card-body" style="background-color:white" >

                        <h5 class="card-title">Honda Shine SP</h5>
                        <img src="image/shines.png" width="400" height="250"  alt=""/>
                    </div>
                    <div class="card-footer">
                        <a  href="Login_Page.jsp" class="btn btn-primary">Rs 1500...</a> </div>
                </div>     
            </div> 

            <div class="col-md-4">
                <div class ="card">
                    <div class="card-body" style="background-color:white">
                        <h5 class="card-title ">Honda Livo</h5>
                        <img src="image/Livof.png" width="400" height="250" alt=""/>
                    </div>
                    <div class="card-footer">
                        <a  href="Login_Page.jsp" class="btn btn-primary">Rs 1000...</a> </div>
                </div>     
            </div> 

            <div class="col-md-4">
                <div class ="card">
                    <div class="card-body" style="background-color: white">
                        <h5 class="card-title">Honda Activa</h5>
                        <img src="image/Activa.jpg" width="400" height="250" alt=""/>
                    </div>
                    <div class="card-footer">
                        <a  href="Login_Page.jsp" class="btn btn-primary">Rs 800...</a>  </div>
                </div>     
            </div> 
        </div>


        <<h2 class="text-center" style="color:red; ">HERO</h2>
        <br>
        <div class="row">
            <div class="col-md-4">
                <div class ="card">
                    <div class="card-body" style="background-color: white">
                        <h5 class="card-title">Hero Splendor</h5>
                        <img src="image/splendor.jpg" width="400" height="250" alt=""/>
                    </div>
                    <div class="card-footer">
                        <a  href="Login_Page.jsp" class="btn btn-primary">Rs 1000...</a>  </div>
                </div>     
            </div> 

            <div class="col-md-4">
                <div class ="card">
                    <div class="card-body" style="background-color: white">
                        <h5 class="card-title">Passion Pro</h5>
                        <img src="image/Passion.jpg" width="350" height="250" alt=""/>
                    </div>
                    <div class="card-footer">
                        <a  href="Login_Page.jsp" class="btn btn-primary">Rs 1000...</a>   </div>
                </div>     
            </div> 

            <div class="col-md-4">
                <div class ="card">
                    <div class="card-body" style="background-color: white">
                        <h5 class="card-title">Hero Pleasure</h5>
                        <img src="image/pleasure.jpg" width="350" height="250" alt=""/>
                    </div>
                    <div class="card-footer">
                        <a  href="Login_Page.jsp" class="btn btn-primary">Rs 800...</a>   </div>
                </div>     
            </div> 
        </div>

        <<h2 class="text-center" style="color:red; ">BAJAJ</h2>
        <br>
        <div class="row">
            <div class="col-md-4">
                <div class ="card">
                    <div class="card-body"style="background-color: white">
                        <h5 class="card-title">Bajaj Platina</h5>
                        <img src="image/platina.png" width="350" height="250" alt=""/>
                    </div>
                    <div class="card-footer">
                        <a  href="Login_Page.jsp" class="btn btn-primary">Rs 1000...</a>
                    </div>
                </div>     
            </div> 

            <div class="col-md-4">
                <div class ="card">
                    <div class="card-body"style="background-color: white">
                        <h5 class="card-title">Bajaj Pulsar</h5>
                        <img src="image/Pulsar.jpg" width="350" height="250" alt=""/>
                    </div>
                    <div class="card-footer">
                        <a  href="Login_Page.jsp" class="btn btn-primary">Rs 1500...</a>   </div>
                </div> 
            </div> 
            <div class="col-md-4">
                <div class ="card">
                    <div class="card-body" style="background-color: white">
                        <h5 class="card-title">Bajaj Avenger </h5>
                        <img src="image/avenger.png" width="350" height="250"  alt=""/>
                    </div>
                    <div class="card-footer">
                        <a  href="Login_Page.jsp" class="btn btn-primary">Rs 1200...</a>   </div>
                </div>     
            </div> 
        </div>
        <br>







        <!-- java script -->

        <script
            src="https://code.jquery.com/jquery-3.6.1.min.js"
            integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>

</html>
