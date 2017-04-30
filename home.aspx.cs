using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection sqlcon;
    //Data Source=(LocalDB)\v11.0;AttachDbFilename="C:\Users\sony\Desktop\library world 1\library world 1\App_Data\Database.mdf";Integrated Security=True;Connect Timeout=30
    string connectionString = ConfigurationManager.ConnectionStrings["dc"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            
            Label1.Text ="Welcome "+ (string)Session["username"];
            HyperLink1.Visible = false;

        }
        

    }
    protected void Page_Init(object Sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        DataSet ds = new DataSet();
        if (Session["username"] == null)
        {
            try
            {
                sqlcon = new SqlConnection(connectionString);
                sqlcon.Open();
                SqlDataAdapter da;
                da = new SqlDataAdapter("select * from student_data where Rollno='" + username.Text + "' AND Password='" + password.Text + "'", sqlcon);

                da.Fill(ds);
                sqlcon.Close();


            }
            catch (Exception ex)
            {
                Label2.Text = ex.Message;
                ds = null;
            }
            try
            {
                if (username.Text == "admin" && password.Text == "admin")
                {
                    Session["username"] = "admin";
                    Response.Redirect("~/Admin.aspx");
                }
                else
                    if ((ds != null) & (ds.Tables[0].Rows.Count > 0))
                    {
                        Session["username"] = ds.Tables[0].Rows[0][0] + " " + ds.Tables[0].Rows[0][1];
                        Session["roll"] = ds.Tables[0].Rows[0][2];
                        Session["Sem"] = ds.Tables[0].Rows[0][5];
                        Session["Branch"] = ds.Tables[0].Rows[0][8];
                        Session["fine"] = ds.Tables[0].Rows[0][10];
                        Session["limit"] = ds.Tables[0].Rows[0][9];

                        Response.Redirect("~/profile.aspx");




                    }
                    else
                    {
                        Label2.Text = "Invalid id";
                    }

            }
            catch (Exception)
            {
            }
        }
        else
        {
            Label2.Text = "Person is already login";
        }
        
        
    }

    protected void Search_Button(object sender, EventArgs e)
    {
        
        try
        {
            DataSet ds = new DataSet();
            sqlcon = new SqlConnection(connectionString);
            sqlcon.Open();
            SqlDataAdapter da;
            da = new SqlDataAdapter("select * from Book where Name like '"+TextBox1.Text+"%'", sqlcon);

            da.Fill(ds);
            sqlcon.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
              
                
                
                    for (int j = 0; j < ds.Tables[0].Rows.Count&j<5; j++)
                    {
                        TableRow r = new TableRow();
                       
                            TableCell c = new TableCell();
                            c.Controls.Add(new LiteralControl("<a href=" + "student.aspx?no=" + ds.Tables[0].Rows[j][0].ToString() + "" + ">" + ds.Tables[0].Rows[j][2].ToString() + ""));
                            r.Cells.Add(c);
                        
                        Table1.Rows.Add(r);
                        Table1.Visible = true;
                    }
                }
            
            else
            {
               Response.Write("data not present");
            }
        }

        catch (Exception exx)
        {
         

        }












    }
   
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {
       
    }
    protected void TextBox1_Load(object sender, EventArgs e)
    {
        

    }


 
}

