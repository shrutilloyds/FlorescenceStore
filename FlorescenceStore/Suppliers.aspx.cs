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
    public partial class Suppliers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDbConnection"].ToString());
            con.Open();

            var getpreviousQuantity = "select [Name],[Date],[Category],[TotalSupplies],[Branch] from Suppliers order by TotalSupplies desc";

            SqlDataAdapter getpreviousAdapter = new SqlDataAdapter(getpreviousQuantity, con);

            DataSet getpreviousCount = new DataSet();
            getpreviousAdapter.Fill(getpreviousCount, "PreviousCount");

            lblHighestSupplier.Text = getpreviousCount.Tables[0].Rows[0][0].ToString() + " is highest supplier of this month !!";

            GridView1.DataSource = getpreviousCount;
            GridView1.DataBind();

            con.Close();
        }
    }
}