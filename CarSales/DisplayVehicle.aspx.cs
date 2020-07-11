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
    public partial class DisplayVehicle : System.Web.UI.Page
    {
        int bal, transferamount, newamount, thirdparty;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString.ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = Session["vehicleid"].ToString();
            String myquery = "SELECT [VehicleID], [SellerID], [model], [price], [photo] FROM [VehicleForSale] WHERE ([VehicleID] = '"+s+"')";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "[VehicleForSale]");
            if (ds.Tables[0].Rows.Count > 0)
            {
                TextBox1.Text = ds.Tables[0].Rows[0]["SellerId"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["model"].ToString();
                Label3.Text = (getsellermno(ds.Tables[0].Rows[0]["SellerId"].ToString()));
                byte[] bytes = (byte[])GetData(myquery).Rows[0]["photo"];
                string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                Image1.ImageUrl = "data:image/png;base64," + base64String;

            }
            else
            {
                TextBox1.Text = Request.QueryString["SellerID"].ToString();
            }
            con.Close();
        }

        private string getsellermno(string s)
        {
            
            String query="select * from UserDetails Where Uid = '"+s+"'";
            SqlCommand cmd = new SqlCommand(query,con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0]["Mobile"].ToString();
            }
       
            return "0000000000";
        }

        private DataTable GetData(string query)
        {
            DataTable dt = new DataTable();
            string constr = ConfigurationManager.ConnectionStrings["Db"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        sda.Fill(dt);
                    }
                }
                con.Close();
                return dt;
            }
        }
     
        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Purchase.aspx");
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            long p = Convert.ToInt64(Session["mobile"]);
            
            if (p == Convert.ToInt64(Label3.Text))
            {
                Label2.Visible = true;
                Label2.Text = "same number";
            }
            else
            {
                bal = Convert.ToInt32(Session["wallet"]);

                transferamount = Convert.ToInt32("500");
                newamount = bal - transferamount;

                fetchdata();



                if (newamount < 0)
                {
                    Label2.Visible = true;
                    Label2.Text = "insuffesient balance";
                }
                else
                {
                    UpdateModeownerbalance();
                    UpdateModethirdpartybalance();
                    Session["wallet"] = newamount;
                    Label4.Text = thirdparty.ToString();
                    Label5.Text = newamount.ToString();
                }
            }


        }
        private void fetchdata()
        {
            con.Open();
            string s2 = "select * from UserDetails where Mobile=@p1";
            SqlCommand cmd1 = new SqlCommand(s2, con);
            cmd1.Parameters.AddWithValue("@p1", Label3.Text);   // convert int64
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                thirdparty = Convert.ToInt32(dt.Rows[0]["Wallet"]);
            }
        }

        private void UpdateModethirdpartybalance()
        {


            thirdparty = thirdparty + transferamount;
            con.Open();
            string s1 = "update cinfo set Wallet=@p2 where Mobile=@p1 ";
            SqlCommand cmd = new SqlCommand(s1, con);
            cmd.Parameters.AddWithValue("@p2", thirdparty);
            cmd.Parameters.AddWithValue("@p1", Label3.Text);
            cmd.ExecuteNonQuery();

            con.Close();
        }

        private void UpdateModeownerbalance()   //buyer 
        {
            long num = Convert.ToInt64(Session["mobile"]);
            con.Open();
            string s1 = "update UserDetials set Wallet=@p1 where Mobile= @p2";
            SqlCommand cmd = new SqlCommand(s1, con);
            cmd.Parameters.AddWithValue("@p1", newamount);

            cmd.Parameters.AddWithValue("@p2", num);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}