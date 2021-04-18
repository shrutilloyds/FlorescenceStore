using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace FlorescenceStore
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDbConnection"].ToString());

            try
            {
                string userName = TextBox1.Text;
                string password = TextBox2.Text;
                con.Open();
                string qry = "select * from Florescencelogin where UserId='" + userName + "' and Password='" + password + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    if (rblCategory.SelectedValue == "Supplier")
                    {
                        Response.Redirect("SupplierLogin.aspx?UserName=" + userName,false);
                    }
                    else
                    {
                        Response.Redirect("BeneficierLogin.aspx?UserName=" + userName, false);
                    }
                }
                else
                {
                    Label4.Text = "UserId & Password Is not correct Try again..!!";

                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}