<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_paper.aspx.cs" Inherits="Admin_add_paper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title> Researcher's portal </title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/custom.css" />
    <link rel="stylesheet" href="css/sidebar.css" />
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
                <a class="navbar-brand" href="#">RP</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
                            <i class="glyphicon glyphicon-user"></i> 
                           
                        </a>
                        <ul id="g-account-menu" class="dropdown-menu" role="menu">
                            <li>
                               
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">
                            <asp:Label ID="Lbllogin" runat="server" Text=""></asp:Label>
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
                <hr>


                <ul class="nav nav-stacked">
                    <li class="nav-header">
                        <a href="journal.aspx" data-toggle="collapse" data-target="#menu">
                            <strong>journal</strong>
                            <i class="glyphicon glyphicon-chevron-down pull-right"></i>
                        </a>
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
                        <a href="author.aspx" data-toggle="collapse" data-target="#menu2">
                            <strong>Authors</strong>
                            <i class="glyphicon glyphicon-chevron-down pull-right"></i>
                        </a>

                        <ul class="nav nav-stacked collapse" id="menu2">

                        </ul>
                    </li>
                    <hr>

                    <li class="nav-header">


                        <a href="#" data-toggle="collapse" data-target="#menu3">
                            <strong> Papers </strong>
                            <i class="glyphicon glyphicon-chevron-down pull-right"></i>
                        </a>
                        <ul class="nav nav-stacked collapse" id="menu3">
                            <li>
                                <a href="add_paper.aspx">
                                    <i class="glyphicon glyphicon-circle"></i> Add Papers </a>
                            </li>
                            <li>
                                <a href="view_papers.aspx">
                                    <i class="glyphicon glyphicon-circle"></i> View </a>
                            </li>
                        </ul>
                    </li>

                    <hr>

                    <li class="nav-header">


                        <a href="#" data-toggle="collapse" data-target="#menu4">
                            <strong> Publication </strong>
                            <i class="glyphicon glyphicon-chevron-down pull-right"></i>
                        </a>
                        <ul class="nav nav-stacked collapse" id="menu4">
                            <li>
                                <a href="publication.aspx">
                                    <i class="glyphicon glyphicon-circle"></i>Add Information about Journal's Publication </a>
                            </li>
                            <li>
                                <a href="activerequest.html">
                                    <i class="glyphicon glyphicon-circle"></i> Active Request </a>
                            </li>
                        </ul>
                    </li>

                    <hr>


                   



                </ul>



            </div>
            <!-- /col-3 -->
            <div class="col-sm-9 border-left">


                <a href="#">
                    <strong>
                        <i class="glyphicon glyphicon-dashboard"></i> Researcher's portal </strong>&nbsp;</a><a href="#" data-toggle="collapse" data-target="#menu4"><asp:Label ID="lbl_error" runat="server"></asp:Label>
                        </a>
                <hr>

                <div class="row">
                    <!-- center left-->
                    <div class="col-md-6">



                <a href="#">
                    <strong>
                        
                        </strong>
                </a>



                    </div>
                    <!--/col-->
                    <div class="col-md-12">
                        </div>
                                 <div class="form-group">
                                        <label for="getjournal">Journal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                                         &nbsp;<asp:DropDownList ID="DropDowngetj_id"  runat="server" Height="43px" Width="393px" AutoPostBack="True" DataSourceID="get_journal_id" DataTextField="J_name" DataValueField="j_id" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDowngetj_id_SelectedIndexChanged">
                                            <asp:ListItem>--select</asp:ListItem>
                                           </asp:DropDownList>
                                        <asp:SqlDataSource ID="get_journal_id" runat="server" ConnectionString="<%$ ConnectionStrings:Researcher's portalConnectionString %>" SelectCommand="SELECT * FROM [Journal]"></asp:SqlDataSource>
                                        <br /><br />
                                         <asp:TextBox ID="txtjournal_id" runat="server" CssClass="form-control" placeholder="Journal id" required="required" Enabled="false"></asp:TextBox>

                                    </div>
                                <div class="form-group">
                                        <label for="exampleInputEmail1"> Paper type</label>
                                   <asp:TextBox ID="txtpaperName" runat="server" CssClass="form-control" placeholder="ex:literature" required="required"></asp:TextBox>

                                    </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Paper Title</label>
                              <asp:TextBox ID="txtpapertitle" runat="server" CssClass="form-control" placeholder="paper title" required="required"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Paper Abstract</label>
                           <asp:TextBox ID="txtpaperabstract" runat="server" CssClass="form-control" placeholder="paper abstract" required="required"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">keywords</label>
                            <asp:TextBox ID="txtkeywords" runat="server" CssClass="form-control" placeholder="keywords" required="required"></asp:TextBox>

                                </br>
                                <asp:FileUpload ID="FileUpload1" runat="server" />

                            &nbsp;</div>
        


                              <asp:Button ID="btnadd_paper" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnadd_paper_Click1"/>
                        </form>
                        <br>
                        <!--/col-span-6-->

                    </div>
                    <!--/row-->

                    <hr>


                    <hr>


                </div>
                <!--/col-span-9-->
            </div>
        </div>
        <!-- /Main -->

        <footer class="text-center">
            <a href="index.php">
                <strong>Powered By &copy; RP</strong>
            </a>
        </footer>

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
