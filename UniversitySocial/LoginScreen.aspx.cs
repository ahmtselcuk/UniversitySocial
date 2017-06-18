using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data.SqlClient;
using System.Data;
namespace UniversitySocial
{
    public partial class LoginScreen : System.Web.UI.Page
    {

        string users_ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;

        }






        DatabaseConnection baglan = new DatabaseConnection();

        protected void btn_kaydet_Click(object sender, EventArgs e)
        {

            //sisteme öğrenci kayıt etme işlemi

            SqlCommand cmdekle = new SqlCommand("insert into Users(users_Name,users_Surname,users_Email,users_Password) values  ('" + txt_name.Text + "','" + txt_surname.Text + "','" + txt_email.Text + "','" + txt_password.Text + "')", baglan.baglan());
            cmdekle.ExecuteNonQuery();
            txt_name.Text = "";
            txt_surname.Text = "";
            txt_password.Text = "";
            txt_email.Text = "";

            Panel1.Visible = true;
     
        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {
            
            // sisteme giriş işlemi
            SqlCommand cmd = new SqlCommand("Select *From  Users where users_Email='" +txt_emaill.Text + "' and users_Password='" + txt_passwordd.Text+"'or users_ID='"+users_ID+ "'", baglan.baglan());
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["users_Email"] = dr["users_Email"];
                Session["users_ID"] = Convert.ToInt32(dr["users_ID"]);

                Response.Redirect("Default.aspx?users_ID");
            }
            else
            {
                Panel2.Visible = true;
            }
        }
    }
}