<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignalerPanne.aspx.cs" Inherits="GestionRessources.SignalerPanne" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/cntctPage.css" rel="stylesheet" />
    <link href="css/RespR.css" rel="stylesheet" />
    <link href="css/reset.css" type='text/css' rel="stylesheet" />
  

    <title></title>
    <style type="text/css">
        .auto-style1 {
            float: right;
            width: 100%;
            position: relative;
            border-radius: 4px;
            left: 4px;
            top: 5px;
        }
        .auto-style2 {
            left: 6px;
            top: -2px;
        }
        .auto-style3 {
            background-color : red;
        }
    </style>
    </head>
<body style="background:url(../images/pc.jpg) no-repeat; background-size : cover ;">
   
    <nav id="mainNav" id="mainNav" style="background-color: #570880;">
      <ul>
        <li><a href="PersonneDepartement.aspx"><i class="fa-home"></i><img src="../images/homei.png" /><br />Acceuil</a></li>
       
          <li><a href="SignalerPanne.aspx"><i class="fa-print"></i><img src="../images/panneic.png" /><br />Signaler Panne</a>
        </li>
           <li><a href="AjouterBesoin.aspx"><i class="fa-print"></i><img src="../images/panneic.png" /><br />Ajouter Besoin</a>
        </li>
        
        <li><a href="Home.aspx"><img src="../images/exit.png" /><br />Deconnexion</a></li>
      </ul><div class="clr"></div>
    </nav> 
   
    <div>
        <div class="container" style="margin-top : 70px;">
	        <div class="row">
			        <h1 style="font-family: Century Gothic;font-size: 40px; sans-serif; color: white;font-weight:bold;">Nouvelle Panne&nbsp; </h1>
	        </div>
            <form runat="server">
	        <div class="row input-container">
			        <div class="col-xs-12">
				        <div class="styled-input wide" >
                             <h1 style="color:white"> Date d'apparition :   </h1>
                            <br />
                              
                                 <asp:TextBox ID="TextBox1" TextMode="Date" runat="server" ></asp:TextBox>
				        </div>
			        </div>
			        <div class="col-md-6 col-sm-12">
				        <div class="styled-input" >
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
					        <label style="color:white">Explication de la panne : </label>
				        </div>
			        </div>
			        <div class="col-md-6 col-sm-12">
				        <div class="auto-style1">
                            <label style="color:white">Fréquence : </label>
                            <asp:dropdownlist ID="TextBox3" runat="server">
                                     <asp:listitem text="Rare" value="Rare"></asp:listitem>
                                     <asp:listitem text="Fréquente" value="Fréquente"></asp:listitem>
                                     <asp:listitem text="Permanante" value="Permanante"></asp:listitem>
                            </asp:dropdownlist>
					           
				        </div>
                        <div class="auto-style1">
                            <label style="color:white">&nbsp &nbsp </label>
                            
					           
				        </div>
                         <div class="auto-style1">
                            <label style="color:white">Ordre Logiciel : </label>
                            <asp:dropdownlist ID="TextBox4" runat="server">
                                 <asp:listitem text="Defaut du Système" value="Defaut du Système"></asp:listitem>
                                 <asp:listitem text="Logiciel utilitaire" value="Logiciel utilitaire"></asp:listitem>
                                 <asp:listitem text="Materiel" value="Materiel"></asp:listitem>
                            </asp:dropdownlist>
                            
				        </div>
			        </div>
			        <div class="col-md-6 col-sm-12">
                        <label >&nbsp &nbsp </label>
				           <br />
                        <br />
                        <br />
			        </div>
                  
			        <div style="margin-top:150px">
                        <asp:Button ID="Button1" class="btn-lrg submit-btn" runat="server" Text="Signaler" OnClick="button1_Click" />
				     
			        </div>
	        </div>
           </form>
        </div>
        </div>
</body>
</html>