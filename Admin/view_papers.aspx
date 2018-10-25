<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_papers.aspx.cs" Inherits="Admin_edit_or_delete_author" %>

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

				
                    <a href="#" data-toggle="collapse" data-target="#menu4">
                    
                    </a>
				   <hr>
				
		
				<asp:Button ID="btnlogout" runat="server" Text="Button" />
		
				
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
      
      <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
           AutoGenerateColumns="False" BackColor="White"
           BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px"
           CellPadding="3" DataKeyNames="r_id" DataSourceID="datasource_research_papers"
          PageSize="5" CssClass="table table-bordered table-condensed table-hover" GridLines="Horizontal" Height="51px" Width="916px">
          <AlternatingRowStyle BackColor="#F7F7F7" />
          <Columns>
              <asp:BoundField DataField="research_name" HeaderText="research_name" SortExpression="research_name" />
              <asp:BoundField DataField="r_id" HeaderText="r_id" InsertVisible="False" ReadOnly="True" SortExpression="r_id" />
              <asp:BoundField DataField="keywords" HeaderText="keywords" SortExpression="keywords" />
              <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
              <asp:BoundField DataField="j_id" HeaderText="j_id" SortExpression="j_id" />
              <asp:BoundField DataField="abstract_view" HeaderText="abstract_view" SortExpression="abstract_view" />
              <asp:BoundField DataField="paper_upload" HeaderText="paper_upload" SortExpression="paper_upload" />
          </Columns>
          <EmptyDataTemplate>
              <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("paper_upload") %>' Text='<%# Eval("paper_upload") %>'></asp:LinkButton>
          </EmptyDataTemplate>
          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
          <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
          <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
          <SortedAscendingCellStyle BackColor="#F4F4FD" />
          <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
          <SortedDescendingCellStyle BackColor="#D8D8F0" />
          <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
 
                    <asp:SqlDataSource ID="datasource_research_papers" runat="server" ConnectionString="<%$ ConnectionStrings:Researcher's portalConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [research_paper]"></asp:SqlDataSource>
 
                <!--/col-span-6-->

            </div>
            <!--/row-->

            <hr>

           </div>
        <!--/col-span-9-->
    </div>
</div>
<!-- /Main -->

<%--<footer class="text-center"><a href="index.php"><strong>Powered By &copy;Rp</strong></a></footer>--%>

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
