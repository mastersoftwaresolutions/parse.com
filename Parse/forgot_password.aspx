<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgot_password.aspx.cs" EnableEventValidation="false" Async="true" Inherits="forgot_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="Sentir, Responsive admin and dashboard UI kits template">
		<meta name="keywords" content="admin,bootstrap,template,responsive admin,dashboard template,web apps template">
		<meta name="author" content="Ari Rusmanto, Isoh Design Studio, Warung Themes">
		<title>Forgot password | SENTIR - Responsive admin and dashboard UI kits template</title>
 
		<!-- BOOTSTRAP CSS (REQUIRED ALL PAGE)-->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
		
		<!-- MAIN CSS (REQUIRED ALL PAGE)-->
		<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
		<link href="assets/css/style.css" rel="stylesheet"/>
		<link href="assets/css/style-responsive.css" rel="stylesheet"/>
 
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body class="login tooltips">
    <form id="form1" runat="server">
    <div class="login-header text-center">
			<img src="assets/img/logo-login.png" class="logo" alt="Logo">
		</div>
		<div class="login-wrapper">
			<div id="emailmessage" class="alert alert-warning alert-bold-border fade in alert-dismissable" runat="server">
			  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			  Enter your email address to recover your password.
			</div>
            <div id="emailsucess" class="alert alert-warning alert-bold-border fade in alert-dismissable" runat="server">
			  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			  Your reset password link has been send to your emailid.
			</div>


			<form role="form">
				<div class="form-group has-feedback lg left-feedback no-label">
				  <input type="email" name="useremail" id="useremail" class="form-control no-border input-lg rounded" placeholder="Enter email" autofocus required="required">
				  <span class="fa fa-envelope form-control-feedback"></span>
				</div>
				<div class="form-group">
					<%--<button type="submit" class="btn btn-warning btn-lg btn-perspective btn-block">RESET PASSWORD</button>--%>
                    <asp:Button ID="btnReset" Text="RESET PASSWORD" runat="server" class="btn btn-warning btn-lg btn-perspective btn-block" OnClick="btnReset_Click" />
				</div>
			</form>
			<p class="text-center"><strong><a href="Login.aspx">Back to login</a></strong></p>
		</div>
        	<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
