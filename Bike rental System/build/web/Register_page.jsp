 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>

        <!-- css -->

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/new.css" rel="stylesheet" type="text/css"/>


    </head>
    <body>
        <%@include file="normal_nvbar.jsp"  %>
        <main class= primary-background " style="padding-bottom: 100px;">

            <div class="container">

                <div class="col-md-6 offset-md-3">

                    <div class="card">

                        <div class="card-header text-center primary-background text-white">
                            <samp class="fa fa-3x fa-user-circle-o"></samp>
                            <p>Register Here</p>

                        </div>
                        <div class="card-body">

                            <form id="reg-form" action="RegisterServelet" method="POST">
                                <div class="form-group">
                                    <label for="user_name">User Name</label>
                                    <input name = "user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter Name">
                                </div>

                                <div class="form-group">
                                    <label for="user_mobile">Phone Number</label>
                                    <input name = "user_number" type="text" class="form-control" id="user_mobile" aria-describedby="emailHelp" placeholder="Mobile No.">
                                </div>

                                <div class="form-group">
                                    <label for="user_gender">Gender</label>
                                    <br>
                                    <input type="radio" id="gender" name="gender" value="male">Male
                                    <input type="radio" id="gender" name="gender" value="female">Female
                                    <input type="radio" id="gender" name="gender" value="other"> Other
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input name="user_pass" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>


                                <div class="form-check">
                                    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label  class="form-check-label" for="exampleCheck1">Agree Terms And Condition</label>
                                </div>
                                <br>
                                <div class="container text-center" id="loader" style="display: none;">
                                    <span class="fa fa-refresh fa-3x fa-spin"></span>
                                    <h4>please wait....</h4>
                                </div>
                                <br>
                                <button id="submit-btn" type="submit" class="btn btn-primary">Sign Up</button>
                            </form>

                        </div>


                    </div>
                </div>
            </div>
        </main>


        <!-- java script -->

        <script
            src="https://code.jquery.com/jquery-3.6.1.min.js"
            integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

        <script>

            $(document).ready(function () {
                console.log("document loaded.....")

                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();

                    let form = new FormData(this);

                    $('#submit-btn').hide();
                    $('#loader').show();
                    // send registration servelet

                    $.ajax({

                        url: "RegisterServelet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data)
                            $('#submit-btn').show();
                            $('#loader').hide();

                            if (data.trim() === 'done')
                            {
                                swal("Register successfully..We are going to Redirect to Login Page")
                                    .then((value) => {
                                        window.location = "Login_Page.jsp"
                                    });
                            }
                            else
                            {
                                swal(data);
                            }

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR)
                            $('#submit-btn').show();
                            $('#loader').hide();
                            swal("Something went Wrong..");
                        },
                        processData: false,
                        contentType: false

                    });

                });

            });

        </script>

    </body>
</html>
