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
    public partial class Article_Detail : System.Web.UI.Page
    {
        DatabaseConnection baglan = new DatabaseConnection();
        string article_IDD;
        protected void Page_Load(object sender, EventArgs e)
        {
            Request.QueryString["article_ID"] = article_IDD;

            SqlCommand cmdyorumgetir = new SqlCommand("SELECT *FROM Article where article_ID='" + article_IDD , baglan.baglan());
            SqlDataReader drgetir = cmdyorumgetir.ExecuteReader();

            DataList1.DataSource = drgetir;
            DataList1.DataBind();



        }
    }
}