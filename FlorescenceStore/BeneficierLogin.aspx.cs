using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlorescenceStore
{
    public partial class BeneficierLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = Request.QueryString["UserName"];

            lblName.Text = "Welcome " + userName + "!!";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string categoryCommand = String.Empty;
            var emailId = string.Empty;
            var previousQuantity = 0;
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDbConnection"].ToString()))
                {
                    var sqlText = "select EmailId from Florescencelogin where UserId = " + "'" + Request.QueryString["UserName"] + "'";

                    SqlDataAdapter adapter = new SqlDataAdapter(sqlText, con);

                    DataSet customers = new DataSet();
                    adapter.Fill(customers, "Customers");

                    emailId = customers.Tables[0].Rows[0][0].ToString();

                    var getpreviousQuantity = "select Consumption from Beneficiers where Name = " + "'" + Request.QueryString["UserName"] + "'";

                    SqlDataAdapter getpreviousAdapter = new SqlDataAdapter(getpreviousQuantity, con);

                    DataSet getpreviousCount = new DataSet();
                    getpreviousAdapter.Fill(getpreviousCount, "PreviousCount");

                    previousQuantity = Convert.ToInt32(getpreviousCount.Tables[0].Rows[0][0]);

                    var totalQuantity = previousQuantity + Convert.ToInt32(txtQuantity.Text);
                    var category = ddlProducts.SelectedValue;
                    var pickupLocation = txtPickupLocation.Text;
                    var deliveryDateText = Convert.ToDateTime(txtDeliveryDate.Text);

                    string sql = "update Beneficiers set EmailId = @EmailId, Consumption = @Consumption, Products = @Products, Location = @Location, Date = @Date where Name = " + "'" + Request.QueryString["UserName"] + "'";

                    SqlCommand query = new SqlCommand(sql, con);
                    con.Open();

                    query.Parameters.Add("@EmailId", emailId);
                    query.Parameters.Add("@Consumption", totalQuantity);
                    query.Parameters.Add("@Products", category);
                    query.Parameters.Add("@Location", pickupLocation);
                    query.Parameters.Add("@Date", deliveryDateText);
                    query.ExecuteNonQuery();
                    con.Close();
                }
                lblMessage.Text = "Request Submitted !!";
                lblMessage.ForeColor = Color.Blue;

            }
            catch (Exception exception)
            {
                lblMessage.Text = "Request not Submitted !!";
                lblMessage.ForeColor = Color.DarkRed;
                throw;
            }



        }
    }
}