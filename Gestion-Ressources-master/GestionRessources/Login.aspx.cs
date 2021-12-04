using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GestionRessources.Models;
using MySql.Data;
using MySql.Data.Common;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
namespace GestionRessources
{
    public partial class Login : System.Web.UI.Page
    {
        List<login> liste = new List<login>();
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='H:\GestionRessources\GestionRessources\App_Data\nbbk.mdf';Integrated Security=False");
            conn.Open();
            string req = "select * from utilisateur where Login like '%" + username.Text + "%'";
            SqlCommand command = new SqlCommand(req, conn);
            SqlDataReader rs = command.ExecuteReader();
            if (username.Text.Equals("Admin") && password.Text.Equals("Admin1234"))
            {
                Response.Redirect("ResponsableR.aspx");
            }
            if (username.Text.Equals("enseignant") && password.Text.Equals("1234"))
            {
                Response.Redirect("PersonneDepartement.aspx");
            }
            if (username.Text.Equals("maintenance") && password.Text.Equals("123456"))
            {
                Response.Redirect("ServiceMaintenance.aspx");
            }
            if (username.Text.Equals("chefDepartement") && password.Text.Equals("1234567"))
            {
                Response.Redirect("ChefDepartement.aspx");
            }

            else if (rs.HasRows)
            {


                while (rs.Read())
                {
                    string res = rs["MotDepasse"].ToString();
                    string res1 = res.Replace(" ", "");
                    if (password.Text.Equals(res1))
                    {
                        Response.Redirect("ResponsableR.aspx");
                    }
                    else
                    {
                        password.Text = "";
                    }
                }
            }
            else
            {

            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection connection = new MySqlConnection();
            connection.ConnectionString = "server=localhost;user id=root;database=faculte";
            connection.Open();
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;

            command.CommandText = ("select *  from login");



            MySqlDataReader rs = command.ExecuteReader();
            while (rs.Read())
            {
                login l = new login();
                l.Username = (String)rs[0];
                l.Password = (String)rs[1];
                liste.Add(l);
            }

            foreach (var x in liste)
            {
                if (x.Username == username.Text && x.Password == password.Text)
                {
                    username.Text = "";
                    password.Text = "";
                    Response.Redirect(rs[2] + "R.aspx");
                }
                else if (x.Username != username.Text || x.Password != password.Text)
                {
                    username.Text = "";
                    password.Text = "";
                    Response.Write("<script>alert('E-mail ou Mot de passe erroné !!');</script>");
                }
            }
            connection.Close();
        }
    }
}
