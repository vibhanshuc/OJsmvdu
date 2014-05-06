using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Threading.Tasks;
using System.Web.Services;
using System.Text;
using System.Data.SqlClient;
public partial class CodeLine : System.Web.UI.Page
{
    String temp = "";
    com.ideone.Ideone_Service_v1Service client = new com.ideone.Ideone_Service_v1Service();
    protected void Page_Load(object sender, EventArgs e)
    {
        Button3.Visible = false;
        try
        {
            
            temp = (String)Session["var_session"].ToString();
            if (temp != null)
            {
                Label_session.Text = "Welcome" + " " + temp.ToString();
                Button3.Visible = true;
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex);
        }
    }

    private async Task<bool> TestFunction()
    {
        var x = await initialize();
        var y = await showresult();
        return true;

}
    protected void Button3_Click(object sender, EventArgs e)
        {
        Session["var_session"] = null;
        Button3.Visible = false;
        Label_session.Text = " ";

        }
    public async Task<string> initialize()
    {
        

        Dictionary<string, string> result = new Dictionary<string, string>();
        Object[] ret = client.createSubmission("IDEONEUSERNAME", "IDEONEPASSWORD", TextBox1.Text, int.Parse(ddlLanguage.SelectedValue.ToString()), "", true, true);

        // filling result with data returned by testFunction
        foreach (object o in ret)
        {
            if (o is XmlElement)
            {
                XmlNodeList x = ((XmlElement)o).ChildNodes;
                result.Add(x.Item(0).InnerText, x.Item(1).InnerText);
            }
        }

        string link = "";

        // checking if everything went ok
        if ("OK" == result["error"])
        {
            string data = "";
            // printing result
            foreach (KeyValuePair<string, string> kvp in result)
            {
                data = kvp.Key + " : " + kvp.Value;
                if (kvp.Key == "link")
                    link = kvp.Value;
            }
            Label1.Text = link;
        }
        else
        {
            Label1.Text = "Error occured: " + result["error"];
        }
        return Label1.Text;
    }

    public async Task<string> showresult()
    {
        //Get the result of submission
        Dictionary<string, string> oresult = new Dictionary<string, string>();
        Object[] sresult = client.getSubmissionDetails("IDEONEUSERNAME", "IDEONEPASSWORD", Label1.Text, true, true, true, true, true);
        foreach (object o in sresult)
        {
            if (o is XmlElement)
            {
                XmlNodeList x = ((XmlElement)o).ChildNodes;
                oresult.Add(x.Item(0).InnerText, x.Item(1).InnerText);
            }
        }

        outputLabel.Text = oresult["status"].ToString();

        if (int.Parse(oresult["status"]) == 0)
        {
            outputLabel.Text = oresult["output"].ToString();
            errorLabel.Text = oresult["stderr"].ToString() + " <br/>" + oresult["cmpinfo"].ToString();
        }
        else
        {
            GC.Collect();
            showresult();
        }
        return outputLabel.Text;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {   
        
         String sqlstr; 
        SqlConnection conn;
    SqlCommand mycomm;
    
         conn = new SqlConnection() ;
        conn.ConnectionString = "Data Source=ALIENATOR-PC;Initial Catalog=aspnetdb;Integrated Security=True";
        conn.Open();
        mycomm = new SqlCommand();
        mycomm.Connection = conn;
        

        sqlstr = ("update leaderboard set prob_solved=prob_solved + 1,prob_attempted=prob_attempted + 1 where user_name=@temp" );
       
        mycomm.CommandText=sqlstr;
        mycomm.Parameters.AddWithValue("@temp", temp);
       

         mycomm.ExecuteNonQuery();
    

        outputLabel.Text = "";
        errorLabel.Text = "";
        TestFunction();
       
         
            int sol_user=Convert.ToInt32(outputLabel.Text);
          
            if (temp != null)
            {
               
                if ( sol_user== 5)
                       {
                            Label3.Text="successful submission";
                       }
                
            

            }
               else
            {
        
            Label3.Text="not authenticated to submit";
            }
       
    }
    protected void ddlLanguage_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        Label1.Text = "";
        errorLabel.Text = "";
        outputLabel.Text = "";

        StringBuilder sb = new StringBuilder();
        if (int.Parse(ddlLanguage.SelectedValue.ToString()) == 27)
        {
            sb.Append("using System;");
            sb.Append("\n\nclass Program");
            sb.Append("\n{");
            sb.Append("\n\tpublic static void Main(String[] args)");
            sb.Append("\n\t{");
            sb.Append("\n\t\tSystem.Console.WriteLine(\"Hello\");");
            sb.Append("\n\t}");
            sb.Append("\n}");
            TextBox1.Text = sb.ToString();
        }
        else if (int.Parse(ddlLanguage.SelectedValue.ToString()) == 10)
        {
            sb.Append("\n\nclass Program");
            sb.Append("\n{");
            sb.Append("\n\tpublic static void main(String args[])");
            sb.Append("\n\t{");
            sb.Append("\n\t\tSystem.out.println(\"Hello\");");
            sb.Append("\n\t}");
            sb.Append("\n}");
            TextBox1.Text = sb.ToString();
        }
        else if (int.Parse(ddlLanguage.SelectedValue.ToString()) == 1)
        {
            sb.Append("\n\tint main()");
            sb.Append("\n\t{");
            sb.Append("\n\t\tcout<<\"Hello\";");
            sb.Append("\n\t\treturn 1;");
            sb.Append("\n\t}");
            TextBox1.Text = sb.ToString();
        }
        else if (int.Parse(ddlLanguage.SelectedValue.ToString()) == 11 || int.Parse(ddlLanguage.SelectedValue.ToString()) == 44)
        {
            sb.Append("\n\tint main()");
            sb.Append("\n\t{");
            sb.Append("\n\t\tprintf(\"%s\",\"Hello\");");
            sb.Append("\n\t\treturn 1;");
            sb.Append("\n\t}");
            TextBox1.Text = sb.ToString();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        showresult();
    }


}
