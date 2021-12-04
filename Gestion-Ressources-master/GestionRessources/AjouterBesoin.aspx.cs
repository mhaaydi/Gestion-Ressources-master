using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.Common;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
namespace GestionRessources
{
    public partial class AjouterBesoin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='E:\Génie Logiciel\GestionRessources\GestionRessources\App_Data\nbbk.mdf';Integrated Security=True");
            conn.Open();
            String req = "insert into Besoin values(" + "'" + TextBox2.Text
                + "' ," + "'" + TextBox3.Text + "' ,"  + GridView1.SelectedRow.Cells[2].Text + ");";
            SqlCommand command = new SqlCommand(req, conn);
            command.ExecuteNonQuery();
            conn.Close();
            TextBox2.Text = "";
            TextBox3.Text = "";
            

            string myStringVariable = "Besoin bien ajouté";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
        }
    }
}