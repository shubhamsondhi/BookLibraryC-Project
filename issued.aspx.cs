using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;

using System.Web.UI.WebControls.WebParts;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{
    SqlConnection sqlcon;

    string connectionString = ConfigurationManager.ConnectionStrings["dc"].ConnectionString;
    

    protected void Page_Load(object sender, EventArgs e)
    { 
     
        try
        {
           
            DataSet dss = new DataSet();
            sqlcon = new SqlConnection(connectionString);
            sqlcon.Open();
            SqlDataAdapter da;
            int rollno =Convert.ToInt32(Session["roll"]);
            da = new SqlDataAdapter("select * FROM p_return", sqlcon);
             da.Fill(dss);
           sqlcon.Close();


           if (dss.Tables[0].Rows.Count > 0)
           {

               foreach (DataRow row1 in dss.Tables[0].Rows)
               {

                   Label13.Text += "<tr><td>" + Convert.ToString(row1["I_date"]) + "<td></td>" + Convert.ToString(row1["D_date"]) + "</td><td>" + Convert.ToString(row1["B_no"]) + "</td></tr>";
               }

           }
           else
           {
               Label13.Text = "<tr  bgcolor=#993333><td colspan=3  align=center style='color: #FFFFFF; background-color: #000000; font-size: 40px; border: thin solid #FFFFFF'>" + "No Book Issued" + "</td></tr>";
           }


        }
        catch (Exception)
        {
            Label13.Text = "<tr   ><td colspan=3   >" + "No Book Issued" + "</td></tr>";

        }

    }
    
            
}