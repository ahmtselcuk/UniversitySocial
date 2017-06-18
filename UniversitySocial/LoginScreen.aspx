<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginScreen.aspx.cs" EnableEventValidation="false"   Inherits="UniversitySocial.LoginScreen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="assets/js/jquery-1.11.3.min.js"></script>
    <script src="assets/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
    <link href="assets/bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="assets/js/ab-degisenArkaPlan.js"></script>
    <link href="assets/css/LoginScreen.css" rel="stylesheet" />
    <script src="assets/js/LoginScreen.js"></script>
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
                        <div class="col-sm-8 col-sm-offset-2 text  ">
                            <h1><strong>MEDİPOL</strong> SOSYAL AĞ </h1>
                            <div class="description">
                            	<p>
	                            	<h3 style="color:orange;"><a href="/admin/AdminLogin.aspx">Yönetici girişi için tıklayınız.</a></h3>
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    		
                        <div class="col-sm-6 form-box">
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
			                       
			                      <asp:Button ID="btn_giris" CssClass="btn btn-success center-block btn-lg" runat="server" Text="Giriş Yap" OnClick="btn_giris_Click"  />
                                       <asp:Panel ID="Panel2" runat="server">

                                     <div class="alert alert-danger" role="alert">
                                        
			<button  type="button" class="close" data-dismiss="alert"><span>&times;</span></button>

			Hatalı giriş yaptınız  !</div>
                                </asp:Panel>
			                    </form>
		                    </div>
                        </div>
                        <div class="col-sm-6 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Kayıt Olun</h3>
                            		<p>Ücretsiz bir şekilde kayıt olabilirsiniz.</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                   
                                   
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-first-name">First name</label>
                                         	<asp:TextBox ID="txt_name" runat="server" placeholder="Adınızı giriniz.." CssClass="form-control" ></asp:TextBox>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-last-name">Last name</label>
			                        		<asp:TextBox ID="txt_surname" runat="server" placeholder="Soyadınızı giriniz.." CssClass="form-control" ></asp:TextBox>

			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-email">Email</label>
			                        		<asp:TextBox ID="txt_email" runat="server" placeholder="Email adresinizi giriniz.." CssClass="form-control" ></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txt_email" ValidationExpression="" runat="server" ErrorMessage="Hatalı veri girişi"></asp:RegularExpressionValidator>

			                        </div>
                                     <div class="form-group">
			                        	<label class="sr-only" for="form-email">Şifrenizi Giriniz</label>
			                        		<asp:TextBox ID="txt_password" runat="server" placeholder="Şifrenizi belirleyin.." CssClass="form-control" ></asp:TextBox>

			                        </div>

                                
                                     
                                    
			                       
			                      <asp:Button ID="btn_kaydet" CssClass="btn btn-success center-block btn-lg" runat="server" Text="Kaydolun" OnClick="btn_kaydet_Click"   />
			                   


                                <asp:Panel ID="Panel1" runat="server">

                                     <div class="alert alert-success" role="alert">
                                        
			<%--<button  type="button" class="close" data-dismiss="alert"><span>&times;</span></button>--%>

			Kayıt işleminiz tamamlanmıştır,sistemimize giriş yapabilirsiniz !</div>
                                </asp:Panel>
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
      <script src="assets/js/retina-1.1.0.js"></script>
                <script src="assets/js/placeholder.js"></script>
<script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
    </form>
</body>
</html>
