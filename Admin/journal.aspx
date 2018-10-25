<%@ Page Language="C#" AutoEventWireup="true" CodeFile="journal.aspx.cs" Inherits="Admin_rovaid" %>
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
                    <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#"></a>
                    <ul id="g-account-menu" class="dropdown-menu" role="menu">
                        
                    </ul>
                </li>
                <li><a href="#"><i class="glyphicon glyphicon-user"></i>
                    <asp:Label ID="Lbllogin" runat="server" Text="."></asp:Label></li>
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

				
                    <a href="#" data-toggle="collapse" data-target="#menu4"><strong> Participants </strong> <i class="glyphicon glyphicon-chevron-down pull-right"></i></a>
                    <ul class="nav nav-stacked collapse" id="menu4">
                        <li><a href="newrequest.html"><i class="glyphicon glyphicon-circle"></i> New Request </a></li>
                        <li><a href="activerequest.html"><i class="glyphicon glyphicon-circle"></i> Active Request </a></li>
                    </ul>
                </li>
				
<%--				    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />--%>
				
				   <hr>
		
                <asp:Button ID="Button1" runat="server" Text="Logout" CssClass="btn bg-info" />
            </ul>


          
        </div>
        <!-- /col-3 -->
        <div class="col-sm-9 border-left">

          
			
			
            <a href="#"><strong><i class="glyphicon glyphicon-dashboard"></i>Welcome to Rp</strong></a>
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
                      
               
                        <asp:Label ID="lbldataiscorrect_or_not" runat="server"></asp:Label>
                      
               
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="panel with-nav-tabs panel-primary">
                <div class="panel-heading" id="two">
                        <ul class="nav nav-tabs">
                            <li class="active one"><a href="#tab1primary" style="font-size:20px" data-toggle="tab">journals</a></li>
                            <li class="one"><a href="#tab2primary"  style="font-size:20px"  data-toggle="tab">Add Category</a></li>
                           <li class="one"><a href="#tab4primary"  style="font-size:20px"  data-toggle="tab">Add Index</a></li>
                           <li class="one"><a href="#tab3primary"  style="font-size:20px"  data-toggle="tab">View details</a></li>

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
                                    <label for="exampleInputEmail1">ADMIN ID</label>
                             <asp:TextBox ID="txtAdminID" runat="server" CssClass="form-control" placeholder="Admin ID" Enabled="false" ></asp:TextBox>

                                </div>
                            
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Journal Name</label>
                             <asp:TextBox ID="txtjname" runat="server" CssClass="form-control" placeholder="journal name " ></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">YOP</label>
                              <asp:TextBox ID="Txtdop" runat="server" CssClass="form-control" placeholder="dop" ></asp:TextBox>

                                </div>
                                <div class="form-group">
                                        <label for="exampleInputEmail1">Impact factor</label>
                                  <asp:TextBox ID="Txtimpactfactor" runat="server" CssClass="form-control" placeholder="Impact factor" ></asp:TextBox>

                                    </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Index_id&nbsp;&nbsp;&nbsp;&nbsp; </label>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Researcher's portalConnectionString2 %>" SelectCommand="SELECT * FROM [index]"></asp:SqlDataSource>
                                    <asp:DropDownList ID="DropDownindex" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="index_name" DataValueField="index_id" Height="25px" OnSelectedIndexChanged="DropDownindex_SelectedIndexChanged" Width="96px">
                                    </asp:DropDownList>
                              &nbsp;
                                    <asp:TextBox ID="txtindexid" runat="server" CssClass="form-control" placeholder="index id" Enabled="false"></asp:TextBox>

                                </div>
                                    <div class="form-group">
                                    <label for="exampleInputPassword1">Category</label>&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="c_name" DataValueField="c_id" Height="24px" Width="133px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Researcher's portalConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [category]" ></asp:SqlDataSource>

                                       <asp:TextBox ID="Txtcategory" runat="server"  CssClass="form-control" placeholder="category" Enabled="false" ></asp:TextBox>
       

                                </div>
                                     <div class="form-group">
                                    <label for="exampleInputPassword1">Publication link</label>
                               <asp:TextBox ID="Txtpublication" runat="server" CssClass="form-control" placeholder="publication" ></asp:TextBox>

                                </div>
                                        <div class="form-group">
                                    <label for="exampleInputPassword1">Citations</label>
                               <asp:TextBox ID="Txtcitations" runat="server" CssClass="form-control" placeholder="citations" ></asp:TextBox>

                                </div>
                               
                               
    
    
    
                                    <asp:Button ID="btnjournal" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnjournal_Click"/>
                           

                        </div>

                        <!--tab2 category panel-->

                        <div class="tab-pane fade" id="tab2primary">
                            <table class="table">
                                <thead>
                                    <tr>
                                    
                                        <th>Category Name</th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                         <asp:TextBox ID="Txtaddnewcategory" CssClass="form-control" runat="server"></asp:TextBox>

                                        </td>
                                    </tr>
                                   <tr>
                                       <td>
                                      <asp:Button ID="Btnaddcategory" CssClass="btn btn-primary" runat="server" Text="Add" OnClick="Btnaddcategory_Click"></asp:Button>

                                       </td>
                                   </tr>
                                   
                                   
                                </tbody>
                            </table>
                        </div>

                         <!-- end tab2 category panel-->

                        <!--view details-->

                         <div class="tab-pane fade " id="tab3primary" >
                         <asp:GridView ID="Gridviewjournal_detail" runat="server" CssClass="table table-bordered table-condensed table-responsive table-hover " style="background-color:azure;"
                             AllowPaging="true"
                              AllowSorting="true" CellPadding="1" EnableSortingAndPagingCallbacks="True" PageSize="5"
                                           
                              >
                             <PagerSettings Position="TopAndBottom" />
                             </asp:GridView>

                        </div>
                               <!--view details-->





                           <!--Index-->

                         <div class="tab-pane fade" id="tab4primary">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Index Name</th>                                 
                                    </tr>
                                </thead>
                               <tbody>
                                    <tr>
                                        <td>
                                         <asp:TextBox ID="Txtaddnewindex" CssClass="form-control" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                   <tr>
                                       <td>
                                      <asp:Button ID="Btnaddnewindex" CssClass="btn btn-primary" runat="server" Text="Add" OnClick="Btnaddnewindex_Click"></asp:Button>
                                       </td>
                                   </tr>                                   
                                   
                                </tbody>
                            </table>
                        </div>
                               <!--Index-->

                    </div>
                </div>
            </div>
        </div>
                </div>
            </div>

<style>


</style>
                <!--/col-span-6-->

            </div>
            <!--/row-->

            <hr/>


            <hr/>

                  
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

<%--    <script type="text/javascript">
function sethref() {

            var Textb = document.getElementById('<%=Txtcategory.ClientID%>');
            var parLab = document.getElementById('<%=DropDownList1.ClientID%>').options[document.getElementById('<%=DropDownList1.ClientID%>').selectedIndex].text;

          if(parLab!='choose'){
            Textb.value = parLab
            }

          else{

         Textb.value ='';

         }--%></script> 
</body>
</html>
