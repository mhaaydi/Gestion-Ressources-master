<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GestionRessources.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/cntctPage.css" rel="stylesheet" />
    <link href="css/Index.css" rel="stylesheet" />
    <title></title>
</head>
<body>
   <header>
        <nav style="float=left;">
           <li><a href="Home.aspx">Acceuil</a> </li> 
           <li><a href="#">A propos</a> </li>
           <li><a href="Contact.aspx">Contact</a> </li>
           <li><a href="Login.aspx">Connexion</a> </li>
        </nav>
    </header>
    <div class="container">
	<div class="row">
			<h1>contactez-nous</h1>
	</div>
	<div class="row">
			<h4 style="text-align:center">Nous aimerions recevoir de vos nouvelles!</h4>
	</div>
	<div class="row input-container">
			<div class="col-xs-12">
				<div class="styled-input wide">
					<input type="text" />
					<label>Nom & Prénom</label> 
				</div>
			</div>
			<div class="col-md-6 col-sm-12">
				<div class="styled-input">
					<input type="text"  />
					<label>Email</label> 
				</div>
			</div>
			<div class="col-md-6 col-sm-12">
				<div class="styled-input" style="float:right;">
					<input type="text"  />
					<label>Numéro de Téléphone</label> 
				</div>
			</div>
			<div class="col-xs-12">
				<div class="styled-input wide">
					<textarea ></textarea>
					<label>Message</label>
				</div>
			</div>
			<div class="col-xs-12">
				<div class="btn-lrg submit-btn">Envoyer</div>
			</div>
	</div>
</div>
</body>
</html>
