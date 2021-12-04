<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjouterOrdi.aspx.cs" Inherits="GestionRessources.AjouterOrdi" %>

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
            width: 64px;
        }
        .auto-style2 {
            margin-left: 254;
        }
    </style>
</head>
<body style="background:url(../images/ordi.jpg) no-repeat; background-size : cover ;">
   
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
			        <h1 style="font-family: Century Gothic;font-size: 40px; sans-serif; color: white;">Nouvel Ordinateur&nbsp;
                        <img alt="" class="auto-style1" src="images/laptop.png" /></h1>
	        </div>
            <form runat="server">
	        <div class="row input-container">
			        <div class="col-xs-12">
				        <div class="styled-input wide">
                            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
					        <label>CPU</label> 
				        </div>
			        </div>
			        <div class="col-md-6 col-sm-12">
				        <div class="styled-input">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
					        <label>Ecran</label> 
				        </div>
			        </div>
			        <div class="col-md-6 col-sm-12">
				        <div class="styled-input" style="float:right;">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
					        
					        <label>Marque</label> 
				        </div>
			        </div>
			        <div class="col-xs-12">
				        <div class="styled-input wide">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
					        <label>Disque DUR</label> 
				        </div>
			        </div>
                     <div class="col-xs-12">
				        <div class="styled-input wide">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
					        <label>Ram</label> 
				     </div>
                     <div>
			             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="115px" Width="650px">
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
