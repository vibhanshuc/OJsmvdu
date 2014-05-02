using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class auth_signin : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
       
        

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
         String sqlstr; 
        SqlConnection conn;
    SqlCommand mycomm;
    
         conn = new SqlConnection() ;
        conn.ConnectionString = "Data Source=ALIENATOR-PC;Initial Catalog=aspnetdb;Integrated Security=True";
        conn.Open();
        mycomm = new SqlCommand();
        mycomm.Connection = conn;
        sqlstr = ("insert into primary_table values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "') ");
       
        mycomm.CommandText=sqlstr;
        try
        {

            mycomm.ExecuteNonQuery();
            TextBox1.Text = "Done";

        }
        catch (Exception ex)
        {
            TextBox1.Text=ex.ToString();
        }
    }
}