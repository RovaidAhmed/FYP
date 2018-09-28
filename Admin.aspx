<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Admin page</title>
          <link rel="shortcut icon" href="img/favicon_16.ico" />
         <link rel="bookmark" href="img/favicon_16.ico" />
         <link href="css/site.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Serif" rel="stylesheet"/>
    <style>
        body{
            font-family: 'Noto Serif', serif !important;
            
        }
    </style>
 
</head>
<body>
    <form id="form1" runat="server">


   <nav role="navigation" class="navbar navbar-custom">
    <div class="container-fluid">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button data-target="#bs-content-row-navbar-collapse-5" data-toggle="collapse" class="navbar-toggle" type="button">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a href="#" class="navbar-brand">RP</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div id="bs-content-row-navbar-collapse-5" class="collapse navbar-collapse">
        <ul class="nav navbar-nav navbar-right">
         
         
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">Account
              <b class="caret"></b>
            </a>
            <ul role="menu" class="dropdown-menu">
              <li class="disabled">
                <a href="#">Signout</a>
              </li>
            </ul>
          </li>
        </ul>

      </div>
      <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
  </nav>
  <!--header-->
  <div class="container-fluid">
    <!--documents-->
    <div class="row row-offcanvas row-offcanvas-left">
      <div class="col-xs-6 col-sm-3 sidebar-offcanvas" role="navigation">
        <ul class="list-group panel">
          <li class="list-group-item">
            <i class="glyphicon glyphicon-align-justify"></i>
            <b>SIDE PANEL</b>
          </li>
          <li class="list-group-item">
            <input type="text" class="form-control search-query" placeholder="Search Something">
          </li>
          <li class="list-group-item">
            <a href="index.html">
              <i class="glyphicon glyphicon-home"></i>Dashboard </a>
          </li>
          <li class="list-group-item">
            <a href="icons.html">
              <i class="glyphicon glyphicon-certificate"></i>Icons </a>
          </li>
          <li class="list-group-item">
            <a href="list.html">
              <i class="glyphicon glyphicon-th-list"></i>Tables and List </a>
          </li>
          <li class="list-group-item">
            <a href="forms.html">
              <i class="glyphicon glyphicon-list-alt"></i>Forms</a>
          </li>
          <li class="list-group-item">
            <a href="login.html">
              <i class="glyphicon glyphicon-lock"></i>Login</a>
          </li>

          <a href="#demo4" class="list-group-item " data-toggle="collapse">Item 4
            <span class="glyphicon glyphicon-chevron-right"></span>
          </a>
          <li class="collapse" id="demo4">
            <a href="" class="list-group-item">Subitem 1</a>
            <a href="" class="list-group-item">Subitem 2</a>
            <a href="" class="list-group-item">Subitem 3</a>
          </li>
          </li>
        </ul>
      </div>
      <div class="col-xs-12 col-sm-9 content">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title">
              <a href="javascript:void(0);" class="toggle-sidebar">
                <span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span>
              </a> Portal</h3>
          </div>
          <h1>hello</h1>

          <div class="col-md-6">
            <div class="popover right">
              <div class="arrow"></div>
              <h3 class="popover-title">Popover right</h3>
              <div class="popover-content">
                <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis
                  vestibulum.</p>
              </div>
            </div>
          </div>

        </div>
        <div class="col-md-6">
          <br>
          <br>
          <div class="popover left">
            <div class="arrow"></div>
            <h3 class="popover-title">Popover left</h3>
            <div class="popover-content">
              <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis
                vestibulum.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>





  </div>




  

        


    </form>
    <script src="js/site.min.js"></script>
    <script src="js/Gruntfile.js"></script>
    
</body>
</html>
