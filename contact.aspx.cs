using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class contact : System.Web.UI.Page
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
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["var_session"] = null;
        Button1.Visible = false;
        Label_session.Text = " ";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["var_session"] = null;
        Button1.Visible = false;
        Label_session.Text = " ";
    }






    protected void Button11_Click(object sender, EventArgs e)
    {
       
        string  ToAddress  = "vibhanshu86@gmail.com";

        MailMessage mm = new MailMessage(TextBox3.Text, ToAddress);
        mm.Subject = "Query";
        mm.Body = TextBox4.Text + " This is the query from " + TextBox3.Text;
        mm.IsBodyHtml = false;

        
        SmtpClient smtp  = new SmtpClient();

        
        smtp.Send(mm);
        mm = new MailMessage(ToAddress, TextBox3.Text);
        mm.Subject = "Query Received";
        mm.Body = "Your query has been logged to us ";
        smtp.Send(mm);

        Console.WriteLine("<script>alert('Your query has been logged to us!');</script>");
    }
}