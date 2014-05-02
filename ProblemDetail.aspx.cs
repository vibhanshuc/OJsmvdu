using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class ProblemDetail : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "~/CodeLine.aspx?ContestID=" + Request.QueryString["ContestID"] + "&ProblemID=" + Request.QueryString["ProblemID"];
        var dataFile = Server.MapPath("~/Problems/Problem" + Request.QueryString["ProblemID"] + ".txt");
        Array userData = File.ReadAllLines(dataFile);
        foreach (string dataLine in userData)
        {
            foreach (string dataItem in dataLine.Split(' '))
            {
                TextBox1.Text += " " + dataItem.ToString();
            }
        }
    }
}