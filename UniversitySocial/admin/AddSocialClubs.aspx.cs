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
    public partial class AddSocialClubs : System.Web.UI.Page
    {
        DatabaseConnection baglan = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_gonder_Click(object sender, EventArgs e)
        {
            if (file_photo.HasFiles)
            {
                file_photo.SaveAs(Server.MapPath("/assets/img/socialClub/" + file_photo.FileName));

                SqlCommand cmekle = new SqlCommand("insert into SocialClub (socialClub_Name,socialClub_Summary,socialClub_Information,socialClub_Logo) Values('" + txt_name.Text + "','" + txt_ozet.Text + "','" + ckeditor.Text + "','/assets/img/socialClub/" +file_photo.FileName+ "') ", baglan.baglan());

                cmekle.ExecuteNonQuery();


                Response.Redirect("AddSocialClubs.aspx");
            }
            else
            {
               btn_gonder.Text = "Haber Ekle";
            }
        }
    }
}