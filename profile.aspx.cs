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
    string B_no, A_copies;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label8.Text = Convert.ToString(Session["username"]);
        Label9.Text = Convert.ToString(Session["Branch"]);
        Label10.Text = Convert.ToString(Session["sem"]);
        Label11.Text = Convert.ToString(Session["limit"]);
        Label12.Text = Convert.ToString(Session["fine"]);
        Sem();
    }
    private void Sem()
    {
        int sem;
        sem = Convert.ToInt32(Session["sem"]);

        try
        {
            String qs = Request.QueryString["brn"];
            DataSet ds = new DataSet();
            sqlcon = new SqlConnection(connectionString);
            sqlcon.Open();
            SqlDataAdapter da;

            string branch = (string)Session["Branch"];

            if (sem == 0 && branch == null)
            {
                Label6.Text = "<tr><td>Please Enter the Semester in your Profile</td></tr>";
            }
            else
            {
                da = new SqlDataAdapter("select * FROM Book WHERE Sem='" + sem + "' and Branches='" + branch + "'", sqlcon);


                da.Fill(ds);
                sqlcon.Close();


                if (ds.Tables[0].Rows.Count > 0)
                {

                    foreach (DataRow row1 in ds.Tables[0].Rows)
                    {

                        Label6.Text += "<tr><td><a href=student.aspx?no=" + row1["B_no"] + "> " + (string)row1["Name"] + "</a></td> <td>" + row1["course_no"] + "</td> <td>" + row1["A_copies"] + "</td></tr>";
                    }

                }
            }
        }
        catch (Exception)
        {
            Label6.Text = "<tr><td colspane=2>" + "Select The Semester First" + "</td></tr>";

        }

    }

}