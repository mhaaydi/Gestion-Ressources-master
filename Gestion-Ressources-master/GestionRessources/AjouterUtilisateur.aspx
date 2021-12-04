<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjouterUtilisateur.aspx.cs" Inherits="GestionRessources.AjouterUtilisateur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/cntctPage.css" rel="stylesheet" />
    <link href="css/RespR.css" rel="stylesheet" />
    <link href="css/reset.css" type='text/css' rel="stylesheet" />
  

    <title></title>
    </head>
<body style="background:url(../images/supp.png) no-repeat; background-size : cover ;">
   
     <nav id="mainNav" style="background-color: #570880;">
      <ul>
        <li><a href="ChefDepartement.aspx"><i class="icon-home"></i><img src="../images/homei.png" /><br />Acceuil</a></li>
      
          <li><a href="#"><i class="icon-print"></i><img src="../images/fourni.png" /><br />Gérer les utilisateurs</a>
     <ul class="sub-menu">
            <li><a href="AjouterUtilisateur.aspx">Ajouter Utilisateur</a></li>
            <li><a href="listUtilisateur.aspx">Liste des Utilisateurs</a></li>
          </ul>
              </li>
         <li><a href="ListeBesoin.aspx"><i class="icon-home"></i><img src="../images/homei.png" /><br />Liste des besoins</a></li>
        <li><a href="Home.aspx"><i class="icon-twitter"></i><img src="../images/exit.png" /><br />Deconnexion</a></li>
      </ul><div class="clr" ></div>
    </nav> 
   
    <div>
        <div class="container" style="margin-top : 70px;">
	        <div class="row">
			        <h1 style="font-family: Century Gothic;font-size: 40px; sans-serif; color: red; font-weight:bold;">Nouvel Utilisateur&nbsp; </h1>
	        </div>
            <form runat="server">
	        <div class="row input-container">
			        <div class="col-xs-12">
				        <div class="styled-input wide">
                            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
					        <label>Login</label> 
				        </div>
			        </div>
			        <div class="col-md-6 col-sm-12">
				        <div class="styled-input">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
					        <label>Mot de passe</label> 
				        </div>
			        </div>
			       
                   
			        <div>
                        <asp:Button ID="Button1" class="btn-lrg submit-btn" runat="server" Text="Ajouter" OnClick="button1_Click" />
				     
			        </div>
	        </div>
           </form>
        </div>
        </div>
</body>
</html>
