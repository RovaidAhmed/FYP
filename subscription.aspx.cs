using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    DataClassesDataContext dv = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnreg_Click(object sender, EventArgs e)
    {
        user u = new user
    {
        u_name = Txtusername.Text,
        u_email = Txtemail.Text,
        u_pass = Txtpass.Text

    };
    dv.users.InsertOnSubmit(u);
        dv.SubmitChanges();
        Txtemail.Text = " ";
        Txtusername.Text = " ";
        Txtpass.Text = " ";
        Response.Redirect("subscription.aspx");

    }


  

    }