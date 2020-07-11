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
    public partial class registrationnew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString.ToString());

        protected void Button1_Click(object sender, EventArgs e)
        {

            {
            


                SqlCommand cmd = new SqlCommand("select * from cinfo where number =@p1 and pass=@p2", con);
                cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Label3.Visible = true;
                    Label3.Text = "Wrong Details";
                }


                else
                {
                    con.Open();


                    string s1 = "insert into cinfo values (@p1,@p2) ";

                    SqlCommand cmd1 = new SqlCommand(s1, con);

                    cmd1.Parameters.AddWithValue("@p1", TextBox1.Text);

                    cmd1.Parameters.AddWithValue("@p2", TextBox2.Text);
                    cmd1.ExecuteNonQuery();

                    con.Close();
                    Response.Redirect("~/default4.aspx");
                }
            }
        }
    }
}