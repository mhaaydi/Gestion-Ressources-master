<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChefDepartement.aspx.cs" Inherits="GestionRessources.ChefDepartement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet"/>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css"/>
    <link href="css/reset.css" type='text/css' rel="stylesheet" />

    <link href="css/RespR.css" rel="stylesheet" />
    <title></title>
</head>
<body style="background:url(../images/supplier.jpg) no-repeat; background-size : cover ;">
    <nav id="mainNav" style="background-color: #570880;">
      <ul>
        <li><a href="ChefDepartement.aspx"><i class="icon-home"></i><img src="../images/homei.png" /><br />Acceuil</a></li>
      
          <li><a href="#"><i class="icon-print"></i><img src="../images/fourni.png" /><br />Gérer les Utilisateurs</a>
     <ul class="sub-menu">
            <li><a href="AjouterUtilisateur.aspx">Ajouter Utilisateur</a></li>
            <li><a href="listUtilisateur.aspx">Liste des Utilisateurs</a></li>
          </ul>
              </li>
         <li><a href="ListeBesoin.aspx"><i class="icon-home"></i><img src="../images/homei.png" /><br />Liste des besoins</a></li>
        <li><a href="Home.aspx"><i class="icon-twitter"></i><img src="../images/exit.png" /><br />Deconnexion</a></li>
      </ul><div class="clr" ></div>
    </nav> 
    <br />
     <br />
    <br />
    <h1 style="color:red;font-weight:bold;font-size:40px;text-align:center">Bienvenue dans l&#39;espace de gestion des Comptes </h1>
</body>

</html>
