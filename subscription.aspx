<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Subscription.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <!-- Font Awesome -->
   
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <!--  Js  -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet"/>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    
   
    <!-- Google fonts  -->
   <link href="https://fonts.googleapis.com/css?family=Quattrocento" rel="stylesheet">
    <style>
      
        main {
            padding-top: 3rem;
            padding-bottom: 2rem;
        }
        body{
            font-size:15px;
          font-family: 'Quattrocento', serif;
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
    <form runat="server">
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
                       
                    </ul>
                   
                </div>
            </div>
        </nav>
        <!--/.Navbar--> 


     <div class="container-fluid">
         <div class="row">
             <div class="col-lg-12">
                 <h2> About Subscription :</h2>
                 <br />
                 <ul>
                     <li>User must get register to the web application to get subscribed.</li>
                     <li>There must be option of subscription to alerts where user get notifies about updates through email.</li>
                     <li>There must be a Favorite List of each user where he/she can add their favorite one’s in their list.</li>
                 </ul>

                 <button type="button" style="font-size:20px;" class="btn btn-success" data-toggle="modal" data-target="#exampleModalCenter">Register </button>
              

             </div>
         </div>
    </div>

        <br />
      

     <div class="container-fluid">
         <div class="row">
             <div class="col-lg-12">
                 <h2> Registered Already :</h2>
                 <br />
                 <ul>
                     <li>IF you Register Before Click Below to See your Favourite List.</li>

                 </ul>
                 <button class="btn btn-primary" style="font-size:15px;" >
                     <a href="userloginform.aspx" style="color:white;text-decoration:none;">Login</a>
                 </button>

                 
              
                
              
             </div>
         </div>
    </div>

       <!-- Button trigger modal -->


<!-- Modal  Registration-->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLongTitle">Register:</h4>
    
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <label>Name : </label> <br />
          <asp:TextBox ID="Txtusername" runat="server" required="required"  style="font-size:15px;padding-bottom:5px;"></asp:TextBox><br />

              <label >Email : </label> <br />
          <asp:TextBox ID="Txtemail" runat="server"  required="required"  style="font-size:15px;padding-bottom:5px;"></asp:TextBox><br />

            <label>Password : </label> <br />
          <asp:TextBox ID="Txtpass" runat="server" TextMode="Password"  required="required" style="font-size:15px;padding-bottom:5px;"></asp:TextBox><br />

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="font-size:15px;">Close</button>
          <asp:Button ID="btnreg" runat="server" Text="Submit" class="btn btn-primary"  style="font-size:15px;" OnClick="btnreg_Click"/>
      </div>
    </div>
  </div>
</div>

        <!-- Modal  Registration-->






    </form>
</body>
</html>
