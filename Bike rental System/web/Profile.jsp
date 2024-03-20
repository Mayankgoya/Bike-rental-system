<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.project.entities.Message"%>
<%@page import="com.project.entities.User"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%@page errorPage="error_page.jsp" %>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("Login_Page.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile page ... </title>

        <!-- css -->


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/new.css" rel="stylesheet" type="text/css"/>
        <style>
            .content
            {

                display: flex;
                margin: 50px;
                padding: 0px 25px

            }
            .image img
            {
                width: 88%;
                height: 300px;
                border-radius: 2px;
                margin: 60px 10px;
            }
        </style>

    </head>
    <body style="background: #455a64">
        <!-- navbar -->

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
                            <a class="dropdown-item" href="#">High Speed</a>
                            <a class="dropdown-item" href="#">Normal Speed</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Low speed</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">  <span class = "fa fa-volume-control-phone"> Help</a>
                    </li>

                </ul>

                <ul class="navbar-nav mr-right">

                    <li class="nav-item">
                        <a class="nav-link disabled text-white" >  <span class = "fa fa-user-circle-o"> <%= user.getName()%></a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link disabled text-white" href="LogoutServele">  <span class = "fa fa-home"> Log out</a>
                    </li>
                </ul>

            </div>
        </nav>
        <!-- end of navbar -->

        <!-- about Section -->

        <div class="content container-fluid p-0 ml-0 jumbotron " style="background: #f4ff81" >
            <div class="content-text">
                <h1 class = "display-5 text-center "> Why US? </h1>
                <h3> We simplified bike rentals, so you can focus on what's important to you  </h3>
                <br>
                <ol>
                    <li>
                        Your safety is our priority. From sanitizing all bikes before every use, to extensive on-ground safety measures, your rides with ONN will always be safe and reliable. We also offer helmets on-demand.
                    </li>
                    <br>
                    <li>
                        Enjoy the freedom of owning a two-wheeler without the hefty down-payments, EMIs and paperwork. Now choose from rent-to-own, monthly/quarterly bookings, and even daily plans.
                    </li>
                    <br>
                    <li>
                        With your trusty, you can choose any bike, make instant payments, get offers, and manage all aspect of your experience right from the comfort and ease of your mobile.
                    </li>
                </ol>

            </div>
            <div class="image">

                <img src="image/profilepage.jpg" alt=""/>  

            </div>

        </div>

        <!-- bike rent start -->
        <table border="1">
            <tr style="font-weight: bold">
                <td>Name ..</td>
                <td>Price ..</td>
                <td>Imane ..</td>
                <td>Rent..</td>
            </tr>

        <%
            String url = "jdbc:mysql://localhost:3306?user=root&password=12345";
            String query = "select * from admindata.image ";

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection(url);

                Statement statement = connection.createStatement();
                ResultSet result = statement.executeQuery(query);

                while (result.next()) {
        %>
        
        <tr>
            <td>  <%= result.getString(1)%>  </td>
            <td>  <%= result.getString(2)%>  </td>
            <td>  <img src="image/<%= result.getString(3)%>" width="250" height="250"  alt=""/>    </td>
            <td> <a  href="conform.jsp" class="btn btn-primary">Rent</a> </td>
        </tr>
                     
            <%
                    }

                } catch (Exception e) {
                }
            %>
        </table> 


            <!-- bike rent ends -->

            <!-- end banner -->
          

            <div  class = "container-fluid p-0 m-0"  >

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

            <!<!-- banner close -->



            <!-- java script -->

            <script
                src="https://code.jquery.com/jquery-3.6.1.min.js"
                integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
            crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


    </body>
</html>
