<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResponsableR.aspx.cs" Inherits="GestionRessources.ResponsableR" %>

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
<body style="background:url(../images/acceuil.jpg) no-repeat; background-size : cover ;">
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
    <br />
     <br />
    <br />
    <h1 style="color:red;font-weight:bold;font-size:40px;text-align:center">Bienvenue dans l'espace Gestion de Ressources Matérielles </h1>
</body>

</html>
