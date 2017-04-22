using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace UniversitySocial
{
    public class DatabaseConnection
    {
        public SqlConnection baglan()
        {

            SqlConnection baglanti = new SqlConnection("Data Source=.; Initial Catalog=UniversitySocialTest; Integrated Security=true");
            baglanti.Open();

            SqlConnection.ClearPool(baglanti);
            SqlConnection.ClearAllPools();

            return (baglanti);

        }
    }
}