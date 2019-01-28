<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="author.aspx.cs" Inherits="Admin_author" EnableEventValidation="false" %>

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
                    <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#"><i class="glyphicon glyphicon-user"></i>
                        <asp:Label ID="Lbllogin" runat="server" Text="Label"></asp:Label>
                        <span ></span></a>
                    <ul id="g-account-menu" class="dropdown-menu" role="menu">
                        <li><a href="#">My Profile</a></li>
                    </ul>
                </li>
<%--                <li><a href="#"><i class="glyphicon glyphicon-lock"></i> Logout</a></li>--%>
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
                <li class="nav-header"> <a href="journal.aspx" data-toggle="collapse" data-target="#menu"><strong>Journals</strong><i class="glyphicon glyphicon-chevron-down pull-right"></i></a>
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
                        <li><a href="view_papers.aspx"><i class="glyphicon glyphicon-circle"></i> View </a></li>
                    </ul>
                </li>
				
				   <hr>
				
			<li class="nav-header">

				
                    <a href="#" data-toggle="collapse" data-target="#menu4"><strong> Publications </strong> <i class="glyphicon glyphicon-chevron-down pull-right"></i></a>
                    <ul class="nav nav-stacked collapse" id="menu4">
                        <li><a href="publication.aspx"><i class="glyphicon glyphicon-circle"></i> Add Information about Journal's Publication </a></li>
                        <li><a href="activerequest.html"><i class="glyphicon glyphicon-circle"></i> Active Request </a></li>
                    </ul>
                </li>
				
				   <hr>
		
				
            </ul>


          
        </div>
        <!-- /col-3 -->
        <div class="col-sm-9 border-left">

          
			
			
            <a href="#"><strong><i class="glyphicon glyphicon-dashboard"></i>Welcome to Rp</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Lblerror" runat="server"></asp:Label>
            <hr>

            <div class="row">
                <!-- center left-->
                <div class="col-md-6">
                   

                

                </div>
                <!--/col-->
                <div class="col-md-12">
        <div class="row">
    	<div class="col-md-12">
            
                <div class="panel-body">
                    <div class="tab-content">
                      
                        <div class="tab-pane fade" id="tab2default">Default 2</div>
                      
               
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="panel with-nav-tabs panel-primary">
                <div class="panel-heading" id="two">
                        <ul class="nav nav-tabs">
                            <li class="active one"><a href="#tab1primary" style="font-size:20px" data-toggle="tab">Add Authors</a></li>
                            <li class="one"><a href="#tab2primary"  style="font-size:20px"  data-toggle="tab">Main Author</a></li>
                             <li class="one"><a href="#tab3primary"  style="font-size:20px"  data-toggle="tab">Details</a></li>

                           
                            <li class="dropdown">
                              
                                <ul class="dropdown-menu" role="menu">
                            
                                </ul>
                            </li>
                        </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1primary">

                          
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Author Name</label>
                             <asp:TextBox ID="txtAuthorName" runat="server" CssClass="form-control" placeholder="Author_Name " ></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Author Email</label>
                              <asp:TextBox ID="TxtAuthoremail" runat="server" CssClass="form-control" placeholder="Author email" ></asp:TextBox>

                                </div>
                               
                                <div class="form-group">
                                    <label for="exampleInputPassword1">country  | University</label>
                               <asp:TextBox ID="txtcountry" runat="server" CssClass="form-control" placeholder="country" ></asp:TextBox>

                                </div>
                               
                         <div> <asp:Button ID="Btnauthor" runat="server" Text="Button" OnClick="Btnauthor_Click" /></div>  
                          
                                           
                          </div>
                            
                        <div class="tab-pane fade" id="tab2primary">
                              
                                <div class="form-group">
                                    <label for="exampleInputPassword1"> choose Research paper</label>
                                    <asp:DropDownList ID="DropDownListpaper" AppendDataBoundItems="True"  runat="server" Height="38px" Width="431px" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="r_id" OnSelectedIndexChanged="DropDownListpaper_SelectedIndexChanged" onchange="sethref1()">
                                        <asp:ListItem Selected="True">--choose--</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1"   runat="server" ConnectionString="<%$ ConnectionStrings:Researcher's portalConnectionString %>"  SelectCommand="SELECT * FROM [research_paper]"></asp:SqlDataSource>
                                    <br /><br />
                                    <asp:TextBox ID="Txtgetpaper_id"   runat="server" CssClass="form-control" Enabled="false" placeholder="paper id"></asp:TextBox>
                                </div>

                            
                          
                                <div class="form-group">
                                    <label for="exampleInputPassword1"> Select Main Author </label>
                                    <asp:DropDownList ID="DropDownListauthor" AppendDataBoundItems="true" runat="server" Height="32px" Width="477px" DataSourceID="SqlDataSource2" DataTextField="a_name" DataValueField="a_id" OnSelectedIndexChanged="DropDownListauthor_SelectedIndexChanged"  onchange="sethref()">
                                        <asp:ListItem>--choose--</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Researcher's portalConnectionString %>" SelectCommand="SELECT * FROM [author]"></asp:SqlDataSource>
                                    <br /><br />
                                    <asp:TextBox ID="Txtcoauthor_id" runat="server" CssClass="form-control" Enabled="false" placeholder="co-author id"></asp:TextBox>
                                </div>
                               
                           



                              <div class="form-group">
                                 <label for="exampleInputPassword1">If Any Co-Author</label>
                               <asp:TextBox ID="Txtmainauthor" runat="server" CssClass="form-control" placeholder="main author" ></asp:TextBox>
                                     </div>
                             <div class="form-group">
                                 <label for="exampleInputPassword1">Co-Author Country | University</label>
                               <asp:TextBox ID="Txtmainauthorcountry" runat="server" CssClass="form-control" placeholder="main author country"></asp:TextBox>
                                     </div>
                             
                            <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn btn-default" OnClick="Button1_Click" CausesValidation="false" />
                        </div>
                        
                          
                       
                        <!--second tab end here-->
                         <div class="tab-pane fade" id="tab3primary">
                             <asp:GridView ID="GridViewauthor_details" runat="server" 
                                 style="background-color:blanchedalmond"
                                 CssClass="table table-bordered table-hover table-condensed table-responsive"></asp:GridView>

                        </div>
                    </div>
                </div>
            </div>
        </div>
              
            <!--/row-->

            
                  
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
    </form>
      <script src="js/jquery.min.js"></script>
   <script src="js/bootstrap.min.js"></script>


    <script>
                                function sethref() {                     //client side code for select from dropdown

                                    var Textb = document.getElementById('<%=Txtcoauthor_id.ClientID%>');
                                    var parLab = document.getElementById('<%=DropDownListauthor.ClientID%>').options[document.getElementById('<%=DropDownListauthor.ClientID%>').selectedIndex].value;

                                    if (parLab != '--select deptname--') {
                                        Textb.value = parLab
                                    }

                                    else {

                                        Textb.value = '';

                                    }

                                }

        
                                function sethref1() {                     //client side code for select from dropdown

                                    var Textb = document.getElementById('<%=Txtgetpaper_id.ClientID%>');
                                    var parLab = document.getElementById('<%=DropDownListpaper.ClientID%>').options[document.getElementById('<%=DropDownListpaper.ClientID%>').selectedIndex].value;

                                    if (parLab != '--select deptname--') {
                                        Textb.value = parLab
                                    }

                                    else {

                                        Textb.value = '';

                                    }

                                }
                           




                            </script>



</body>
</html>
