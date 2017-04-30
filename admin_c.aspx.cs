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
{   SqlConnection sqlcon;

    string connectionString = ConfigurationManager.ConnectionStrings["dc"].ConnectionString;

            DataSet ds = new DataSet();
           
            SqlDataAdapter da;
            SqlCommand sqlcom;
            protected void Page_Load(object sender, EventArgs e)
            {
            }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection(connectionString);
        sqlcon.Open();
        sqlcom = new SqlCommand("update admin set limit="+Convert.ToInt32(TextBox1.Text)+"", sqlcon);
        sqlcom.ExecuteNonQuery();
        sqlcon.Close();
        sqlcon = new SqlConnection(connectionString);
        sqlcon.Open();
        sqlcom = new SqlCommand("update student_data set limet_b=" + Convert.ToInt32(TextBox1.Text) + "", sqlcon);
        sqlcom.ExecuteNonQuery();
        sqlcon.Close();
        
       
        
          
            
      
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection(connectionString);
        sqlcon.Open();
        sqlcom = new SqlCommand("update admin set day_l=" + Convert.ToInt32(TextBox3.Text) + "", sqlcon);
        sqlcom.ExecuteNonQuery();
        sqlcon.Close();

       

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection(connectionString);
        sqlcon.Open();
        sqlcom = new SqlCommand("update admin set Fine=" + Convert.ToInt32(TextBox2.Text) + "", sqlcon);
        sqlcom.ExecuteNonQuery();
        sqlcon.Close();
    }
}