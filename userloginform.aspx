<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userloginform.aspx.cs" Inherits="userloginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 


    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <link href="css/bootstrap.css" rel="stylesheet" />



    <style type="text/css">
	.login-form {
		width: 340px;
    	margin: 50px auto;
	}
    .login-form form {
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }

        body {
            background-image: url('./img/user.jpg');
           background-repeat:no-repeat;
        }
            <style>
      
        main {
            padding-top: 3rem;
            padding-bottom: 2rem;
        }
        body,#Txtuname,#Txtpass{
            font-size:15px;
        }
        .extra-margins {
            margin-top: 1rem;
            margin-bottom: 2.5rem;
        }
        .navbar {
            background-color: #3b3b3f;
        }
        footer.page-footer {
            background-color: #3b3b3f;
            margin-top: 2rem;
        }
        .navbar .btn-group .dropdown-menu a:hover {
            color: #000 !important;
        }
        .navbar .btn-group .dropdown-menu a:active {
            color: #fff !important;
        }
        .navbar-expand-lg .navbar-nav .nav-link{
          padding-right: .5rem;
          padding-left: 2.5rem;
       }
    </style>

</head>
<body>
    <form id="form1" runat="server">
           <!--Navbar-->
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
                            <a class="nav-link" href="research_papers.aspx">Research Papers</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="Publish.aspx">Publication Information</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="subscription.aspx">Subscription</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="userloginform.aspx">Login</a>
                        </li>
                      
                       
                    </ul>
                  
                </div>
            </div>
        </nav>
        <!--/.Navbar-->
   <div class="login-form">
   
        <h2 class="text-center">Log in</h2> 
             
        <div class="form-group">
            <asp:TextBox ID="Txtuname" runat="server" placeholder="username" CssClass="form-control" Style="border-bottom-color:white;"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="Txtpass" runat="server" placeholder="password" CssClass="form-control" TextMode="Password"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="Button1" runat="server" Text="Log in" CssClass="btn btn-primary btn-block" OnClick="Button1_Click"/><br /><br />
            <asp:Label ID="Lblerror" runat="server" Text=" " Style="color:red;background-color:white;"></asp:Label>
        </div>
     <%--        <div class="clearfix">
            <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label>
            <a href="#" class="pull-right">Forgot Password?</a>
        </div>        
       --%>

</div>
    </form>
</body>
</html>
