using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.ComponentModel;
using System.Data;
using System.Text;
public partial class MasterPage2 : System.Web.UI.MasterPage
{
    string connectionString = ConfigurationManager.ConnectionStrings["dc"].ConnectionString;
    SqlConnection sqlcon;
    protected void Page_Load(object sender, EventArgs e)
{Response.AppendHeader("Pragma", "no-cache");
        Response.AppendHeader("Cache-Control", "no-cache");

        Response.CacheControl = "no-cache";
        Response.Expires = -1;

        Response.ExpiresAbsolute = new DateTime(1900, 1, 1);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
  
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();
    if (Session["roll"] == null)
    {
        Response.Redirect("~/home.aspx");
    }
    else
    {
        Label1.Text = (string)Session["username"];

    }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("username");
        Response.Redirect("~/home.aspx");

    }

}
