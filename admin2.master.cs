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
{  string connectionString = ConfigurationManager.ConnectionStrings["dc"].ConnectionString;
SqlConnection sqlcon;
    protected void Page_Load(object sender, EventArgs e)
{
    Response.AppendHeader("Pragma", "no-cache");
    Response.AppendHeader("Cache-Control", "no-cache");

    Response.CacheControl = "no-cache";
    Response.Expires = -1;

    Response.ExpiresAbsolute = new DateTime(1900, 1, 1);
    Response.Cache.SetCacheability(HttpCacheability.NoCache);

    Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
    Response.Cache.SetNoStore();


    if ("admin" != (string)Session["username"])
        {
            Response.Redirect("~/home.aspx");
        }
        Label1.Text = (string)Session["username"];



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("username");
        Response.Redirect("~/home.aspx");
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        String qs = Request.QueryString["no"];
                string sql = "SELECT * FROM issue";

                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = connectionString;
                connection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(sql, connection);
                SqlCommandBuilder cmdBuilder = new SqlCommandBuilder(adapter);
                DataSet ds = new DataSet("issue");
            
                adapter.Fill(ds, "issue");
                DataRow row = ds.Tables["issue"].NewRow();
                row["B_no"] = Session["B_no"];
                row["A_copie"] = Convert.ToInt32(Session["A_copies"]);
                row["I_date"]=DateTime.Now;
                row["Rollno"] = Session["roll"];
           
               
                
               ds.Tables["issue"].Rows.Add(row);
                adapter.Update(ds, "issue");
                connection.Close();
              Label2.Text= "Data Saved";
                connection.Close();
                
        }
       
        
    }

