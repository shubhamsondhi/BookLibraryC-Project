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
        sqlcon = new SqlConnection(connectionString);
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        DataSet dss = new DataSet();
        SqlTransaction tran = null;
        try
        {
            
            
            
            sqlcon.Open();
           
            da = null;
            da = new SqlDataAdapter("select * FROM p_issue", sqlcon);
            da.Fill(ds);
            sqlcon.Close();


            if (ds.Tables[0].Rows.Count > 0)
            {

                foreach (DataRow row1 in ds.Tables[0].Rows)
                {

                    Label6.Text += "<tr  ><td>" + Convert.ToString(row1["Rollno"]) + "</td><td>" + Convert.ToString(row1["B_no"]) + "</td> <td>" + Convert.ToString(row1["I_date"]) + "</td> <td>" + Convert.ToString(row1["A_copies"]) + "</td><td><a href=?i=" + Convert.ToString(row1["no"]) + ">issue</td></tr>";
                }
               //Issue tAble
            }
            sqlcon.Open();
            da = new SqlDataAdapter("select * FROM p_return", sqlcon);
                da.Fill(dss);
                sqlcon.Close();


                if (dss.Tables[0].Rows.Count > 0)
                {

                    foreach (DataRow row1 in dss.Tables[0].Rows)
                    {

                        Label1.Text += "<tr  ><td>" + Convert.ToString(row1["Rollno"]) + "</td><td>" + Convert.ToString(row1["B_no"]) + "</td> <td>" + Convert.ToString(row1["I_date"]) + "</td> <td>" + Convert.ToString(row1["D_date"]) + "</td><td>" + Convert.ToString(fine(Convert.ToDateTime(row1["D_date"]))) + "</td><td><a href=?j=" + Convert.ToString(row1["no"]) + ">Returned</td></tr>";
                    }

                }
          
                if (Request.QueryString["i"] != null)
                {int no=Convert.ToInt32(Request.QueryString["i"]);
                    sqlcon.Open();

                    SqlCommand sqlcom;
                    sqlcom=new SqlCommand("EXECUTE dbo.issue1'"+no+"'",sqlcon);
                    sqlcom.ExecuteNonQuery();
                    sqlcon.Close();
                    Response.Redirect("admin.aspx");

                }else  if (Request.QueryString["j"] != null)
                {
                    da = null;
                    da = new SqlDataAdapter("select * FROM p_return", sqlcon);
                    da.Fill(ds);
                    SqlCommand sqlcom;
                    sqlcon.Open();
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        int no = Convert.ToInt32(Request.QueryString["j"]);
                        sqlcom = new SqlCommand("EXECUTE dbo.returned'" + no + "'", sqlcon);
                        sqlcom.ExecuteNonQuery();
                        Response.Redirect("admin.aspx");
                    }
                    sqlcon.Close();
                }


            }
        

        catch (Exception exx)
        {

            Label6.Text =exx.Message;

        }
    }
    private int fine(DateTime d_day)
    {
        int day = 0;
        int fin = 0; int fines = 0;
        DataSet dss = new DataSet();
        sqlcon = new SqlConnection(connectionString);
        sqlcon.Open();
        SqlDataAdapter da;
        int rollno = Convert.ToInt32(Session["roll"]);
        da = new SqlDataAdapter("select * FROM admin", sqlcon);
        da.Fill(dss);
        sqlcon.Close();
        fines = Convert.ToInt32(dss.Tables[0].Rows[0][0]);
        day = Convert.ToInt32(dss.Tables[0].Rows[0][3]);
        try
        {
            if (d_day < DateTime.Now)
            {
                fin = fines * Convert.ToInt32((DateTime.Now.Day - d_day.Day));
            }
        }
        catch (Exception )
        {
           
        }
        return fin;
    }
    private int fine()
    {
        int day = 0;
       
        DataSet dss = new DataSet();
        sqlcon = new SqlConnection(connectionString);
        sqlcon.Open();
        SqlDataAdapter da;
        int rollno = Convert.ToInt32(Session["roll"]);
        da = new SqlDataAdapter("select * FROM admin", sqlcon);
        da.Fill(dss);
        sqlcon.Close();
       day = Convert.ToInt32(dss.Tables[0].Rows[0][3]);
       return day;
    }
}