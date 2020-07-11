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
    public partial class Pur : System.Web.UI.Page
    {
        /* protected void Page_Load(object sender, EventArgs e)=> LoadImages();
         private void LoadImages()
         {

             string cs = ConfigurationManager.ConnectionStrings["Db"].ConnectionString;
             using (SqlConnection con = new SqlConnection(cs))
             {
                 SqlCommand cmd = new SqlCommand("Select * from VehicleForSale", con);
                 con.Open();
                 SqlDataReader rdr = cmd.ExecuteReader();
                 GridView1.DataSource = rdr;
                 GridView1.DataBind();
                 DataSet ds = new DataSet();
                 con.Close();

             }
         }*/
        protected void Page_Load(object sender, EventArgs e) {
            //username.Text = Session["name"].ToString();
        }
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string empid = GridView1.SelectedRow.Cells[1].Text;
            Response.Redirect("DisplayVehicle.aspx?SellerID= " + empid);
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void sell_Click(object sender, EventArgs e)
        {
            Response.Redirect("Selling1.aspx");
        }
    }
}