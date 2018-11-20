<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Researcher's Portal</title>

   
      <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet"/>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <style>
      
        main {
            padding-top: 3rem;
            padding-bottom: 2rem;
        }
        body{
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
                        <li class="nav-item btn-group">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Subscribe
                            </a>
                            <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#"  style="font-size:13px;">Favourite_Journal</a>
                                
                            </div>
                        </li>
                    </ul>
                   
                </div>
            </div>
        </nav>
        <!--/.Navbar-->

    </header>

    <main>

        <!--Main layout-->
        <div class="container">
            <!--First row-->
            <div class="row wow fadeIn" data-wow-delay="0.2s">
                <div class="col-lg-7">
                    <!--Featured image -->
                    <div class="view overlay hm-white-light z-depth-1-half">
                        <img src="./img/home_logo.jpg" class="img-fluid " alt="" >
                        <div class="mask">
                        </div>
                    </div>
                    <br>
                </div>

                <!--Main information-->
                <div class="col-lg-5">
                    <h2 class="h2-responsive font-bold">Researcher's Portal</h2>
                    <hr>
                    <p>
                       We are providing a platform Where researchers have to find a journal according to their need and standard they face some        difficulties. Our main purpose to make this project is to provide easiness for students, professors or anyone who is interested in reading journals or want to publish their own research paper.
                        </p>
                    <a href="" class="btn btn-info"  style="font-size:14px;">let's Search</a>
                </div>
            </div>
            <!--/.First row-->

            <hr class="extra-margins my-5">

            <!--Second row-->
            <div class="row pt-4">
                <!--First columnn-->
                <div class="col-lg-4">
                    <!--Card-->
                    <div class="card wow fadeIn" data-wow-delay="0.4s"><br />

                        <!--Card image-->
                        <img class="img-fluid" src="./img/ISI.png" alt="Card image cap"><br />

                        <!--Card content-->
                        <div class="card-body">
                            <!--Title-->
                            <h4 class="card-title text-center">ISI</h4>
                            <hr>
                            <!--Text-->
                            <p class="card-text" style="font-size:15px;">The ISI server provides indexing of major international journals and proceedings. Author can get information about international journal impact factor, proceedings (research papers) and information on upcoming events.
                                ISI Web Of Knowledge has 3 products: Web of Science ... The Science Edition covers about 5,700 leading international science journals from the ISI database.
                            </p>
                        </div>

                    </div>
                    <!--/.Card-->
                </div>
                <!--First columnn-->

                <!--Second columnn-->
                <div class="col-lg-4">
                    <!--Card-->
                    <div class="card wow fadeIn" data-wow-delay="0.6s">

                        <!--Card image-->
                        <img class="img-fluid" src="./img/scopus.png" alt="Card image cap">

                        <!--Card content-->
                        <div class="card-body">
                            <!--Title-->
                            <h4 class="card-title text-center">Scopus</h4>
                            <hr>
                            <!--Text-->
                            <p class="card-text"  style="font-size:15px;">Scopus is the world's largest abstract and citation database of peer-reviewed literature, including scientific journals, books and conference proceedings, covering research topics across all scientific and technical disciplines, ranging from medicine and social sciences to arts and humanities.
                                Hindawi's journals are indexed in hundreds of Abstracting and Indexing databases.
                            </p>
                        </div>

                    </div>
                    <!--/.Card-->
                </div>
                <!--Second columnn-->

                <!--Third columnn-->
                <div class="col-lg-4">
                    <!--Card-->
                    <div class="card wow fadeIn" data-wow-delay="0.8s">

                        <!--Card image-->
                        <img class="img-fluid" src="./img/emerald.jpg" alt="Card image cap">

                        <!--Card content-->
                        <div class="card-body">
                            <!--Title-->
                            <h4 class="card-title text-center">Emerald</h4>
                            <hr>
                            <!--Text-->
                            <p class="card-text"  style="font-size:15px;">Emerald is committed to providing peer-reviewed, international content that can be trusted by the researchers, students and professionals we serve. Combining research rigour with practical relevance, our eJournal Collections focus on showcasing novel and thought-provoking work by leading authors in their fields.</p>
                        </div>

                    </div>
                    <!--/.Card-->
                </div>
                <!--Third columnn-->
            </div>
            <!--/.Second row-->
        </div>
        <!--/.Main layout-->

    </main>

    <!--Footer-->
    <footer class="page-footer center-on-small-only">

        <%--<!--Footer links-->
        <div class="container-fluid">
            <div class="row">
                <!--First column-->
                <div class="col-lg-offset-4 "></div>
                <div class="col-lg-12 col-md-6 ml-auto">
                    <h5 class="title mb-3"><strong>About </strong></h5>
                    <p> hp</p>
                </div>
                <!--/.First column-->
                <hr class="w-100 clearfix d-sm-none">
                
                
            </div>
        </div>--%>
        <!--/.Footer links-->

     

        <!--Copyright-->
        <div class="footer-copyright">
            <div class="container-fluid"  style="font-size:15px;">
                © 2018 Copyright: <a href="https://www.ResearchersPortal.com"> Researcher's Portal</a>

            </div>
        </div>
        <!--/.Copyright-->

    </footer>





    </form>

</body>
     <!-- SCRIPTS -->

        

     <!-- JQuery -->
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
