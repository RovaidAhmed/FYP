<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
     <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Open+Sans:600'/>
    <link href="css/login_form_css.css" rel="stylesheet" />
   
    <style>
        body {
            background-image: url("./img/two.jpg");
           
        }
        .txtbox{
            height:35px;
            font-weight:bold;
            font-size:18px;
            width:100%;
            border-radius:25px;
           
        }
        .btn{
             height:35px;
             width:100%;
             border-radius:25px;
             background-color:#1161ee;
        }
        .login-html{
            background:rgba(240,211,193,0.88)!important;
        }
        .label{
            color:#000 !important;
        }
    </style>
  
</head>
    
<body>

    <form id="form1" runat="server">

   
        <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<asp:TextBox ID="TextBox2" runat="server" class="txtbox"></asp:TextBox>
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<asp:TextBox ID="TextBox1" runat="server" class="txtbox" TextMode="Password"></asp:TextBox>
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check" class="label"><span class="icon"></span > Keep me Signed in</label>
				</div>
				<div class="group">
					<asp:Button ID="Button1" runat="server" Text="Button" class="btn"/>
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">Forgot Password?</a>
				</div>
			</div>
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<asp:TextBox ID="TextBox3" runat="server" class="txtbox"></asp:TextBox>
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<asp:TextBox ID="TextBox4" runat="server" class="txtbox" TextMode="Password"></asp:TextBox>
				</div>
				
				<div class="group">
					<label for="pass" class="label">Email Address</label>
				<asp:TextBox ID="TextBox5" runat="server" class="txtbox"></asp:TextBox>
				</div>
				<div class="group">
					<asp:Button ID="Button2" runat="server" Text="Button" class="btn" />
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">Already Member?</a>
				</div>
			</div>
		</div>
	</div>
</div>
  



    </form>
</body>
</html>
