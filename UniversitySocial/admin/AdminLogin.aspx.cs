using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace UniversitySocial.admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        DatabaseConnection baglan = new DatabaseConnection();
        string admin_ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {


            SqlCommand cmd = new SqlCommand("Select *From  Admin where admin_Email='" + txt_emaill.Text + "' and admin_Password='" + txt_passwordd.Text + "'or admin_ID='" + admin_ID + "'", baglan.baglan());
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["admin_Email"] = dr["admin_Email"];
                Session["admin_ID"] = Convert.ToInt32(dr["admin_ID"]);

                Response.Redirect("Default.aspx?users_ID");
            }
            else
            {
                Panel2.Visible = true;
            }
        }
    }
}