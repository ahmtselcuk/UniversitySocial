using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySocial.admin
{
    public partial class AddActivities : System.Web.UI.Page
    {
        DatabaseConnection baglan = new DatabaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

       
       
        protected void Timer1_Tick(object sender, EventArgs e)
        {
          
        }

        protected void btn_kaydet_Click(object sender, EventArgs e)
        {
            SqlCommand cmekle = new SqlCommand("insert into Activities (activities_Title,activities_Content,activities_Date,activities_Time) Values('" + txt_name.Text + "','" + txt_ozet.Text + "','" + txtDate.Text + "','"+ txt_time.Text+"') ", baglan.baglan());

            cmekle.ExecuteNonQuery();


            Response.Redirect("AddActivities.aspx");
        }

       
    }
}