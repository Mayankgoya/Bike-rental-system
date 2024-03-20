<nav class="navbar navbar-expand-lg navbar-dark bg-dark primary-background">
    <a class="navbar-brand" href="Login_Page.jsp"> <span class = "fa fa-asterisk"> </span> Bike renting</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
          <a class="nav-link" href="index.jsp"> <span class = "fa fa-home"> Home <span class="sr-only">(current)</span></a>
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
        <a class="nav-link disabled" href="Admin_register.jsp">  <span class = "fa fa-volume-control-phone"> Admin Register</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">  <span class = "fa fa-volume-control-phone"> Help</a>
      </li>
       
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>