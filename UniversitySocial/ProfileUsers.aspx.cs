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
    public partial class ProfileUsers : System.Web.UI.Page
    {
        DatabaseConnection baglan = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            

            //if (Page.IsPostBack==false)
            //{
            //    SqlCommand cmd = new SqlCommand("SELECT *FROM Status where users_ID=@users_ID", baglan.baglan());
            //    cmd.Parameters.Add("@users_ID", Session["users_ID"]);


            //    SqlDataReader drkullanicigetir = cmd.ExecuteReader();
                
            //    if  (drkullanicigetir.HasRows)
            //        {

            //             DataTable dtyorumgetir = new DataTable("tablo");
            //            dtyorumgetir.Load(drkullanicigetir);


            //            DataRow row = dtyorumgetir.Rows[0];
            //            lbl_likenumber.Text = row["status_LikeNumber"].ToString();
            //            lbl_tarih.Text = row["status_Date"].ToString();
            //            lbl_yazi.Text = row["status_Content"].ToString();
            //            image_photo.ImageUrl = row["status_Photo"].ToString();
                      
                      
            //        }
            //    else 
            //    {
            //        lbl_likenumber.Text = "boş";
            //    }

               
            //}

           
        }
    }
}