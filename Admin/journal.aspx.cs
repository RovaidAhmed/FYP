using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Label1.Text = "Welcome "+ Session["username"].ToString();
            
        }

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("username");
        Session.RemoveAll();

        Response.Redirect("../Admin_Login.aspx");
    }

    protected void btnjournal_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session.Remove("username");
        Session.RemoveAll();

        Response.Redirect("../Admin_Login.aspx");
    }
}