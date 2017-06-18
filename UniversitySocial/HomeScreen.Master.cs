using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace UniversitySocial
{
    public partial class HomeScreen : System.Web.UI.MasterPage
    {
        DatabaseConnection baglan = new DatabaseConnection();
        int users_IDD;
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("SELECT *FROM Users WHERE users_ID=@users_ID", baglan.baglan());
            cmd.Parameters.Add("@users_ID", Session["users_ID"]);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lbl_users.Text = dr["users_Name"].ToString();

            }

        }

       
    }
}