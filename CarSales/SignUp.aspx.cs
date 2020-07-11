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
namespace CarSales
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString.ToString());
        protected void Btn_signUp_Click(object sender, EventArgs e)
        {

            if (checkExistence())
            {
                name.Text = "";
                email.Text = "";
                address.Text = "";
                mnumber.Text = "";
                redirect("You are Already Registered");


            }
            else
            {
                sendMail("Hello " + name.Text.ToString() + ", Please click on the following link to complete the registration.\n\n https://localhost:44311/verifyUser.aspx");
                Session["fname"] = name.Text.ToUpper();
                Session["email"] = email.Text;

                Session["password"] = password.Text;
                Session["add"] = address.Text;
                Session["mno"] = mnumber.Text;
                Response.Write("<script>alert('Chech your email for verification link')</script>");

            }

        }

        private void sendMail(string msg)
        {
            MailMessage mailMessage = new MailMessage("sellbuycomp@gmail.com", email.Text);
            mailMessage.Subject = "Verification mail";
            mailMessage.Body = msg;

            SmtpClient sc = new SmtpClient("smtp.gmail.com", 587);
            sc.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "sellbuycomp@gmail.com",
                Password = "sellbuy123"

            };

            sc.EnableSsl = true;
            sc.Send(mailMessage);
        }

        private bool checkExistence()
        {
            con.Open();

            string s1 = "Select * from UserDetails where Email=@p1";

            SqlCommand cmd1 = new SqlCommand(s1, con);

            cmd1.Parameters.AddWithValue("@p1", email.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd1);

            DataTable dt = new DataTable();

            da.Fill(dt);
            con.Close();

            if (dt.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }  // returns true when user is already registered.

        private void redirect(string message)
        {
            string url = "" +
                "Login.aspx";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "');";
            script += "window.location = '";
            script += url;
            script += "'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
        }
    }
}