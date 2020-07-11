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
    public partial class verifyUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count < 1)
                Response.Redirect("SignUp.aspx");
            lbl_welcome.Text = "Hello " + Session["fname"].ToString() + ", You are Registered Successfully.";
            lbl_press.Text = "Please click below button to continue";
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString.ToString());
        protected void btn_final_Click(object sender, EventArgs e)
        {
            insertData();

            Session.Abandon();

            Response.Redirect("SignUp.aspx");

        }
        private void insertData()
        {
            con.Open();
            string s = "Insert into UserDetails values ('"+Convert.ToString(generateId())+"',@p1,@p2,@p3,@p4,NULL,@p5,NULL,30000) ";
            //string s = "Insert into UserDetails values ('" + Convert.ToString(generateId()) + "','"+Session["fname"].ToString()+"','"+Session["email"].ToString()+"',"+Convert.ToInt64(Session["mno"].ToString())+",'"+Session["password"].ToString()+"',NULL,'"+Session["add"].ToString()+"',NULL)";
         //   string s = "Insert (Uid,Name,Email,Mobile,Password,Address) into UserDetails values ('" + Convert.ToString(generateId()) + "','" + Session["fname"].ToString() + "','" + Session["email"].ToString() + "'," + Convert.ToInt64(Session["mno"].ToString()) + ",'" + Session["password"].ToString() + "','" + Session["add"].ToString() + "')";

            SqlCommand cmd = new SqlCommand(s, con);

            cmd.Parameters.AddWithValue("@p1", Session["fname"].ToString());
            cmd.Parameters.AddWithValue("@p2", Session["email"].ToString());
            cmd.Parameters.AddWithValue("@p3", Session["mno"].ToString());
            cmd.Parameters.AddWithValue("@p4", Session["password"].ToString());
            cmd.Parameters.AddWithValue("@p5", Session["add"].ToString());

         
            cmd.ExecuteNonQuery();

            con.Close();
        }
        private string generateId()
        {
            string s="CS";
            Random random = new Random();
            s = s + Convert.ToString(random.Next(1000, 9999));
            return s;
        }
    }
}