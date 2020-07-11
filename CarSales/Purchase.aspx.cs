using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarSales
{
    public partial class Purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            username.Text = Session["name"].ToString();
            uid.Text = Session["uid"].ToString();
            wllt.Text = Session["wallet"].ToString();
        }
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
            string empid = GridView1.SelectedRow.Cells[1].Text;
            Session["vehicleid"] = empid;
            //Response.Redirect("display.aspx");
            //Response.Redirect("DisplayVehicle.aspx");
            Response.Redirect("Display1.aspx");
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