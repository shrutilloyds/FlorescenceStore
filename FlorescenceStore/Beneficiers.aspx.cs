using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlorescenceStore
{
    public partial class Beneficiers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDbConnection"].ToString());
            con.Open();

            SqlCommand command = new SqlCommand("select Name, Consumption, Products, Date, Location from Beneficiers order by Consumption desc", con);
            SqlDataReader rdr = command.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();

            con.Close();
        }
    }
}