using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;using System.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            LinkButton2.Visible = false;
            LinkButton1.Text = "Login";
        }
        else
        {
            LinkButton2.Visible = true;
            LinkButton1.Text = "Logout";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        else
        {
            Session.RemoveAll();
        Response.Redirect("~/home.aspx");
        }
       
    }
    protected void link_c(object sender, EventArgs e)
    {
        if (Session["username"] != "admin")
        {
            Response.Redirect("~/profile.aspx");
        }
        else
        {
            Response.Redirect("~/admin.aspx");
        }
    }
}
