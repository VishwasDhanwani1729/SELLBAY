using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace CarSales
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString.ToString());
        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select *from UserDetails where Email=@p1  AND Password=@p2";

            SqlCommand cmd = new SqlCommand(s, con);
            cmd.Parameters.AddWithValue("@p1", email.Text);
            cmd.Parameters.AddWithValue("@p2", password.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label4.Text = " Login successful";
                Session["uid"] = dt.Rows[0]["Uid"].ToString();
                Session["name"] = dt.Rows[0]["Name"].ToString();
                Session["wallet"] = dt.Rows[0]["Wallet"].ToString();
                Session["mobile"]= dt.Rows[0]["Mobile"].ToString(); //buyer mobile number
                Response.Redirect("Purchase.aspx");
            }
            else
            {
                Label4.Text = " Invalid e-mail or password";
            }
            con.Close();
        }
    }
}