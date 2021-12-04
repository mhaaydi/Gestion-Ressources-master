<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GestionRessources.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css' />
	<link href='https://fonts.googleapis.com/css?family=Arimo' rel='stylesheet' type='text/css'/>
	<link href='https://fonts.googleapis.com/css?family=Hind:300' rel='stylesheet' type='text/css'/>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'/>
    <link href="css/style.css" type='text/css' rel="stylesheet" />
    
</head>
<body style="background-color:red; background:url(../images/back.jpg) no-repeat;" >
    		  <div style="margin:0 auto; margin-top:15%"  id="login-button">
			  <img src="css/login-w-icon.png"/>		
			</div>
			<div id="container">
			
			  <h1>Authentification</h1>
			  <span class="close-btn">
			    <img src="css/circle_close_delete_-128.png"/>
			  </span>
			
			  <form runat="server" >
                <asp:TextBox type="text" ID="username" style="width: 80%;" placeholder="Nom d'utilisateur" runat="server"></asp:TextBox>
			    
		 	    <asp:TextBox type="password" ID="password" style="width: 80%;"  placeholder="Mot de passe" runat="server"></asp:TextBox>
               
                  <asp:Button ID="button1"   style="margin-left: 15px;  width: 120px;font-weight: bold; background: rgba(87,198,255,.5);" runat="server" Text="Connexion" OnClick="button1_Click" />
               
               
			    <div id="remember-container">
			      <input type="checkbox" id="checkbox-2-1" class="checkbox" checked="checked"/>
			      <span id="remember">Mémoriser</span>
			      <span id="forgotten">Mot de passe oublié</span>
			    </div>
                 <asp:Label ID="Label1" Visible="false" ForeColor="Red" Font-Size="15px" runat="server" Text="Label"></asp:Label>
			</form>
		</div>

     
 
<!-- Forgotten Password -->
<div id="forgotten-container"> 
   <h1>Oublié</h1>
  <span class="close-btn">
    <img src="css/circle_close_delete_-128.png"/>
  </span>

  <form>
    <input type="email" name="email" placeholder="E-mail" />
    <a href="#" class="orange-btn" style="text-align: center; width: 80%;">Nouveau Mot De Passe</a>
</form>
</div>

    <script src='css/TweenMax.min.js'></script>
    <script src='css/jquery.min.js'></script>
    <script type="text/javascript">
        $('#login-button').click(function () {
            $('#login-button').fadeOut("slow", function () {
                $("#container").fadeIn();
                TweenMax.from("#container", .4, { scale: 0, ease: Sine.easeInOut });
                TweenMax.to("#container", .4, { scale: 1, ease: Sine.easeInOut });
            });
        });

        $(".close-btn").click(function () {
            TweenMax.from("#container", .4, { scale: 1, ease: Sine.easeInOut });
            TweenMax.to("#container", .4, { left: "0px", scale: 0, ease: Sine.easeInOut });
            $("#container, #forgotten-container").fadeOut(800, function () {
                $("#login-button").fadeIn(800);
            });
        });

        /* Forgotten Password */
        $('#forgotten').click(function () {
            $("#container").fadeOut(function () {
                $("#forgotten-container").fadeIn();
            });
        });
    </script>
</body>

</html>