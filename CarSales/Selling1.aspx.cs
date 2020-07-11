using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Web.UI.HtmlControls;
using System.Security.Cryptography;

namespace CarSales
{
    public partial class Selling1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            username.Text = Session["name"].ToString();
            uid.Text = Session["uid"].ToString();
            wllt.Text = Session["wallet"].ToString();
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString.ToString());
        protected void submit_Click(object sender, EventArgs e)
        {
            con.Open();
            String vid=generateId();
            int type=0;
            string fuel=null;
            if (twoWheeler.Checked)
            {
                type = 2;
            }
            else
            {
                type = 4;
            }
            if (Fpetrol.Checked)
                fuel = "petrol";
            else
                fuel = "diesel";
        
            FileUpload vimg = (FileUpload)vehiclephotos;
            Byte[] vimgbyte = null;
            if(vimg.HasFile && vimg.PostedFile != null)
            {
                //postedfile
                HttpPostedFile File = vehiclephotos.PostedFile;
                //Create byte Array with file len
                vimgbyte = new Byte[File.ContentLength];
                //force the control to load data in array
                File.InputStream.Read(vimgbyte, 0, File.ContentLength);
            }

           String s = "insert into VehicleForSale values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11,@p12,@p13,@p14)";
            double token= Convert.ToInt64(price.Text);
            token = token * 0.12 + token * 0.05; // 0.12 token amount send to seller and 0.5 is margin of our company

            SqlCommand cmd = new SqlCommand(s, con);
            cmd.Parameters.AddWithValue("@p1", vid);
            cmd.Parameters.AddWithValue("@p2", uid.Text);
            cmd.Parameters.AddWithValue("@p3", type);
            cmd.Parameters.AddWithValue("@p4", Request.Form["brand"].ToString());
            cmd.Parameters.AddWithValue("@p5", model.Text);
            cmd.Parameters.AddWithValue("@p6", Convert.ToInt32(km.Text));
            cmd.Parameters.AddWithValue("@p7", Convert.ToInt32(pyear.Text));
            cmd.Parameters.AddWithValue("@p8", vimgbyte);
            cmd.Parameters.AddWithValue("@p9", fuel);
            cmd.Parameters.AddWithValue("@p10", describe.Text);
            cmd.Parameters.AddWithValue("@p11", Convert.ToInt64(price.Text));
            cmd.Parameters.AddWithValue("@p12", token);
            cmd.Parameters.AddWithValue("@p13", DateTime.Now);
            cmd.Parameters.AddWithValue("@p14", "pending");


            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Purchase.aspx");
        }

        private string generateId()
        {
            string s = "VH";
            Random random = new Random();
            s = s + Convert.ToString(random.Next(1000, 9999));
            return s;
        }

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Purchase.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}