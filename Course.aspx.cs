using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
 
    SqlConnection sqlcon;

    string connectionString = ConfigurationManager.ConnectionStrings["dc"].ConnectionString;
      
    protected void Page_Load(object sender, EventArgs e)
    {
        
        try
        {
            String qs = Request.QueryString["brn"];
            DataSet ds = new DataSet();
            sqlcon = new SqlConnection(connectionString);
            sqlcon.Open();
            SqlDataAdapter da;
            if (qs == null)
            {

                da = new SqlDataAdapter("select * FROM Book", sqlcon);
            }
            else
            {
                da = new SqlDataAdapter("select * FROM Book WHERE Branches LIKE'" + qs + "'", sqlcon);

            }
            da.Fill(ds);
            sqlcon.Close();
            
            
            if (ds.Tables[0].Rows.Count > 0)

            {
                
               foreach (DataRow row in ds.Tables[0].Rows)
               {
                   switch (Convert.ToInt32(row["sem"]))
                   {
                       case 1:
                           Label1.Text += "<li><a href=student.aspx?no=" + row["B_no"] + "> " + (string)row["Name"] + "</a></li>";

                           break;
                       case 2:
                           Label2.Text += "<li><a href=student.aspx?no=" + row["B_no"] + " > " + (string)row["Name"] + "</a></li>";

                           break;
                       case 3:
                           Label3.Text += "<li><a href=student.aspx?no=" + row["B_no"] + "> " + (string)row["Name"] + "</a></li>";

                           break;
                       case 4:
                           Label4.Text += "<li><a href=student.aspx?no=" + row["B_no"] + "> " + (string)row["Name"] + "</a></li>";

                           break;
                       case 5:
                           Label5.Text += "<li><a href=student.aspx?no=" + row["B_no"] + "> " + (string)row["Name"] + "</a></li>";


                           break;
                       case 6:
                           Label6.Text += "<li><a href=student.aspx?no=" + row["B_no"] + "> " + (string)row["Name"] + "</a></li>";

                           break;
                       case 7:
                           Label7.Text += "<li><a href=student.aspx?no=" + row["B_no"] + "> " + (string)row["Name"] + "</a></li>";

                           break;
                       case 8:
                           Label8.Text += "<li><a href=student.aspx?no=" + row["B_no"] + "> " + (string)row["Name"] + "</a></li>";

                           break;


                   }



                  
              
            }
              
            }
        }
        catch (Exception exx)
        {

           
        }

       
    }

   
}