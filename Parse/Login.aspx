﻿<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" Async="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="Sentir, Responsive admin and dashboard UI kits template">
		<meta name="keywords" content="admin,bootstrap,template,responsive admin,dashboard template,web apps template">
		<meta name="author" content="Ari Rusmanto, Isoh Design Studio, Warung Themes">
		<title>Login | SENTIR - Responsive admin and dashboard UI kits template</title>
 
		<!-- BOOTSTRAP CSS (REQUIRED ALL PAGE)-->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
		
		<!-- PLUGINS CSS -->
		<link href="assets/plugins/weather-icon/css/weather-icons.min.css" rel="stylesheet"/>
		<link href="assets/plugins/prettify/prettify.min.css" rel="stylesheet"/>
		<link href="assets/plugins/magnific-popup/magnific-popup.min.css" rel="stylesheet"/>
		<link href="assets/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet"/>
		<link href="assets/plugins/owl-carousel/owl.theme.min.css" rel="stylesheet"/>
		<link href="assets/plugins/owl-carousel/owl.transitions.min.css" rel="stylesheet"/>
		<link href="assets/plugins/chosen/chosen.min.css" rel="stylesheet"/>
		<link href="assets/plugins/icheck/skins/all.css" rel="stylesheet"/>
		<link href="assets/plugins/datepicker/datepicker.min.css" rel="stylesheet"/>
		<link href="assets/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet"/>
		<link href="assets/plugins/validator/bootstrapValidator.min.css" rel="stylesheet"/>
		<link href="assets/plugins/summernote/summernote.min.css" rel="stylesheet"/>
		<link href="assets/plugins/markdown/bootstrap-markdown.min.css" rel="stylesheet"/>
		<link href="assets/plugins/datatable/css/bootstrap.datatable.min.css" rel="stylesheet"/>
		<link href="assets/plugins/morris-chart/morris.min.css" rel="stylesheet"/>
		<link href="assets/plugins/c3-chart/c3.min.css" rel="stylesheet"/>
		<link href="assets/plugins/slider/slider.min.css" rel="stylesheet"/>
		<link href="assets/plugins/salvattore/salvattore.css" rel="stylesheet"/>
		<link href="assets/plugins/toastr/toastr.css" rel="stylesheet"/>
		<link href="assets/plugins/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet"/>
		<link href="assets/plugins/fullcalendar/fullcalendar/fullcalendar.print.css" rel="stylesheet" media="print"/>
		
		<!-- MAIN CSS (REQUIRED ALL PAGE)-->
		<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
		<link href="assets/css/style.css" rel="stylesheet"/>
		<link href="assets/css/style-responsive.css" rel="stylesheet"/>
 
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->

    <script  type='text/javascript'>

        function myfunction()
        {
            alert("here");
            alert($('#username').val());
            $('#username').val('');
            $('#password').val(''); 
        }
      
      
       
       
</script>
  <%-- <script type="text/javascript">
       document.onkeydown = function (e) {
           e = e || window.event;
           if (e.keyCode === 116) {
               e.keyCode = 0;
               $('#diverror').hide();               
               return false();
             
           }
       }
