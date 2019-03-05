<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userfavlist.aspx.cs" Inherits="user_userfavlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User profile</title>

    <link rel="stylesheet" href="../Admin/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../Admin/css/custom.css" />
    <link rel="stylesheet" href="../Admin/css/sidebar.css" />
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/sidebarjs.js"></script>
    <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script>
        $(document).ready(function () {
          
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
                            <asp:Label ID="Lbllogin" runat="server" Text="Label"></asp:Label>
                        </a>
                        <ul id="g-account-menu" class="dropdown-menu" role="menu">
                            <li>
                               
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">
                        
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
             

                <ul class="nav nav-stacked">
                    <li class="nav-header">
                        <a href="userfavlist.aspx" data-toggle="collapse" data-target="#menu">
                            <strong>Dashboard</strong>
                            <i class="glyphicon glyphicon-chevron-down pull-right"></i>
                        </a>
                      
                    </li>
                    <hr>

                    <li class="nav-header">
                        <a href="author.aspx" data-toggle="collapse" data-target="#menu2">
                            <strong>View Details</strong>
                            <i class="glyphicon glyphicon-chevron-down pull-right"></i>
                        </a>
                       

                        <ul class="nav nav-stacked collapse" id="menu2">

                        </ul>
                    </li>
                    
                   

                        
                    </li>

                    <hr>
                    <asp:Button ID="Btnlogout" runat="server" Text="Logout"  CssClass="btn btn-danger" OnClick="Btnlogout_Click"/>
                     
                   


                </ul>



            </div>
            <!-- /col-3 -->
            <div class="col-sm-9 border-left">


                <a href="#">
                    <strong>
                     <%--   <i class="glyphicon glyphicon-dashboard"></i>--%> Favourite List  </strong>&nbsp;</a><a href="#" data-toggle="collapse" data-target="#menu4"><asp:Label ID="lbl_error" runat="server"></asp:Label>
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
                                     <asp:Label ID="Label2" runat="server" Text="Journals :" Style="font-weight:bold;"></asp:Label><br /><br />
                                  <asp:Label ID="Label3" runat="server" Text="" Style="font-weight:bold;color:green;"></asp:Label><br />

                                   <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="J_name" DataValueField="j_id"  onchange="sethref();"></asp:DropDownList>
                     
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Researcher's portalConnectionString %>" SelectCommand="SELECT * FROM [Journal]"></asp:SqlDataSource>
                     
                        <!--/col-span-6-->

                    </div>
                    <!--/row-->

                    <hr>
                    <asp:TextBox ID="Txtuid" runat="server" placeholder="txtuid " CssClass="form-control" Enabled="false"></asp:TextBox> 
                    <br />

                    <asp:TextBox ID="Txtjid" runat="server" placeholder="Journal Name " CssClass="form-control" required="required;" ></asp:TextBox> 
                    <br />

                    <hr>
                    <asp:Button ID="Btnaddfav" runat="server" Text="Add to favourite list" CssClass="btn-default btn-primary" OnClick="Btnaddfav_Click" />


                    <asp:Label ID="Label1" runat="server" Text="." style="color:red;padding-left:10px;"></asp:Label>


                </div>
                <!--/col-span-9-->
            </div>
        </div>
        <!-- /Main -->

    

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

    <script type="text/javascript">

     function sethref() {

            var Textb = document.getElementById('<%=Txtjid.ClientID%>');                                                                           
            var parLab = document.getElementById('<%=DropDownList1.ClientID%>').options[document.getElementById('<%=DropDownList1.ClientID%>').selectedIndex].value;

          if(parLab!='--select deptname--'){
            Textb.value = parLab
            }

          else{

         Textb.value ='';

         }

     }


       </script>


</body>
</html>
