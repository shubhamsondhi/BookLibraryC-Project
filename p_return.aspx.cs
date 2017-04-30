using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.WebControls.WebParts;
using System.Data;
public partial class _Default : System.Web.UI.Page
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
            int rollno = Convert.ToInt32(Session["roll"]);
            da = new SqlDataAdapter("select * FROM p_return where Rollno='"+rollno+"'", sqlcon);
            da.Fill(dss);
            sqlcon.Close();


            if (dss.Tables[0].Rows.Count > 0)
            {

                foreach (DataRow row1 in dss.Tables[0].Rows)
                {

                    Label13.Text += "<tr><td>" + Convert.ToString(row1["I_date"]) + "</td><td>" + Convert.ToString(row1["D_date"]) + "</td><td>" + Convert.ToString(row1["B_no"]) + "</td><td>" + Convert.ToString(fine(Convert.ToDateTime(row1["D_date"]))) + "</td></tr>";
                }

            }
            else
            {
                Label13.Text = "<tr  bgcolor=#993333><td colspan=4  align=center style='color: #FFFFFF; background-color: #000000; font-size: 40px; border: thin solid #FFFFFF'>" + "No Book Pending To Return" + "</td></tr>";
            }


        }
        catch (Exception)
        {
            Label13.Text = "<tr   ><td colspan=4   >" + "No Book Pending to Return" + "</td></tr>";

        }
    }
        private int fine(DateTime d_day)
    {
        int fin = 0; int fines = 0,day=0;
        DataSet dss = new DataSet();
        sqlcon = new SqlConnection(connectionString);
        sqlcon.Open();
        SqlDataAdapter da;
        int rollno = Convert.ToInt32(Session["roll"]);
        da = new SqlDataAdapter("select * FROM admin", sqlcon);
        da.Fill(dss);
        sqlcon.Close();
       fines=Convert.ToInt32(dss.Tables[0].Rows[0][0]);
       day = Convert.ToInt32(dss.Tables[0].Rows[0][3]);
       try
       {
           if (d_day < DateTime.Now)
           {
               fin = fines * Convert.ToInt32((DateTime.Now.Day - d_day.Day));
           }
       }
       catch (Exception dd)
       {
           Label13.Text =  "<tr   ><td colspan=4   >"+dd.Message+"</td></tr>";
       }
       return fin;
    }
    
}