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
public partial class _Default : System.Web.UI.Page
{

    
    
    string connectionString = ConfigurationManager.ConnectionStrings["dc"].ConnectionString;
   
    
    protected void Page_Load(object sender, EventArgs e)
    {
           
    
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            

           

                string sql = "SELECT * FROM book";

                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = connectionString;
                connection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(sql, connection);
                SqlCommandBuilder cmdBuilder = new SqlCommandBuilder(adapter);
                DataSet ds = new DataSet("book");
            
                adapter.Fill(ds, "book");
                DataRow row = ds.Tables["book"].NewRow();
                row["B_no"] = B_no.Text;
                row["course_no"] = C_no.Text;
                row["Subject"] = Subject.Text;
                row["Name"] = Name.Text;
                row["Author"] = Author.Text;
                row["Publisher"] = Publisher.Text;
                row["A_copies"] =Convert.ToInt32(Copies.Text);
                row["T_copies"] =Convert.ToInt32(Copies.Text);
               row["Description"] = Description.Text;
               
               
           
               
                if (FileUpload2.FileName != "")
                {
                    byte[] rawdata = FileUpload2.FileBytes;
                row["images"] = rawdata;
                } ds.Tables["book"].Rows.Add(row);
                adapter.Update(ds, "book");
                connection.Close();
                Response.Write("Data Saved");
                connection.Close();
                Label2.Text = "data stored";
        }
        catch(Exception exx)
        {
            
            
            Label2.Text = exx.Message;
        }
        
    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string[] GetCompletionList(string prefixText, int count, string contextKey)
    { 
           
      
    string[] movies = {"CSE", "ECE",  "IT", "Finance","Organizational Managemen", "Marketing","Marketing","Entrepreneurship","Accounting","Management","Real Estate","Human Services Management","Sports Management","Economics"};  
  
   
    return (from m in movies where m.StartsWith(prefixText,StringComparison.CurrentCultureIgnoreCase) select m).Take(count).ToArray();    }




    

}
