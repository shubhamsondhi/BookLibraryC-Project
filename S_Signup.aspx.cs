using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    SqlCommand sqlcomm;
    SqlConnection sqlconn;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            sqlconn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True;User Instance=True");
            sqlconn.Open();
            sqlcomm = new SqlCommand("insert into student_data Values('" + (string)F_name.Text + "','" + (string)L_name.Text + "','" + Convert.ToInt32(Rollno.Text) + "','" + Convert.ToInt32(password.Text) + "','" + (string)DropDownList1.SelectedValue + "','" + (string)sem.SelectedValue + "','" + (string)Addres.Text + "','" + (string)Email.Text + "','" +(string)DropDownList2.SelectedValue+ "','" + 7 + "','" + 0 + "')", sqlconn);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
            
            Response.Redirect("home.aspx");

        }
        catch (Exception ex)
        {
            Label2.Text = ex.Message;
        }
       
    }
    public string username
    {

        get
        {
            return F_name.Text+" "+L_name.Text;
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
      
       switch(DropDownList1.SelectedIndex)
       { 
           case 1:
              
               DropDownList2.Items.Add(new ListItem("CSE","CSE"));
               DropDownList2.Items.Add(new ListItem("ECE", "ECE"));
               DropDownList2.Items.Add(new ListItem("ME", "ME")); 
               DropDownList2.Items.Add(new ListItem("IT", "IT"));  
               break;

           case 2:
               DropDownList2.Items.Add(new ListItem(" Finance", " Finance"));
               DropDownList2.Items.Add(new ListItem(" Marketing", " Marketing"));
               DropDownList2.Items.Add(new ListItem(" Entrepreneurship", " Entrepreneurship"));
               DropDownList2.Items.Add(new ListItem(" Accounting", " Accounting"));
               DropDownList2.Items.Add(new ListItem(" Real Estate", " Real Estate"));
               DropDownList2.Items.Add(new ListItem(" Nonprofit", " Nonprofit"));
                DropDownList2.Items.Add(new ListItem("  Health Care", "  Health Care"));
                DropDownList2.Items.Add(new ListItem(" Human Services Management", " Human Services Management"));
                DropDownList2.Items.Add(new ListItem("  Sports Management", "  Sports Management"));
               DropDownList2.Items.Add(new ListItem("   Organizational Management", "   Organizational Management"));
               DropDownList2.Items.Add(new ListItem(" Economicst", "  Economics"));                   
              
               break;
        
        
        
        }

    }
   
}