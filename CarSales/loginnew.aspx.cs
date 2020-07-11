using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarSales
{
    public partial class loginnew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from cinfo where number =@p1 and pass=@p2", con);
                cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                Session["id"] = dt.Rows[0]["id"];
                    Response.Redirect("~/default4.aspx");
                }
                else
                {
                    Label3.Visible = true;
                    Label3.Text = "*Wrong Details";
                }

          
        }
    }
}