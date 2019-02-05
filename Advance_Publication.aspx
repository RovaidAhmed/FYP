<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Advance_Publication.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Advance_Publication</title>

 <!-- Font Awesome -->
     <link href="https://fonts.googleapis.com/css?family=Patua+One" rel="stylesheet"> 
   <link href="https://fonts.googleapis.com/css?family=Abril+Fatface|Roboto" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Cuprum" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    
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
        h1 :hover{
            color :green;
        }
        #Button1:hover{
            background-color:lightblue;
            color:firebrick;
            font-weight:bold;
        }
        

    </style>
 </head>
<body>
    <form id="form1" runat="server">
    <div>
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
                            <a class="nav-link" href="Publish.aspx">Subscribtion</a>
                        </li>
                       
                    </ul>
                   
                </div>
            </div>
        </nav>
        <!--/.Navbar-->   
    <h1 style="text-align:center;font-family: 'Abril Fatface', cursive;
     font-family: 'Cuprum', sans-serif;font-size:2em;"><b>Publication Information</b></h1>
 </div><br />

        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            CssClass="table table-bordered tab-content  table-condensed table-hover" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
<div class="container" runat="server" id="main_div">
         <div class="row">
             <div class="col-lg-12">
                 <div class="form-group">
                     <label style="font-family: 'Noto Sans JP', sans-serif;">Keyword:</label><br />
                  <asp:TextBox ID="Txtkeyword" Style="font-size:15px;padding-left:120px;" runat="server" CssClass="form-control"  ></asp:TextBox>

                 </div>

                  <div class="form-group">
                     <label style="font-family: 'Noto Sans JP', sans-serif;">ISSN:</label><br />
                  <asp:TextBox ID="Txtissn" Style="font-size:15px;padding-left:120px;" runat="server" CssClass="form-control" ></asp:TextBox>


                 </div>
         
                  <div class="form-group">
                     <label style="font-family: 'Noto Sans JP', sans-serif;">Indexing:</label><br />
                      <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left:25px;" Width="377px" CssClass="form-control"></asp:DropDownList>

                 </div>
                 <hr />
                   <div class="form-group">
                     <label style="font-family: 'Noto Sans JP', sans-serif;">Publication Time:</label><br />
                      <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left:25px;" Width="378px" CssClass="form-control"></asp:DropDownList>

                 </div>
                 <hr />
                  <div class="form-group">
                     <label style="font-family: 'Noto Sans JP', sans-serif;">Access:</label><br />
                      <asp:DropDownList ID="DropDownList3" runat="server" style="margin-left:25px;" Width="378px" CssClass="form-control" required="required;"></asp:DropDownList>

                 </div><br />
                   <div class="form-group">
                     <label style="font-family: 'Noto Sans JP', sans-serif;">Publication Charges:</label><br />
                  <asp:TextBox ID="Txtpubcharges" Style="font-size:15px;padding-left:120px;" runat="server" CssClass="form-control" ></asp:TextBox>

                 </div>

                    <div class="form-group">
                     <label style="font-family: 'Noto Sans JP', sans-serif;">Impact factor:</label><br />
                  <asp:TextBox ID="Txtimpactfactor" Style="font-size:15px;padding-left:120px;" runat="server" CssClass="form-control" ></asp:TextBox>

                 </div>

                  

                 <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="btn-primary form-control" Style="font-size:14px;" OnClick="Button1_Click"    />



             </div>
         </div>
     </div>
        






    </div>
    </form>

</body>
   
</html>
