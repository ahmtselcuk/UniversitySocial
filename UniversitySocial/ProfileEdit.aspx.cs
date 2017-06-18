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
    public partial class ProfileEdit : System.Web.UI.Page
    {
        DatabaseConnection baglan = new DatabaseConnection();
        string usersID;
        protected void Page_Load(object sender, EventArgs e)
        {
            //sehirleri çekme


            

           

            //bilgileri getirme ekranı
            if (Page.IsPostBack == false)
            {
                SqlCommand cmdkullanicigetir = new SqlCommand("SELECT *FROM Users  where  users_ID='" + Session["users_ID"]+ "'", baglan.baglan());
                SqlDataReader drkullanicigetir = cmdkullanicigetir.ExecuteReader();

                DataTable dtyorumgetir = new DataTable("tablo");
                dtyorumgetir.Load(drkullanicigetir);


                DataRow row = dtyorumgetir.Rows[0];
                txt_name.Text = row["users_Name"].ToString();
                txt_surname.Text = row["users_Surname"].ToString();
                txt_Email.Text = row["users_Email"].ToString();
                txt_password.Text = row["users_Password"].ToString();
                txt_facebook.Text=row["users_FacebookAddress"].ToString();
                txt_instgram.Text=row["users_InstagramAddress"].ToString();
                txt_twitter.Text=row["users_TwitterAddress"].ToString();
                txt_biyo.Text = row["users_Biography"].ToString();
                txt_hobi.Text = row["users_Hobby"].ToString();
               
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            if (file_resim.HasFile )
            {
                file_resim.SaveAs(Server.MapPath("/assets/img/usersProfilePhotos/" + file_resim.FileName));
             

                SqlCommand cmddurumguncelle = new SqlCommand("UPDATE Users SET users_Name='" + txt_name.Text + "',  users_Surname='" + txt_surname.Text+ "',users_Email='" +txt_Email.Text+ "',users_Password='" +txt_password.Text+ "',users_Photo='/assets/img/usersProfilePhotos/" + file_resim.FileName+ "' ,users_Homeland='"+dl_city.SelectedValue+"',users_Hobby='"+txt_hobi.Text+"',users_Biyography='"+txt_biyo.Text+"',users_FacebookAddress='"+txt_facebook.Text+"',users_InstagramAddress='"+txt_instgram.Text+"',users_TwitterAddress='"+txt_twitter.Text+"'  where users_ID='" + Session["users_ID"]+ "'", baglan.baglan());
                cmddurumguncelle.ExecuteNonQuery();

                Response.Redirect("ProfileUsers.aspx");
            }

            else if (file_kapak.HasFile)
            {
                file_kapak.SaveAs(Server.MapPath("/assets/img/usersCoverPhotos/" + file_kapak.FileName));
             

                SqlCommand cmddurumguncelle = new SqlCommand("UPDATE Users SET users_Name='" + txt_name.Text + "',  users_Surname='" + txt_surname.Text+ "',users_Email='" +txt_Email.Text+ "',users_Password='" +txt_password.Text+ "',users_CoverPhoto='/assets/img/usersCoverPhotos/"+file_kapak.FileName+"',users_Homeland='"+dl_city.SelectedValue+"',users_Hobby='"+txt_hobi.Text+"',users_Biography='"+txt_biyo.Text+"',users_FacebookAddress='"+txt_facebook.Text+"',users_InstagramAddress='"+txt_instgram.Text+"',users_TwitterAddress='"+txt_twitter.Text+"'  where users_ID='" + Session["users_ID"]+ "'", baglan.baglan());
                cmddurumguncelle.ExecuteNonQuery();

                Response.Redirect("ProfileUsers.aspx");
            }

            else
            
            {
                SqlCommand cmdmguncelle = new SqlCommand("UPDATE Users SET users_Name='" + txt_name.Text+ "', users_Surname='" + txt_surname.Text+ "',users_Email='" +txt_Email.Text+ "',users_Password='" + txt_password.Text+ "',users_FacebookAddress='" + txt_facebook.Text+"' ,users_InstagramAddress='"+txt_instgram.Text+"',users_TwitterAddress='"+txt_twitter.Text+"' where users_ID='"+Session["users_ID"]+"'", baglan.baglan());
                cmdmguncelle.ExecuteNonQuery();

                Response.Redirect("ProfileUsers.aspx");
            }
        }
    }
}