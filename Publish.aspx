﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Publish.aspx.cs" Inherits="Publish" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Publish</title>
    
      <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet"/>
    <link href="css/bootstrap.css" rel="stylesheet" 
    <link href="https://fonts.googleapis.com/css?family=Patua+One" rel="stylesheet"> 
    <style>
      
        main {
            padding-top: 3rem;
            padding-bottom: 2rem;
        }
        body{
            font-size:15px;
        background-color:white;
      
            
            
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
       h1{
           color:darkslategray;
           text-align:center;
           font-weight:bold;
           font-family:'Times New Roman', Times, serif;
           font-style:italic;
           text-decoration:underline;
           text-shadow: 2px 2px white;
       }
       .form-group{
           padding-bottom:20px;
       }
       
    </style>
</head>

<body>
    <form id="form1" runat="server">
 <header>

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
                            <a class="nav-link" href="">Journals</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="Publish.aspx">Publish</a>
                        </li>
                        <li class="nav-item btn-group">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">More
                            </a>
                            <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#"  style="font-size:13px;">Publish</a>
                                
                            </div>
                    </ul>
                   
                </div>
            </div>
        </nav>
        <!--/.Navbar-->

 <div>
     <h1 style="font-family: 'Patua One', cursive;">Publish</h1>
    
 </div><br />

     <div class="container">
         <div class="row">
             <div class="col-lg-12">
                 <div class="form-group">
                     <label>Keyword:</label><br />
                  <asp:TextBox ID="Txtkeyword" Style="font-size:15px;padding-left:120px;" runat="server" CssClass="form-control" ></asp:TextBox>

                 </div>

                  <div class="form-group">
                     <label>ISSN:</label><br />
                  <asp:TextBox ID="Txtissn" Style="font-size:15px;padding-left:120px;" runat="server" CssClass="form-control" ></asp:TextBox>


                 </div>
         
                  <div class="form-group">
                     <label>Indexing:</label><br />
                      <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left:25px;" Width="377px" CssClass="form-control"></asp:DropDownList>

                 </div>
                 <hr />
                   <div class="form-group">
                     <label>Publication Time:</label><br />
                      <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left:25px;" Width="378px" CssClass="form-control"></asp:DropDownList>

                 </div>
                 <hr />
                   <div class="form-group">
                     <label>Publication Charges:</label><br />
                  <asp:TextBox ID="Txtpubcharges" Style="font-size:15px;padding-left:120px;" runat="server" CssClass="form-control" ></asp:TextBox>

                 </div>

                    <div class="form-group">
                     <label>Impact factor:</label><br />
                  <asp:TextBox ID="Txtimpactfactor" Style="font-size:15px;padding-left:120px;" runat="server" CssClass="form-control" ></asp:TextBox>

                 </div>

                   <div class="form-group">
                     <label>Access:</label><br />
                      <asp:DropDownList ID="DropDownList3" runat="server" style="margin-left:25px;" Width="378px" CssClass="form-control"></asp:DropDownList>

                 </div>

                 <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="btn-primary form-control" Style="font-size:14px;"  />

             </div>
         </div>

     </div>


    </form>
</body>
</html>