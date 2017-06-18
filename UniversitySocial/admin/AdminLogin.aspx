<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" EnableEventValidation="false" Inherits="UniversitySocial.admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="assets/bootstrap-3.3.6-dist/js/jquery-1.11.3.min.js"></script>
    <script src="assets/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
    <link href="assets/bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/LoginScreen.css" rel="stylesheet" />
    <script src="assets/js/ab-degisenArkaPlan.js"></script>
    <script src="assets/bootstrap-3.3.6-dist/js/jquery.backstretch.min.js"></script>
    <script src="assets/bootstrap-3.3.6-dist/js/jquery.backstretch.js"></script>
    <script src="assets/bootstrap-3.3.6-dist/js/retina-1.1.0.js"></script>
    <script src="assets/bootstrap-3.3.6-dist/js/placeholder.js"></script>
    <script src="assets/bootstrap-3.3.6-dist/js/retina-1.1.0.min.js"></script>
      <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    
            <!--Navbar -->

     
           
          <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        
                    </div>
                    <div class="row">
                    		
                        <div class="col-sm-6 form-box" style="margin-top:20px;">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Giriş Yapın</h3>
                            		<p>Email ve şifreniz ile girebilirsiniz .</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class=" fa fa-user"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="" method="post" class="registration-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-first-name">First name</label>
			                        	<asp:TextBox ID="txt_emaill" TextMode="Email" runat="server" placeholder="Email adresinizi giriniz.." CssClass="form-control" ></asp:TextBox>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-last-name">Last name</label>
                                                         	<asp:TextBox ID="txt_passwordd" TextMode="Password" runat="server" placeholder="Şifreniz" CssClass="form-control" ></asp:TextBox>
			                        </div>
			                       
			                      <asp:Button ID="btn_giris" CssClass="btn btn-success center-block btn-lg" runat="server" Text="Giriş Yap" OnClick="btn_giris_Click"   />
                                       <asp:Panel ID="Panel2" runat="server">

                                     <div class="alert alert-danger" role="alert">
                                        
			<button  type="button" class="close" data-dismiss="alert"><span>&times;</span></button>

			Hatalı giriş yaptınız  !</div>
                                </asp:Panel>
			                    </form>
		                    </div>
                        </div>
                       
                    </div>
                </div>
            </div>
            
        </div>
            

          <script type="text/javascript">
              $(document).ready(function () {
                  $('body').abDegisenArkaPlan({
                      resimlerArasiGecis: 8000,
                      resimEfekleri: 1000,
                      resimler: "assets/loginscreen/resim4.jpg,assets/loginscreen/resim3.jpg,assets/loginscreen/resim2.jpg,assets/loginscreen/resim1.jpg,assets/loginscreen/deniz3.jpg,assets/loginscreen/fil.jpg,assets/loginscreen/aslan.jpg,assets/loginscreen/pnda.jpg"
                  });
              });
        </script>
        
        <!-- Javascript -->
      
    </form>
</body>
</html>
