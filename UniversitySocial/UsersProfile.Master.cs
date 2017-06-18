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
    public partial class UsersProfile : System.Web.UI.MasterPage
    {
        DatabaseConnection baglan = new DatabaseConnection();
        string users_ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SELECT *FROM Users WHERE users_ID=@users_ID", baglan.baglan());
            cmd.Parameters.Add("@users_ID", Session["users_ID"]);

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                lbl_name.Text = dr["users_Name"].ToString() + " " + dr["users_Surname"].ToString();
                profile_background.ImageUrl = dr["users_CoverPhoto"].ToString();
                profile_photo.ImageUrl=dr["users_Photo"].ToString();
                lbl_bolum.Text=dr["users_Department"].ToString();
                lbl_faculty.Text=dr["users_Faculty"].ToString();
                lbl_hakkimda.Text=dr["users_Biography"].ToString();
                lbl_memleket.Text=dr["users_Homeland"].ToString();
                lbl_registrationdate.Text=dr["users_RegistrationDate"].ToString();


             
            }}

        protected void Button1_Click(object sender, EventArgs e)
              {

                    Session["users_IDD"] = users_ID;
                Response.Redirect("ProfileEdit.aspx");
              }

        protected void btn_article_Click(object sender, EventArgs e)
        {
            Session["users_IDD"] = users_ID;
            Response.Redirect("Article.aspx");
        }

        protected void btn_itiraf_Click(object sender, EventArgs e)
        {
            Session["users_IDD"] = users_ID;
            Response.Redirect("Confession.aspx");
        }
            
        }

      
      


    }
