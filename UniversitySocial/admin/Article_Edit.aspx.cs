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
    public partial class Article_Edit : System.Web.UI.Page
    {
        DatabaseConnection baglan = new DatabaseConnection();
        string articleID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            articleID = Request.QueryString["article_ID"];
            islem = Request.QueryString["article_Summary"];

            if (Page.IsPostBack == false)
            {

                //makalegetirme

                SqlCommand cmdmgetir = new SqlCommand("SELECT *FROM Article", baglan.baglan());
                SqlDataReader drgetir = cmdmgetir.ExecuteReader();

                ddl_mgetir.DataSource = drgetir;
                ddl_mgetir.DataBind();





            }
        }
    }
}