<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Searching</title>

 <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    
    <!-- Bootstrap core CSS -->
    
    <!-- Material Design Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" /> 
    
  <%--link href="css/mdb.min.css" rel="stylesheet" />--%> 
    <link href="css/bootstrap.css" rel="stylesheet" />
    
    
    <style>
        main {
            padding-top: 3rem;
            padding-bottom: 2rem;
        }

        body {
            font-size: 15px;
        }

        .extra-margins {
            margin-top: 1rem;
            margin-bottom: 2.5rem;
        }

        .navbar {
            background-color: #3b3b3f;
        }

        .page-footer {
            background-color: #3b3b3f;
            margin-top: 2rem;
        }

        .navbar .btn-group .dropdown-menu a:hover {
            color: #000 !important;
        }

        .navbar .btn-group .dropdown-menu a:active {
            color: #fff !important;
        }

        .navbar-expand-lg .navbar-nav .nav-link {
            padding-right: .5rem;
            padding-left: 2.5rem;
        }

        /* label */
        .label1{
            font-size:35px;
            font-weight:bold;
            padding:10px 0px;
        }

        .btn-icon{
            padding:10px
        }
        .row .text-center span, .row .text-center .rd{
            padding-left:10px;
        }
        .textbox1{
            font-size:20px;
            padding-left:10px
        }
        

    </style>
 </head>
<body>
    <form id="form1" runat="server">
    <div>
        <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <img src="./img/nav_logo.png" />
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Home.aspx">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Search.aspx">Search</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Journals</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="Publish.aspx">Publish</a>
                    </li>
                    <li class="nav-item btn-group">
                        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Subscribe
                        </a>
                        <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#" style="font-size:13px;">Favourite_Journal</a>

                        </div>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
    
            <div class="form-group" style="padding-top:80px">
                <p class="text-center label1" style="font-family:cursive">Researcher's Portal</p>
                <div class="row">
                <div class="col-lg-2 col-sm-2"></div>
                <div class="col-lg-8">
                    <div class="input-group">   <!--searching-->

                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control textbox1"></asp:TextBox>
                   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="search"  style="background-color:blue;color:white;"/>
                       
                                                 <!--searching-->
                  </div>
                  </div>
                <div class="col-lg-2"></div>
                    </div>



                <br />


                <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-8 text-center">
                <asp:RadioButton ID="RadioBtnauthor" runat="server" CssClass="rd" GroupName="choose"/><span>By Author</span>
                <asp:RadioButton ID="RadioBtntitle" runat="server" CssClass="rd" GroupName="choose"/><span>By Title</span>
                <asp:RadioButton ID="Radiobtnkeyword" runat="server" CssClass="rd" GroupName="choose"/><span>Keyword</span>
                <asp:RadioButton ID="Radiobtnemerald" runat="server"  CssClass="rd" GroupName="choose"/><span>Emerald Database</span>
                <asp:RadioButton ID="Radiobtnacm" runat="server" CssClass="rd" GroupName="choose" /><span>ACM Database</span>
                <asp:RadioButton ID="RadiobtnIEEE" runat="server" CssClass="rd" GroupName="choose" /><span>IEEE Database</span>
                </div>

                <div class="col-lg-2"></div>


                 </div>
                 </div>



        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None"
            CssClass=" table-bordered table-condensed table-hover" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="189px" Width="1392px">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    <br />
    
    


    
    
    
 <%--   <footer class="page-footer center-on-small-only">
     <!--Copyright-->
        <div class="footer-copyright">
            <div class="container-fluid"  style="font-size:15px;">
                © 2018 Copyright: <a href="https://www.ResearchersPortal.com"> Researcher's Portal</a>

            </div>
        </div>
        <!--/.Copyright-->
    </footer>--%>
        <%--<div id="footer">
            Copyright@2018
        </div>--%>
    
    </div>
    </form>
</body>
      <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>

      <!-- Bootstrap dropdown -->
      <script type="text/javascript" src="js/popper.min.js"></script>

      <!-- Bootstrap core JavaScript -->
     <script type="text/javascript" src="js/bootstrap.min.js"></script>

     <!-- MDB core JavaScript -->
     <script type="text/javascript" src="js/mdb.min.js"></script>

    <script>
        new WOW().init();
    </script>
</html>
