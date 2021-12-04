<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListeBesoin.aspx.cs" Inherits="GestionRessources.ListeBesoin" %>

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
    <form id="form1" runat="server">
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
        <div style="margin-left:150px;margin-top:100px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="894px" Height="136px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                <asp:BoundField DataField="raison " HeaderText="raison " SortExpression="raison " />
                <asp:BoundField DataField="idU" HeaderText="idU" SortExpression="idU" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Besoin] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Besoin] ([type], [raison ], [idU]) VALUES (@type, @raison_, @idU)" SelectCommand="SELECT * FROM [Besoin]" UpdateCommand="UPDATE [Besoin] SET [type] = @type, [raison ] = @raison_, [idU] = @idU WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="raison_" Type="String" />
                <asp:Parameter Name="idU" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="raison_" Type="String" />
                <asp:Parameter Name="idU" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
       
            </div>
        <div style="margin-left:500px;margin-top:50px">
         <p>
                        <asp:Button ID="Button1" class="btn-lrg submit-btn" runat="server" Text="Ajouter" OnClick="button1_Click" Height="27px" Width="173px" BackColor="Blue" BorderColor="Blue"/>
				     
			        </p>
        </div>
    </form>

</body>

</html>

