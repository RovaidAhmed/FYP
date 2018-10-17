<%@ Page Language="C#" AutoEventWireup="true" CodeFile="journal.aspx.cs" Inherits="Admin_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title> Researcher's portal</title>
     <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/custom.css" />
    <link rel="stylesheet" href="css/sidebar.css" />
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/sidebarjs.js"></script>
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
                        <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
                            <i class="glyphicon glyphicon-user">
                                  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></i>
                            
                        </a>
                        <ul id="g-account-menu" class="dropdown-menu" role="menu">
                            <li>
                                <a href="#">My Profile</a>
                            </li>
                           
                        </ul>
                    </li>
                    <li>
                    
                    </li>
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
                <a href="#">
                    <strong>
                        <i class="glyphicon glyphicon-wrench"></i> Categories </strong>
                </a>

                <ul class="nav nav-stacked">
                    <ul class="nav nav-stacked collapse" id="menu">
                        <li class="active">
                            <a href="#">
                                <i class="glyphicon glyphicon-home"></i> View Committee Members</a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="glyphicon glyphicon-envelope"></i> Add Members
                                <span class="badge badge-info">4</span>
                            </a>
                        </li>

                    </ul>
                    </li>
                    <hr>


                    <li class="nav-header">


                        <a href="journal.aspx" data-toggle="collapse" data-target="#menu3">
                            <strong> Journals </strong>
                            <i class="glyphicon glyphicon-chevron-down pull-right"></i>
                        </a>
                        <ul class="nav nav-stacked collapse" id="menu3">
                        </ul>
                    </li>

                    <hr>
                    <li class="nav-header">
                        <a href="author.aspx" data-toggle="collapse" data-target="#menu2">
                            <strong>Authors</strong>
                            <i class="glyphicon glyphicon-chevron-down pull-right"></i>
                        </a>

                        <ul class="nav nav-stacked collapse" id="menu2">

                        </ul>
                    </li>
                    <hr>

                    <li class="nav-header">
                        
				
                            <a href="add_paper.aspx" data-toggle="collapse" data-target="#menu3"><strong> Papers </strong> <i class="glyphicon glyphicon-chevron-down pull-right"></i></a>
                            <ul class="nav nav-stacked collapse" id="menu3">
                                <li><a href="add_paper.aspx"><i class="glyphicon glyphicon-circle"></i> Add Papers </a></li>
                                <li><a href="edit_or_delete_author.aspx"><i class="glyphicon glyphicon-circle"></i> View </a></li>
                            </ul>
                        </li>

                    <hr>

                    <li class="nav-header">


                        <a href="#" data-toggle="collapse" data-target="#menu4">
                            <strong> Participants </strong>
                            <i class="glyphicon glyphicon-chevron-down pull-right"></i>
                        </a>
                        <ul class="nav nav-stacked collapse" id="menu4">
                            <li>
                                <a href="newrequest.html">
                                    <i class="glyphicon glyphicon-circle"></i> New Request </a>
                            </li>
                            <li>
                                <a href="activerequest.html">
                                    <i class="glyphicon glyphicon-circle"></i> Active Request </a>
                            </li>
                        </ul>
                    </li>

                    <hr>
                    <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click1" cssclass="btn btn-warning"/>

                  
                    


                </ul>



            </div>
            <!-- /col-3 -->
            <div class="col-sm-9 border-left">

                <!-- column 2 -->



                <a href="#">
                    <strong>
                        <i class="glyphicon glyphicon-dashboard"></i> Welcome to portal</strong>
                        <h2>Journals</h2>
                </a>
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
                        <div class="panel with-nav-tabs panel-primary">
                            <div class="panel-heading" id="two">
                                <ul class="nav nav-tabs">
                                    <li class="active one">
                                        <a href="#tab1primary" style="font-size:20px" data-toggle="tab">Add Journal Details</a>
                                    </li>

                                    <li class="one">
                                        <a href="#tab2primary" style="font-size:20px" data-toggle="tab">View Details</a>
                                    </li>

                                    <li class="dropdown">

                                        <ul class="dropdown-menu" role="menu">

                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="panel-body">
                                <div class="tab-content">
                                    <div class="tab-pane fade in active" id="tab1primary">

                                        



                                        </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Journal type</label>
                                                <asp:TextBox ID="Txtjournaltype" runat="server" CssClass="form-control" placeholder="journal type" ></asp:TextBox>
                                                
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">DOP</label>
                                                 <asp:TextBox ID="TxtDOB" runat="server" CssClass="form-control" placeholder="DOB" ></asp:TextBox>

                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Impact factor</label>
                                              <asp:TextBox ID="TxtImpactf" runat="server" CssClass="form-control" placeholder="Impact factor"></asp:TextBox>
       
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">keywords</label>
                                         <asp:TextBox ID="Txtkeywords" runat="server" CssClass="form-control" placeholder="keywords" ></asp:TextBox>

                                            </div>
                                            <div class="form-group">
                                                    <label for="exampleInputPassword1">Index_Name</label>
                                             <asp:TextBox ID="Txtindexname" runat="server" CssClass="form-control" placeholder="Index Name" ></asp:TextBox>

                                                </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Category</label>
                                       <asp:TextBox ID="Txtcategory" runat="server" CssClass="form-control" placeholder="Category" ></asp:TextBox>

                                            </div>

                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Publication link</label>
                                              <asp:TextBox ID="TxtPublication" runat="server" CssClass="form-control" placeholder="Publication link" ></asp:TextBox>

                                            </br>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">citations</label>
                                             <asp:TextBox ID="Txtcitations" runat="server" CssClass="form-control" placeholder="citations" ></asp:TextBox>

                                            </br>
                                           <asp:Button ID="btnjournal" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnjournal_Click"/>
                                        </div>

                                    </div>
                                    <div class="tab-pane fade" id="tab2primary">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>First Name</th>
                                                    <th>Last Name</th>
                                                    <th>Email</th>
                                                    <th>option</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th scope="row">1</th>
                                                    <td>Mark</td>
                                                    <td>Otto</td>
                                                    <td>roviii@gmail.com</td>
                                                    <td>
                                                        <button type="button" class="btn btn-warning">Edit</button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-danger">Delete</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">2</th>
                                                    <td>Jacob</td>
                                                    <td>Thornton</td>
                                                    <td>tari@gmail.com</td>
                                                    <td>
                                                        <button type="button" class="btn btn-warning">Edit</button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-danger">Delete</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">3</th>
                                                    <td>Larry</td>
                                                    <td>the Bird</td>
                                                    <td>twitter@gmail.com</td>
                                                    <td>
                                                        <button type="button" class="btn btn-warning">Edit</button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-danger">Delete</button>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!--/col-span-6-->

                                </div>
                                <!--/row-->

                                <hr>


                                <p>
                                    &nbsp;</p>
    </form>

                                <!--/col-span-9-->
                            </div>
                        </div>
                        <!-- /Main -->

                        <footer class="text-center">
                            <a href="#">
                                <strong>Powered By &copy;Rp</strong>
                            </a>
                        </footer>

                        <div class="modal" id="addWidgetModal">
                            <div class="modal-dialog">
                                <div class="modal-content">

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

                        
    </form>
</body>
</html>
