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
    public partial class Article : System.Web.UI.Page
    {
        DatabaseConnection baglan = new DatabaseConnection();
        string users_ID;
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SELECT *FROM Users WHERE users_ID=@users_ID", baglan.baglan());
               cmd.Parameters.Add("@users_ID", Session["users_ID"]);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lbl_id.Text = dr["users_ID"].ToString();
                    id = lbl_id.Text;
                }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmekle = new SqlCommand("insert into Article(article_Title,article_Summary,article_Content,users_ID) Values('" + txt_title.Text + "','" + txt_summary.Text + "','" + CKEditorControl1.Text+ "','" + id + "') ", baglan.baglan());

           

            cmekle.ExecuteNonQuery();

            Response.Redirect("UsersProfile.aspx");
        }
    }
}