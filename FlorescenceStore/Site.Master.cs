using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlorescenceStore
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDbConnection"].ToString());
            con.Open();

            var getpreviousQuantity = "select t1.* from (select top 1 [Name] from Suppliers order by TotalSupplies desc) t1 union all select t2.* from (select top 1 [Name] from Beneficiers order by Consumption desc) t2";

            SqlDataAdapter getpreviousAdapter = new SqlDataAdapter(getpreviousQuantity, con);

            DataSet getpreviousCount = new DataSet();
            getpreviousAdapter.Fill(getpreviousCount, "PreviousCount");

            lblHighestSupplier.Text = getpreviousCount.Tables[0].Rows[0][0].ToString() + " is highest supplier and " + getpreviousCount.Tables[0].Rows[1][0].ToString() + " is highest distributor of this month !!";

            con.Close();
        }
    }
}