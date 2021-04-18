using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace FlorescenceStore
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string categoryCommand = String.Empty;
            
            string sql = "insert into Florescencelogin ([UserId], [Password], EmailId, Category) values(@UserId,@Password,@EmailId,@Category)";

            if (rblCategory.SelectedValue == "Distributor")
            {
                categoryCommand =
                    "insert into Beneficiers ([Name], [Date], [EmailId]) values(@Name, @Date, @EmailId)";
            }
            if (rblCategory.SelectedValue == "Supplier")
            {
                categoryCommand =
                    "insert into Suppliers ([Name], [Date], [EmailId]) values(@Name,@Date, @EmailId)";
            }

            // Create the connection (and be sure to dispose it at the end)
            using (SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDbConnection"].ToString()))
           {
               try
               {
                   // Open the connection to the database. 
                   // This is the first critical step in the process.
                   // If we cannot reach the db then we have connectivity problems
                   cnn.Open();

                   // Prepare the command to be executed on the db
                   using (SqlCommand cmd = new SqlCommand(sql, cnn))
                   {
                       // Create and set the parameters values 
                       cmd.Parameters.Add("@UserId", SqlDbType.NVarChar).Value = txtFullName.Text;
                       cmd.Parameters.Add("@Password", SqlDbType.NVarChar).Value = txtPsw.Text;
                       cmd.Parameters.Add("@EmailId", SqlDbType.NVarChar).Value = txtEmail.Text;
                       cmd.Parameters.Add("@Category", SqlDbType.NVarChar).Value = rblCategory.SelectedValue;

                        // Let's ask the db to execute the query
                        int rowsAdded = cmd.ExecuteNonQuery();
                       if (rowsAdded > 0)
                           Response.Text = "Row inserted!!";
                       else
                            // Well this should never really happen
                           Response.Text = "Row not inserted!!";

                    }
                   using (SqlCommand cmd = new SqlCommand(categoryCommand, cnn))
                   {
                       // Create and set the parameters values 
                       cmd.Parameters.Add("@Name", SqlDbType.NVarChar).Value = txtFullName.Text;
                       cmd.Parameters.Add("@Date", SqlDbType.DateTime).Value = System.DateTime.Now;
                       cmd.Parameters.Add("@EmailId", SqlDbType.NVarChar).Value = txtEmail.Text;

                        // Let's ask the db to execute the query
                        int rowsAdded = cmd.ExecuteNonQuery();
                       if (rowsAdded > 0)
                           Response.Text = "Row inserted!!";
                       else
                           Response.Text = "Row not inserted!!";

                   }
                   cnn.Close();
                }
               catch (Exception ex)
               {
                  
               }
           }

            if (rblCategory.SelectedValue == "Supplier")
            {
                Server.Transfer("SupplierLogin.aspx?UserName=" + txtFullName.Text);
            }
            else
            {
                Server.Transfer("BeneficierLogin.aspx?UserName=" + txtFullName.Text);
            }
        }
    }
}