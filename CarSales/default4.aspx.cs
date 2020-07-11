using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarSales
{
    public partial class default4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString.ToString());

        private Double runquery(string s)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(s, con);
            Double x = Convert.ToDouble(cmd.ExecuteScalar());
            con.Close();
            return x;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string s1 = "select count(*) from UserDetails";
            Label1.Text = runquery(s1).ToString();

            s1 = "Select sum(Margin) from Admin";
            Label4.Text = runquery(s1).ToString();

            s1 = "Select count(*) from VehicleForSale";
            Label6.Text = runquery(s1).ToString();

            s1 = "Select count(*) from Transactions";
            Label8.Text = runquery(s1).ToString();

            s1 = "Select max(Margin) from Admin";
            Label10.Text = runquery(s1).ToString();
           
        }
    }
}