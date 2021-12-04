<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjouterImp.aspx.cs" Inherits="GestionRessources.AjouterImp" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/cntctPage.css" rel="stylesheet" />
    <link href="css/RespR.css" rel="stylesheet" />
    <link href="css/listerOrdi.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 64px;
            height: 64px;
        }
        .auto-style2 {
            margin-top: 0px;
        }
    </style>
</head>
<body style="background:url(../images/printer.jpg) no-repeat; background-size : cover ;">
    <form id="form1" runat="server">
    <header>
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
    </header>
    <div>
        <div class="container">
	        <div class="row">
			        <h1 style="color:black">Nouvelle Imprimante&nbsp;
                        <img alt="" class="auto-style1" src="images/printer.png" /></h1>
	        </div>

	        <div class="row input-container">
			        <div class="col-xs-12">
				        <div class="styled-input wide">
                            <asp:TextBox type="text" ID="TextBox1" style="width: 80%;" placeholder="Marque" runat="server"></asp:TextBox>
				        </div>
			        </div>
                    <div class="col-xs-12">
				        <div class="styled-input wide">
                             <asp:TextBox type="text" ID="TextBox2" style="width: 80%;" placeholder="Résolution" runat="server"></asp:TextBox>
				        </div>
			        </div>
                    <div class="col-xs-12">
				        <div class="styled-input wide">
					         <asp:TextBox type="text" ID="TextBox3" style="width: 80%;" placeholder="vitesse" runat="server"></asp:TextBox>
				        </div>
			        </div>
			        
			        <div class="col-xs-12" style="align-content:center;">
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="646px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="NomSociété" HeaderText="NomSociété" SortExpression="NomSociété" />
                                <asp:BoundField DataField="Lieu" HeaderText="Lieu" SortExpression="Lieu" />
                                <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                                <asp:BoundField DataField="gerant" HeaderText="gerant" SortExpression="gerant" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Fournisseur]"></asp:SqlDataSource>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Ajouter"  style="   font-weight: bold; "  BackColor="Blue" CssClass="auto-style2 " OnClick="Button1_Click" Height="52px"/>
			        </div>
	        </div>
        </div>
        </div>
    </form>
</body>
</html>

