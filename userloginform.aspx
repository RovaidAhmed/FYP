<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userloginform.aspx.cs" Inherits="userloginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 



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
</style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="login-form">
   
        <h2 class="text-center">Log in</h2> 
             
        <div class="form-group">
            <asp:TextBox ID="Txtuname" runat="server" placeholder="username" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="Txtpass" runat="server" placeholder="password" CssClass="form-control" TextMode="Password"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="Button1" runat="server" Text="Log in" CssClass="btn btn-primary btn-block" OnClick="Button1_Click"/><br /><br />
            <asp:Label ID="Lblerror" runat="server" Text=" " Style="color:red;"></asp:Label>
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
