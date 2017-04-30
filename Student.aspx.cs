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
    int  R_d = 0;
    
    SqlConnection sqlcon;

    string connectionString = ConfigurationManager.ConnectionStrings["dc"].ConnectionString;
    string B_no, A_copies;
    protected void Page_Load(object sender, EventArgs e)
    {
        

   
       
        try
        {
            String qs = Request.QueryString["no"];
            DataSet ds = new DataSet();
            sqlcon = new SqlConnection(connectionString);
            sqlcon.Open();
            SqlDataAdapter da;

            da = new SqlDataAdapter("select * FROM Book WHERE B_no='" +Convert.ToInt32(qs)+ "'", sqlcon);


            da.Fill(ds);
            sqlcon.Close();
           
            if (ds.Tables[0].Rows.Count > 0)
            {

                Label1.Text = ds.Tables[0].Rows[0][0].ToString();
                Label2.Text = ds.Tables[0].Rows[0][2].ToString();
                Label3.Text = ds.Tables[0].Rows[0][11].ToString();
                Label4.Text = "No Info is There";
                Label5.Text = ds.Tables[0].Rows[0][6].ToString();
                B_no= ds.Tables[0].Rows[0][0].ToString();
            A_copies= ds.Tables[0].Rows[0][6].ToString();
            }
            else
            {
                Label1.Text = "Selecte the book";

            }


        



        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;

        }

    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        if (Convert.ToInt32(Session["limit"]) > 0)
        {
            try
            {
                fine();
                String qs = Request.QueryString["no"];
                string sql = "SELECT * FROM p_issue";

                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = connectionString;
                connection.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(sql, connection);
                SqlCommandBuilder cmdBuilder = new SqlCommandBuilder(adapter);
                DataSet ds = new DataSet("p_issue");

                adapter.Fill(ds, "p_issue");
                DataRow row = ds.Tables["p_issue"].NewRow();
                row["B_no"] = B_no;
                row["A_copies"] = A_copies;
                row["I_date"] = DateTime.Now;
                row["D_date"] = DateTime.Now.AddDays(R_d);
                row["Rollno"] = Session["roll"];

                int sr = Convert.ToInt32(B_no);


                ds.Tables["p_issue"].Rows.Add(row);

                adapter.Update(ds, "p_issue");
                connection.Close();
                SqlCommand sqlcom;
                connection.Open();
                sqlcom = new SqlCommand("update student_data set limet_b=limet_b-1 where Rollno='" + Session["roll"] + "'", connection);
                sqlcom.ExecuteNonQuery();
                connection.Close();
                Session["limit"] = Convert.ToInt32(Session["limit"]) - 1;
                Response.Redirect("profile.aspx");

            }
            catch (Exception)
            {
                Label2.Text = "Select The Book First Please";
            }
        }
        else
        {
            Label2.Text = "Your Limit Is Finish";
        }
    }
    private void fine()
    {
        DataSet dss = new DataSet();
        sqlcon = new SqlConnection(connectionString);
        sqlcon.Open();
        SqlDataAdapter da;
        
        da = new SqlDataAdapter("select * FROM admin", sqlcon);
        da.Fill(dss);
        sqlcon.Close();
        
        R_d = Convert.ToInt32(dss.Tables[0].Rows[0][3]);

    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Label1.Text = "";
        Label2.Text = "";
        Label3.Text = "";
        Label4.Text = "";
        Label5.Text = "";
        B_no = "";
        A_copies = "";
    }
}
