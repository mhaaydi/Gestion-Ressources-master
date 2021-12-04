<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjouterFournisseur.aspx.cs" Inherits="GestionRessources.AjouterFournisseur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/cntctPage.css" rel="stylesheet" />
    <link href="css/RespR.css" rel="stylesheet" />
    <link href="css/reset.css" type='text/css' rel="stylesheet" />
  

    <title></title>
    </head>
<body style="background:url(../images/four.png) no-repeat; background-size : cover ;">
   
   <nav id="mainNav" style="background-color: #570880;">
      <ul>
        <li><a href="ResponsableR.aspx"><i class="icon-home"></i><img src="../images/homei.png" /><br />Acceuil</a></li>
        <li><a href="#"><i class="icon-laptop"></i><img src="../images/lap.png" /><br />Ordinateurs</a>
          <ul class="sub-menu">
            <li><a href="AjouterOrdi.aspx"><i class="icon-plane"></i> Ajouter Ordinateur</a></li>
            <li><a href="ListerOrdi.aspx"><i class="icon-facetime-video"></i> Liste des Ordinateurs</a></li>
          </ul>
        </li>
          <li><a href="#"><i class="icon-print"></i><img src="../images/print.png" /><br />Imprimante</a>
          <ul class="sub-menu">
            <li><a href="AjouterImp.aspx">Ajouter Imprimante</a></li>
            <li><a href="ListerImp.aspx"> Liste des Imprimantes</a></li>
          </ul>
        </li>
           <li><a href="#"><i class="icon-print"></i><img src="../images/fourni.png" /><br />Fournisseur</a>
          <ul class="sub-menu">
            <li><a href="AjouterFournisseur.aspx">Ajouter Fournisseur</a></li>
            <li><a href="ListerFournisseur.aspx"> Liste des Fournisseurs</a></li>
          </ul>
        </li>
           <li><a href="AppelDoffre.aspx"><i class="icon-twitter"></i><img src="../images/exit.png" /><br />Appel d'offre</a></li>
        <li><a href="Home.aspx"><i class="icon-twitter"></i><img src="../images/exit.png" /><br />Deconnexion</a></li>
      </ul><div class="clr" ></div>
    </nav> 
    <div>
        <div class="container" style="margin-top : 70px;">
	        <div class="row">
			        <h1 style="font-family: Century Gothic;font-size: 40px; sans-serif; color: darkred;font-weight:bold">Nouveau Fournisseur&nbsp; </h1>
	        </div>
            <form runat="server">
	        <div class="row input-container">
			        <div class="col-xs-12">
				        <div class="styled-input wide">
                            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
					        <label >Nom Société</label> 
				        </div>
			        </div>
			        <div class="col-md-6 col-sm-12">
				        <div class="styled-input">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
					        <label>Lieu</label> 
				        </div>
			        </div>
			        <div class="col-md-6 col-sm-12">
				        <div class="styled-input" style="float:right;">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
					        
					        <label>Mail</label> 
				        </div>
			        </div>
			        <div class="col-xs-12">
				        <div class="styled-input wide">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
					        <label>Gérant</label> 
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
