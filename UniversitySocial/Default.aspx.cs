using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace UniversitySocial
{
    public partial class Default : System.Web.UI.Page
    {
        DatabaseConnection baglan = new DatabaseConnection();
        string users_ID;
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {

            panel_durum.Enabled = false;
            SqlCommand cmd = new SqlCommand("SELECT *FROM Users WHERE users_ID=@users_ID", baglan.baglan());
            cmd.Parameters.Add("@users_ID", Session["users_ID"]);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lbl_id.Text = dr["users_ID"].ToString();
         id = lbl_id.Text;
            }
        }

        protected void btn_durum_Click(object sender, EventArgs e)
        {

            int usersID;


            if (file_resim.HasFile )
	            {
                     file_resim.SaveAs(Server.MapPath("/assets/img/durum" + file_resim.FileName));
                     SqlCommand cmekle = new SqlCommand("insert into Status(status_Photo,status_Content,users_ID) Values( '/assets/img/durum/" + file_resim.FileName + "','" + txt_durum.Text + "','" +  id + "')", baglan.baglan());
                     cmekle.ExecuteNonQuery();
                     panel_durum.Enabled = true;
                    Response.Redirect("Default.aspx");
                    
	            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into Status(status_Content,users_ID) Values('" + txt_durum.Text + "','" + Session["users_ID"].ToString() + "'", baglan.baglan());
                cmd.ExecuteNonQuery();
                panel_durum.Enabled = true;
                Response.Redirect("Default.aspx");
            }
           
            
        }
    }
}