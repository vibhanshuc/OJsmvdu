using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class about_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Button1.Visible = false;
        try
        {
            String temp = "";
            temp = (String)Session["var_session"].ToString();
            if (temp != null)
            {
                Label_session.Text = "Welcome" + " " + temp.ToString();
                Button1.Visible = true;
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["var_session"] = null;
        Button1.Visible = false;
        Label_session.Text = " ";
    }
}