<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Advance_Publication.aspx.cs" Inherits="_Default"  %>

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
            background-color:ivory;
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

      td{
          font-weight:bold;
          color:darkcyan;
         padding-top:25px;
                       
      }
      span{
          color:firebrick;
      }
      p{
          font-style:italic;
          color:black;
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
    <h1 style="text-align:center;font-family: 'Abril Fatface', cursive;
     font-family: 'Cuprum', sans-serif;font-size:2em;"><b>Publication Information</b></h1>
       </div>
     <label style="margin-left:25px;" runat="server" id="lblsorting">Order By:</label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
            <asp:ListItem>--choose--</asp:ListItem>          
            <asp:ListItem>ASC</asp:ListItem>
            <asp:ListItem>DESC</asp:ListItem>
        </asp:DropDownList>
        <br />
        
        <!--------error message div---->
        <div  runat="server" id="errormessage">
            <h1 style="text-align:center;position:fixed;margin-left:50%;">Not Found !</h1>

        </div>

          <div class="container">
              <asp:Repeater ID="Repeater1" runat="server">
                  <ItemTemplate>

                 

             
               
            <div class="row" style="background-color:honeydew;width:100%;height:auto;border-radius:15px;border:1px solid green;position:relative">

                   <div class="col-lg-3 col-md-3" >
                      <table>
                          <tr>
                              <td>Publication Time: <span><%# Eval("publication_time") %></span></td>
                             
                          </tr>
                          <tr>
                              <td>Publication Charges: <span><%# Eval("publication_charges") %></span> </td>
                             
                          </tr>
                          <tr>
                              <td>Journal Access: <span><%# Eval("pub_Jou_Access") %></span> </td>
                             
                          </tr>
                      </table>
                    
                       
                    </div>
                <div class="col-lg-6 col-md-6" >
                       <h1 style="text-align:center;color:darkcyan;"><%# Eval("J_name") %></h1> <br />
                    <p> keywords:  <span><%# Eval("keyword") %></span></p>
                    </div>
                <div class="col-lg-2 col-md-2" >
                       <table>
                          <tr>
                              <td>Impact Factor: <span><%# Eval("Impact_factor") %></span></td>
                             
                          </tr>
                          <tr>
                              <td>ISSN: <span><%# Eval("ISSN") %></span> </td>
                             
                          </tr>
                          <tr>
                              <td>Journal Index: <span><%# Eval("index_name") %></span> </td>
                             
                          </tr>
                      </table>
                     </div>
                <div class="col-lg-1 col-md-1" >
                     <asp:hyperlink id="hlDownload" runat="server"  NavigateUrl='<%# Eval("Publication_link") %>' Text="Click_Here"  Target='<%# "_blank" %>'/>
                    </div>


            </div> 
                      <br />
                   </ItemTemplate>
                   </asp:Repeater>           
        </div>
        <hr />
      

          
    

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Researcher's portalConnectionString2 %>" SelectCommand="SELECT DISTINCT * FROM [index]"></asp:SqlDataSource>


        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <div class="container" runat="server" id="main_div">
         <div class="row">
             <div class="col-lg-12">
               <%--  <div class="form-group">
                     <label style="font-family: 'Noto Sans JP', sans-serif;">Keyword:</label><br />
                  <asp:TextBox ID="Txtkeyword" Style="font-size:15px;padding-left:120px;" runat="server" CssClass="form-control"  ></asp:TextBox>

                 </div>--%>

        
         
                  <div class="form-group">
                     <label style="font-family: 'Noto Sans JP', sans-serif;">Indexing:<b style="color:red">*</b></label><br />
                      <asp:DropDownList ID="DropDownIndex" runat="server" style="margin-left:25px;" Width="377px" DataSourceID="SqlDataSource1"   onclick="sethref2();" DataTextField="index_name" DataValueField="index_name" ></asp:DropDownList>

                      <asp:TextBox ID="Txtindex" runat="server" Width="113px"></asp:TextBox>

                 </div>
                 <hr />
                   <div class="form-group">
                     <label style="font-family: 'Noto Sans JP', sans-serif;">Publication Time:<b style="color:red">*</b></label><br />
                      <asp:DropDownList ID="DropDownpub" AppendDataBoundItems="true" runat="server" style="margin-left:25px;" Width="378px" DataSourceID="SqlDataSource2" DataTextField="publication_time" DataValueField="publication_time" onclick="sethref1();">
                          <asp:ListItem>--choose--</asp:ListItem>
                      </asp:DropDownList>

                       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Researcher's portalConnectionString %>" SelectCommand="SELECT DISTINCT [publication_time] FROM [journals_publication]"></asp:SqlDataSource>

                       <asp:TextBox ID="Txttime" runat="server"></asp:TextBox>

                 </div>
                 <hr />
                  <div class="form-group">
                     <label style="font-family: 'Noto Sans JP', sans-serif;">Access: <b style="color:red">*</b></label><br />
                      <asp:DropDownList ID="DropDownacc" runat="server" AppendDataBoundItems="true"    style="margin-left:25px;" Width="378px"  onclick="sethref();" DataSourceID="SqlDataSource3" DataTextField="pub_Jou_Access" DataValueField="pub_Jou_Access">
                             <asp:ListItem >--choose--</asp:ListItem>
                      
                      </asp:DropDownList>

                      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Researcher's portalConnectionString %>" SelectCommand="SELECT DISTINCT [pub_Jou_Access] FROM [journals_publication]"></asp:SqlDataSource>

                      <asp:TextBox ID="Txtaccess" runat="server"></asp:TextBox>

                 </div><br />
                   <div class="form-group">
                     <label style="font-family: 'Noto Sans JP', sans-serif;">Publication Charges: 
                         <asp:RadioButton ID="RadioBtnchargesless" runat="server" GroupName="choose1" /><span>less</span>
                       <asp:RadioButton ID="RadioBtnchargesgreater" runat="server"  GroupName="choose1"/><span>Greater</span>
                       </label><br />
                  <asp:TextBox ID="Txtpubcharges" Style="font-size:15px;padding-left:120px;" runat="server" CssClass="form-control" ></asp:TextBox>

                 </div>

                    <div class="form-group">
                     <label style="font-family: 'Noto Sans JP', sans-serif;">Impact factor:
                         <asp:RadioButton ID="RadioBtnimpless" runat="server" GroupName="choose"/><span>less</span>
                        <asp:RadioButton ID="RadioBtnimpgreater" runat="server" GroupName="choose" /><span>Greater</span>
                        </label><br />
                  <asp:TextBox ID="Txtimpactfactor" Style="font-size:15px;padding-left:120px;" runat="server" CssClass="form-control" ></asp:TextBox>

                 </div>

                  

                 <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="btn-primary form-control" Style="font-size:14px;" OnClick="Button1_Click"  />

                 

             </div>
         </div>
     </div>

      
        





  </div>
   </form>

  <script>
      function sethref() {           //dropdownacc

            var Textb = document.getElementById('<%=Txtaccess.ClientID%>');                                                                        
            var parLab = document.getElementById('<%=DropDownacc.ClientID%>').options[document.getElementById('<%=DropDownacc.ClientID%>').selectedIndex].text;

          if(parLab!='--select deptname--'){
            Textb.value = parLab
            }

          else{

         Textb.value ='';

         }

      }
       function sethref1() {           //dropdowntime

            var Textb = document.getElementById('<%=Txttime.ClientID%>');                                                                        
            var parLab = document.getElementById('<%=DropDownpub.ClientID%>').options[document.getElementById('<%=DropDownpub.ClientID%>').selectedIndex].text;

          if(parLab!='--select deptname--'){
            Textb.value = parLab
            }

          else{

         Textb.value ='';

         }

       }
      function sethref2() {           //dropdowntime

            var Textb = document.getElementById('<%=Txtindex.ClientID%>');                                                                        
            var parLab = document.getElementById('<%=DropDownIndex.ClientID%>').options[document.getElementById('<%=DropDownIndex.ClientID%>').selectedIndex].text;

          if(parLab!='--select deptname--'){
            Textb.value = parLab
            }

          else{

         Textb.value ='';

         }

       }



      $(document).ready(function () {
          $('#Txttime').hide();
          $('#Txtaccess').hide();
          $('#Txtindex').hide();

      })
     
       </script> 


  </script> 
  
</body>
   
</html>
