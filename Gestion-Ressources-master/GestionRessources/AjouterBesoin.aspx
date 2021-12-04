<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjouterBesoin.aspx.cs" Inherits="GestionRessources.AjouterBesoin" %>

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
			        <h1 style="font-family: Century Gothic;font-size: 40px; sans-serif; color: white;font-weight:bold;">Nouveau Besoin</h1>
	        </div>
            <form runat="server">
	        <div class="row input-container">
			        <div class="col-xs-12">
			        </div>
			        <div class="col-md-6 col-sm-12">
			        </div>
			        <div class="col-md-6 col-sm-12">
				        <div class="auto-style1">
                            Type<label style="color:white"> : </label>
                            <asp:dropdownlist ID="TextBox3" runat="server">
                                     <asp:listitem text="Ordinateur" value="Ordinateur"></asp:listitem>
                                     <asp:listitem text="Imprimante" value="Imprimante"></asp:listitem>
                            </asp:dropdownlist>
					           
				        </div>
			        </div>
			        <div class="col-md-6 col-sm-12">
                        <label >&nbsp &nbsp </label>
				           <br />
                        <br />
				        <div class="styled-input" >
                            <asp:TextBox ID="TextBox2" runat="server" Height="44px" Width="592px"></asp:TextBox>
					        <label style="color:white">Raison: </label>
				        </div>
                        <br />
			           
			        </div>
                <div style="margin-top:150px">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="637px">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:CommandField ShowSelectButton="True" />
                             <asp:BoundField DataField="Login" HeaderText="Login" SortExpression="Login" />
                             <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
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
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Login], [Id] FROM [utilisateur]"></asp:SqlDataSource>
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
