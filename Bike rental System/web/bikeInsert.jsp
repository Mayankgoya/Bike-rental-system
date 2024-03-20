
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Page</title>
        <!-- css -->

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/new.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>

        <div class="container">

            <div class="col-md-6 offset-md-3">

                <div class="card">

                    <div class="card-header text-center primary-background text-white">
                        <samp class="fa fa-3x fa-user-circle-o"></samp>
                        <p>insert Here</p>
                    </div>
                    <div class="card-body">

                        <form action="UpdateBike"  method="post" > 
                            <div class="form-group">
                                <label for="user_Image">Insert Name</label>
                                <input name = "user_name" type="text" class="form-control" id="user_nam" aria-describedby="emailHelp" placeholder="Name">
                            </div>

                            <div class="form-group">
                                <label for="user_price">Insert Price</label>
                                <input name = "price" type="text" class="form-control" id="user_mobile" aria-describedby="emailHelp" placeholder="price">
                            </div>
                            <div class="form-group">
                                <label for="user_mobile">choose image</label>
                                <input name = "user_file" type="file" class="form-control" id="user_mobile" aria-describedby="emailHelp" placeholder="Mobile No.">
                            </div>
                           
                            <br>
                            <button id="submit" type="submit" class="btn btn-primary">Insert</button
                        </form>

                    </div>
                </div>
            </div>
        </div>


        <script
            src="https://code.jquery.com/jquery-3.6.1.min.js"
            integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
       
    </body>
</html>