</script>--%>
</head>
<body class="login tooltips">
    <form id="form1" runat="server" >
   <div class="login-header text-center">
			<img src="assets/img/logo-login.png" class="logo" alt="Logo"/>
		</div>
		<div class="login-wrapper">
            <div id="sitemessage" class="alert alert-warning alert-bold-border fade in alert-dismissable" runat="server">
			  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			  <strong>Warning!</strong> Better check yourself, you're <a  class="alert-link">not looking too good</a>.
			</div>
            <div style="width:300px;border:1px solid #e8aa2e;background-color:#ffffff;height:40px;padding-top:9px " id="diverror" align="center" runat="server">
              
                  <asp:Label ID="lblerror" style="color:#434a54"   runat="server"></asp:Label>     </div> 
            <br />
			<%--<form role="form" action="index.html">--%>
				<div class="form-group has-feedback lg left-feedback no-label">
				  <input type="text" id="username" name="username"   class="form-control no-border input-lg rounded"  placeholder="Enter username" onchange="check(this)" autofocus="autofocus" required="required" runat="server"/>
                    <%--<asp:TextBox ID="username" CssClass="form-control no-border input-lg rounded"  placeholder="Enter username" autofocus="autofocus" required="required" runat="server"></asp:TextBox>--%>
				  <span class="fa fa-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback lg left-feedback no-label">
				  <input type="password" id="password" name="password"   class="form-control no-border input-lg rounded" placeholder="Enter password" required="required" runat="server" />
				  <%--<asp:TextBox ID="password" TextMode="Password" CssClass="form-control no-border input-lg rounded"  placeholder="Enter password"  required="required" runat="server"></asp:TextBox>--%>
                      <span class="fa fa-unlock-alt form-control-feedback"></span>
				</div>
				<div class="form-group">
				  <div class="checkbox">
					<label>
					  <input id="Check1" type="checkbox" class="i-yellow-flat" name="Check1" runat="server"/> Remember me
				
                    </label>
				  </div>
				</div>
				<div class="form-group">
					<%--<button type="submit" ondblclick="btn_click" class="btn btn-warning btn-lg btn-perspective btn-block">LOGIN</button>--%>

                    <asp:Button ID="btnlogin" 
                        
                         class="btn btn-warning btn-lg btn-perspective btn-block"    runat="server" Text="LOGIN" OnClick="btnlogin_Click" />
				</div>
			<%--</form>--%>
			<p class="text-center"><strong><a href="forgot_password.aspx">Forgot your password?</a></strong></p>
			<p class="text-center">or</p>
			<p class="text-center"><strong><a href="Signup.aspx">Create new account</a></strong></p>
		</div>
        <script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/plugins/retina/retina.min.js"></script>
		<script src="assets/plugins/nicescroll/jquery.nicescroll.js"></script>
		<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		<script src="assets/plugins/backstretch/jquery.backstretch.min.js"></script>
 
		<!-- PLUGINS -->
		<script src="assets/plugins/skycons/skycons.js"></script>
		<script src="assets/plugins/prettify/prettify.js"></script>
		<script src="assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
		<script src="assets/plugins/owl-carousel/owl.carousel.min.js"></script>
		<script src="assets/plugins/chosen/chosen.jquery.min.js"></script>
		<script src="assets/plugins/icheck/icheck.min.js"></script>
		<script src="assets/plugins/datepicker/bootstrap-datepicker.js"></script>
		<script src="assets/plugins/timepicker/bootstrap-timepicker.js"></script>
		<script src="assets/plugins/mask/jquery.mask.min.js"></script>
		<script src="assets/plugins/validator/bootstrapValidator.min.js"></script>
		<script src="assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
		<script src="assets/plugins/datatable/js/bootstrap.datatable.js"></script>
		<script src="assets/plugins/summernote/summernote.min.js"></script>
		<script src="assets/plugins/markdown/markdown.js"></script>
		<script src="assets/plugins/markdown/to-markdown.js"></script>
		<script src="assets/plugins/markdown/bootstrap-markdown.js"></script>
		<script src="assets/plugins/slider/bootstrap-slider.js"></script>
		
		<script src="assets/plugins/toastr/toastr.js"></script>
		
		<!-- FULL CALENDAR JS -->
		<script src="assets/plugins/fullcalendar/lib/jquery-ui.custom.min.js"></script>
		<script src="assets/plugins/fullcalendar/fullcalendar/fullcalendar.min.js"></script>
		<script src="assets/js/full-calendar.js"></script>
		
		<!-- EASY PIE CHART JS -->
		<script src="assets/plugins/easypie-chart/easypiechart.min.js"></script>
		<script src="assets/plugins/easypie-chart/jquery.easypiechart.min.js"></script>
		
		<!-- KNOB JS -->
		<!--[if IE]>
		<script type="text/javascript" src="assets/plugins/jquery-knob/excanvas.js"></script>
		<![endif]-->
		<script src="assets/plugins/jquery-knob/jquery.knob.js"></script>
		<script src="assets/plugins/jquery-knob/knob.js"></script>

		<!-- FLOT CHART JS -->
		<script src="assets/plugins/flot-chart/jquery.flot.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.tooltip.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.resize.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.selection.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.stack.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.time.js"></script>

		<!-- MORRIS JS -->
		<script src="assets/plugins/morris-chart/raphael.min.js"></script>
		<script src="assets/plugins/morris-chart/morris.min.js"></script>
		
		<!-- C3 JS -->
		<script src="assets/plugins/c3-chart/d3.v3.min.js" charset="utf-8"></script>
		<script src="assets/plugins/c3-chart/c3.min.js"></script>
		
		<!-- MAIN APPS JS -->
		<script src="assets/js/apps.js"></script>
    </form>
</body>
</html>
