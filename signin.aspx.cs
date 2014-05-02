using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class signin : System.Web.UI.Page
{
   
    
    protected void Page_Load(object sender, EventArgs e)
    {
    }
   
    protected void Button4_Click2(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;
        String var = "";
        conn = new SqlConnection();
        var = TextBox1.Text;
        try
        {
            conn.ConnectionString = "Data Source=ALIENATOR-PC;Initial Catalog=aspnetdb;Integrated Security=True";
            conn.Open();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex);
        }
        String sql = "SELECT * FROM primary_table WHERE user_name='" + TextBox1.Text + "' AND password = '" + TextBox2.Text + "'";
        comm = new SqlCommand(sql, conn);
        reader = comm.ExecuteReader();
        if (reader.Read())
        {

            Session["var_session"] = TextBox1.Text.ToString();
            Response.Redirect("Default.aspx");
        }
        else
        {
            Session["var_session"] = null;
            Console.WriteLine("<script>alert('You are not authenticated!');</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox1.Focus();
        }
    }
}