<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit_or_delete_author.aspx.cs" Inherits="Admin_edit_or_delete_author" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title> Rp </title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/custom.css"/>
<link rel="stylesheet" href="css/sidebar.css"/>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/sidebarjs.js"></script>
<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>
    <form id="form1" runat="server">
   
<div id="top-nav" class="navbar navbar-inverse navbar-static-top box-shadow">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Rp</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#"><i class="glyphicon glyphicon-user"></i> Admin <span class="caret"></span></a>
                    <ul id="g-account-menu" class="dropdown-menu" role="menu">
                        <li><a href="#">My Profile</a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="glyphicon glyphicon-lock"></i> Logout</a></li>
            </ul>
        </div>
    </div>
    <!-- /container -->
</div>
<!-- /Header -->
<!-- Main -->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3">
            <!-- Left column -->
            <a href="#"><strong><i class="glyphicon glyphicon-wrench"></i> Categories </strong></a>
            <hr>


            <ul class="nav nav-stacked">
                <li class="nav-header"> <a href="journal.aspx" data-toggle="collapse" data-target="#menu"><strong>Journal</strong><i class="glyphicon glyphicon-chevron-down pull-right"></i></a>
                    <ul class="nav nav-stacked collapse" id="menu">
                        <li class="active"> <a href="#"><i class="glyphicon glyphicon-home"></i> View Committee Members</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-envelope"></i> Add Members <span class="badge badge-info">4</span></a></li>
                     
                    </ul>
                </li>
            <hr>

                <li class="nav-header"> <a href="author.aspx" data-toggle="collapse" data-target="#menu2"> <strong>Authors</strong> <i class="glyphicon glyphicon-chevron-down pull-right"></i></a>

                    <ul class="nav nav-stacked collapse" id="menu2">
                      
                    </ul>
                </li>
                            <hr>

				<li class="nav-header">

				
                    <a href="#" data-toggle="collapse" data-target="#menu3"><strong> Papers </strong> <i class="glyphicon glyphicon-chevron-down pull-right"></i></a>
                    <ul class="nav nav-stacked collapse" id="menu3">
                        <li><a href="add_paper.aspx"><i class="glyphicon glyphicon-circle"></i> Add Papers </a></li>
                        <li><a href="edit_or_delete_author.aspx"><i class="glyphicon glyphicon-circle"></i> View </a></li>
                    </ul>
                </li>
				
				   <hr>
				
			<li class="nav-header">

				
                    <a href="#" data-toggle="collapse" data-target="#menu4"><strong> Participants </strong> <i class="glyphicon glyphicon-chevron-down pull-right"></i></a>
                    <ul class="nav nav-stacked collapse" id="menu4">
                        <li><a href="newrequest.html"><i class="glyphicon glyphicon-circle"></i> New Request </a></li>
                        <li><a href="activerequest.html"><i class="glyphicon glyphicon-circle"></i> Active Request </a></li>
                    </ul>
                </li>
				
				   <hr>
				
		
				
		
				
            </ul>


          
        </div>
        <!-- /col-3 -->
        <div class="col-sm-9 border-left">

           
			
            <a href="#"><strong><i class="glyphicon glyphicon-dashboard"></i> Rp</strong></a>
            <hr>

            <div class="row">
                <!-- center left-->
                <div class="col-md-6">
                   
<!--
                    <div class="btn-group btn-group-justified">
                        <a href="#" class="btn btn-primary col-sm-3">
                            <i class="glyphicon glyphicon-plus"></i>
                            <br> Service
                        </a>
                        <a href="#" class="btn btn-primary col-sm-3">
                            <i class="glyphicon glyphicon-cloud"></i>
                            <br> Cloud
                        </a>
                        <a href="#" class="btn btn-primary col-sm-3">
                            <i class="glyphicon glyphicon-cog"></i>
                            <br> Categories
                        </a>
                        <a href="#" class="btn btn-primary col-sm-3">
                            <i class="glyphicon glyphicon-question-sign"></i>
                            <br> Help
                        </a>
                    </div>
!-->
                

                </div>
                <!--/col-->
                <div class="col-md-12">
       <table class="table">
  <thead>
    <tr>
      <th>#</th>
      <th>Paper Abstract</th>
      <th>Keywords</th>
      <th>Categories</th>
       <th>No.of Authors</th>
	      <th>option</th>
	  
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>roviii@gmail.com</td>
       <td>5</td>
	  <td><button type="button" class="btn btn-warning">Edit</button></td>
	    <td><button type="button" class="btn btn-danger">Delete</button></td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>tari@gmail.com</td>
         <td>4</td>
	  	  <td><button type="button" class="btn btn-warning">Edit</button></td>
	    <td><button type="button" class="btn btn-danger">Delete</button></td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>twitter@gmail.com</td>
         <td>3</td>
	  <td><button type="button" class="btn btn-warning">Edit</button></td>
	    <td><button type="button" class="btn btn-danger">Delete</button></td>
    </tr>
  </tbody>
</table>
                <!--/col-span-6-->

            </div>
            <!--/row-->

            <hr>

           </div>
        <!--/col-span-9-->
    </div>
</div>
<!-- /Main -->

<footer class="text-center"><a href="index.php"><strong>Powered By &copy;Rp</strong></a></footer>

<div class="modal" id="addWidgetModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Add Widget</h4>
            </div>
            <div class="modal-body">
                <p>Add a widget stuff here..</p>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn">Close</a>
                <a href="#" class="btn btn-primary">Save changes</a>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>
<!-- /.modal -->
    </form>

      <script src="js/jquery.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
</body>
</html>
