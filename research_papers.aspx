<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="research_papers.aspx.cs" Inherits="Search_Discription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>search Discription</title>
     <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://fonts.googleapis.com/css?family=PT+Serif" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
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
         background-color:#F5F5F5;
         /*background-image: url('img/research_paper.jpg');*/
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
<body >
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
                            <a class="nav-link" href="subscription.aspx">Subscription / Register</a>
                        </li>
                          <li class="nav-item">
                            <a class="nav-link" href="userloginform.aspx">Login</a>
                        </li>
                       
                    </ul>
                   
                </div>
            </div>
        </nav>
        <!--/.Navbar-->
    
     <div class="featured-post-area" style="background-color:whitesmoke;padding-top:15px;" >
        <div class="container">
            <div class="row">
                <div class=" col-md-6 col-lg-12">
                    <div class="row">
 

                       <!--discription div-->
                       
                         <!--discription div-->
                        <asp:Repeater ID="Repeaterlist" runat="server">
                            <ItemTemplate>
                        
                        <!-- Single Featured Post -->                            
                        <div class="col-12 col-lg-12" id="discriptiondiv">
                            <div class="single-blog-post featured-post">
                                
                              <div><h1 style="text-align:center;font-family: 'Raleway', sans-serif;"><%# Eval("Title") %></h1></div>
                                            
                                
                                 <p style="text-decoration:none!important;color:green;"> Research Related to :<span style="color:crimson;"> <%# Eval("Research_name") %></span></p>
                                <div class="post-thumb">
                                  
                                </div>
                                <div class="post-data">
                                 <%-- <a href="politics.aspx" class="post-catagory" style="margin-left:85%;">سیاست سے</a>--%>
                                    
                                    <div class="post-meta">
                                        <p class="post-author" style="text-align:right;"></a><button type="button" class="btn-primary"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Bind("paper_upload") %>' Text="Download" style="color:white;">Full Preview</asp:HyperLink></button>
                                        </p>
                                        <p class="post-excerp">                                    

                                                
                                        <div class="post-thumb">
                                              <a style="text-align:center!important;"><b>Main Author : </b><%# Eval("a_name")%></a><br />
                                    <a style="text-align:center!important;"><b> Co-Author: </b><%# Eval("is_mainauthor")%></a><br />                                          
                                    <a style="text-align:center!important;"><b>Abstract View : </b><%# Eval("Abstract_view")%></a><br />
                                    <%-- <a style="text-align:center!important;"><b>ISSN : </b><%# Eval("ISSN")%></a>--%>
                                </div>   
                            
                                        </p>
                                        <!-- Post Like & Post Comment -->
                                        <%--<div class="d-flex align-items-center">
                                            <a href="#" class="post-like"><img src="img/core-img/like.png" alt=""> <span>392</span></a>
                                            <a href="#" class="post-comment"><img src="img/core-img/chat.png" alt=""> <span>10</span></a>
                                        </div>--%>
                                    </div>
                                </div>
                                   <hr />
                            </div>
                            
                               <hr />
                               
             
                        </div>
 
                          
                        </ItemTemplate>
                        </asp:Repeater>

                       
                         <!--discription div-->

                    </div>
                </div>

                <!--modal-->
                <!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Message:</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
     
          <p>You can Easily Download this Research paper in PDF format on the basis of :</p>
          <ol>
              <li>Author Search</li>
               <li>Keyword Search</li>
               <li>Title Search</li>          
          </ol>  

            <p>kindly <a href="search.aspx">Click</a> Here And search which you want to Downlaod. </p>  <br />

      </div>
      <div class="modal-footer">
        <button type="button" class="btn-secondary" data-dismiss="modal">Close</button>
      <%--    <asp:Button ID="subscription" runat="server" Text="Submit" class="btn-primary" />--%>
      </div>
    </div>
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
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</html>
