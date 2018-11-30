<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_Discription.aspx.cs" Inherits="Search_Discription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>search Discription</title>
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
        <nav class="navbar navbar-expand-lg navbar-dark" style="margin-bottom:0px;">
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
    
    
     <div class="featured-post-area" style="background-color:lightgray;opacity:0.8;padding-top:15px;">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-8">
                    <div class="row">
 

                       <!--discription div-->
                       

                        
                        <!-- Single Featured Post -->                            
                        <div class="col-12 col-lg-12" id="discriptiondiv">
                            <div class="single-blog-post featured-post">
                                <a href="#" class="post-title">
                                       <div style="margin-left:25%"><h1 style="text-align:center;">ASP.NET Radio Button control Part 11</h1></div>
                                 
                                    </a>
                                <div class="post-thumb">
                                    <a href="#"><img src="" alt="helo"></a>
                                </div>
                                <div class="post-data">
                                 <%-- <a href="politics.aspx" class="post-catagory" style="margin-left:85%;">سیاست سے</a>--%>
                                    
                                    <div class="post-meta">
                                        <p class="post-author" style="text-align:right;"> bdbhfb</a></p>
                                        <p class="post-excerp">                                    

                                                
                                           <panel>sfhbdjb f</panel> 
                            
                                        </p>
                                        <!-- Post Like & Post Comment -->
                                        <%--<div class="d-flex align-items-center">
                                            <a href="#" class="post-like"><img src="img/core-img/like.png" alt=""> <span>392</span></a>
                                            <a href="#" class="post-comment"><img src="img/core-img/chat.png" alt=""> <span>10</span></a>
                                        </div>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
 
                                
                          

                       
                         <!--discription div-->

                    </div>
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
