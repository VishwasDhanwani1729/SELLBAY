using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Drawing;

namespace CarSales
{
    public partial class Display1 : System.Web.UI.Page
    {
        double bal, transferamount, newamount, thirdparty,price;
        String tid;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString.ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            username.Text = Session["name"].ToString();
            uid.Text = Session["uid"].ToString();
            wllt.Text = Session["wallet"].ToString();
            string s = Session["vehicleid"].ToString();
            String myquery = "SELECT [VehicleID], [SellerID], [model], [price], [photo], [token],[kmdriven],[type],[brand],[reg_year],[fuel],[description] FROM [VehicleForSale] WHERE ([VehicleID] = '" + s + "')";
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
                Label1.Text = ds.Tables[0].Rows[0]["kmdriven"].ToString();
                Label6.Text = ds.Tables[0].Rows[0]["brand"].ToString();
                Label8.Text = ds.Tables[0].Rows[0]["type"].ToString();
                Label7.Text = ds.Tables[0].Rows[0]["reg_year"].ToString();
                Label9.Text = ds.Tables[0].Rows[0]["fuel"].ToString();
                Label11.Text = ds.Tables[0].Rows[0]["price"].ToString();
                Label10.Text = ds.Tables[0].Rows[0]["description"].ToString();
                Label12.Text = ds.Tables[0].Rows[0]["token"].ToString();
                Label3.Text = (getsellermno(ds.Tables[0].Rows[0]["SellerId"].ToString()));
                Label3.Visible = false;
                transferamount = Convert.ToDouble(ds.Tables[0].Rows[0]["token"]);
               price= Convert.ToDouble(ds.Tables[0].Rows[0]["price"]);
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

            String query = "select * from UserDetails Where Uid = '" + s + "'";
            SqlCommand cmd = new SqlCommand(query, con);
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

   
        int margin;

        protected void Button1_Click(object sender, EventArgs e)    //TRANSFER TOKEN AMOUNT
        {
            long p = Convert.ToInt64(Session["mobile"]);

            if (p == Convert.ToInt64(Label3.Text))
            {
                Label2.Visible = true;
                Label2.Text = "same number";
            }
            else
            {
                bal = Convert.ToDouble(Session["wallet"]);

                newamount = bal - transferamount;
                margin =Convert.ToInt32( transferamount * 0.2941);
                transferamount = transferamount - margin;
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
                    mailto();
                    updatetable();
                    UpdateAdminTable();
                    statusUpdate();
                    Session["wallet"] = newamount;
                }
            }
        }

        private void UpdateAdminTable()
        {
            con.Open();
            String query = "insert into Admin values ('" + tid + "','" + Session["vehicleid"].ToString() + "','" + Session["uid"].ToString() + "','" + TextBox1.Text   + "',"+price+"," + transferamount + "," + margin + ")";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        private string getemail(string id)
        {
            
            string s = "select * from UserDetails where Uid = '" + id + "'";
            SqlCommand cmd = new SqlCommand(s,con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0]["Email"].ToString();
            }
            return "invalid";
        }
        private void mailto()
        {
            string semail, bemail;
            semail = getemail(TextBox1.Text);
            bemail = getemail(Session["uid"].ToString());
            if(semail=="invalid" || bemail == "invalid")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Email ID');", true);
            }
            //sending mail to seller 
            MailMessage mailMessage = new MailMessage("sellbuycomp@gmail.com", semail);
            mailMessage.Subject = "Sold vehicle";
            mailMessage.Body = "Hey! there we are from Sellbay Car. \nYour Car has been sold and your wallet hase been increment by your token amount.\nthanks for choosing us.";

            SmtpClient sc = new SmtpClient("smtp.gmail.com", 587);
            sc.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "sellbuycomp@gmail.com",
                Password = "sellbuy123"

            };
            sc.EnableSsl = true;
            sc.Send(mailMessage);

            //sendig mail to buyer
            mailMessage = new MailMessage("sellbuycomp@gmail.com", bemail);
            mailMessage.Subject = "Bought vehicle";
            mailMessage.Body = "Hey! there we are from Sellbay Car. \nYour Vehicle has been purchased and your wallet hase been decremented by token amount.\nthanks for choosing us.";

            sc = new SmtpClient("smtp.gmail.com", 587);
            sc.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "sellbuycomp@gmail.com",
                Password = "sellbuy123"

            };
            sc.EnableSsl = true;
            sc.Send(mailMessage);


        }

        private void statusUpdate()
        {
            con.Open();
            String query = "Update VehicleForSale set status = 'sold' where VehicleID = '"+Session["vehicleid"].ToString()+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        private string generateId()
        {
            string s = "TD";
            Random random = new Random();
            s = s + Convert.ToString(random.Next(1000, 9999));
            return s;
        }
        private void updatetable()
        {
            con.Open();
            tid = generateId();
            DateTime theDate = DateTime.Now;
            theDate.ToString("yyyy-MM-dd H:mm:ss");
            String query = "insert into Transactions values ('"+tid+"','"+Session["uid"].ToString()+"','"+TextBox1.Text+"','"+ Session["vehicleid"].ToString()+"',"+ transferamount + ",null,'"+Convert.ToDateTime(DateTime.Now.ToString())+"')";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.ExecuteNonQuery();
            con.Close();
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
            string s1 = "update UserDetails set Wallet=@p2 where Mobile=@p1 ";
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
            string s1 = "update UserDetails set Wallet=@p1 where Mobile= @p2";
            SqlCommand cmd = new SqlCommand(s1, con);
            cmd.Parameters.AddWithValue("@p1", newamount);

            cmd.Parameters.AddWithValue("@p2", num);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}