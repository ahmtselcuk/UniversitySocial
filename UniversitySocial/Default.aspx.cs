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

            if (Page.IsPostBack == false)
            {

                SqlCommand cmd = new SqlCommand("SELECT *FROM Users WHERE users_ID=@users_ID", baglan.baglan());
                cmd.Parameters.Add("@users_ID", Session["users_ID"]);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lbl_id.Text = dr["users_ID"].ToString();
                    id = lbl_id.Text;
                }


                  //SqlCommand cmdhaber = new SqlCommand("SELECT     dbo.Status.status_ID, dbo.Status.status_Date, dbo.Status.status_LikeNumber, dbo.Status.status_Photo, dbo.Status.status_Content, dbo.Status.users_ID, dbo.Users.users_ID AS Expr1,  dbo.Users.users_Name, dbo.Users.users_Surname, dbo.Users.users_Photo FROM dbo.Status INNER JOIN   dbo.Users ON dbo.Status.users_ID = dbo.Users.users_ID",baglan.baglan());

                // SqlDataReader drhaber = cmdhaber.ExecuteReader();

                //   dt_haber.DataSource = drhaber;

                //    dt_haber.DataBind();

                //}

            }
        }

        protected void btn_share_Click(object sender, EventArgs e)
        {
            int usersID;


            if (file_photo.HasFile)
            {
                file_photo.SaveAs(Server.MapPath("/assets/img/durum/" + file_photo.FileName));

                SqlCommand cmekle = new SqlCommand("insert into Status(dbo.Status.status_Photo,dbo.Status.status_Content,dbo.Status.users_ID) Values( '/assets/img/durum/" + file_photo.FileName + "','" +txt_status.Text +"','" + Session["users_ID"] + "')", baglan.baglan());
                cmekle.ExecuteNonQuery();
              
                Response.Redirect("Default.aspx");

            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into Status(status_Content,users_ID) Values('" + txt_status.Text+ "','" + Session["users_ID"] + "')", baglan.baglan());
                cmd.ExecuteNonQuery();
        
                Response.Redirect("Default.aspx");
            }
        }

      
    }
}