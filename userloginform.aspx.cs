using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class userloginform : System.Web.UI.Page
{

    DataClassesDataContext dv = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {


    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        var cust = from c in dv.users
                   where c.u_name == Txtuname.Text &&
                   c.u_pass == Txtpass.Text
                   select c;



        if (cust.Any())
        {

            Lblerror.Text = "success";
            Session["uname"] = Txtuname.Text;
            Session["upass"] = Txtpass.Text;
            Txtpass.Text = " ";
            Txtuname.Text = " ";
           

            Response.Redirect("./user/userfavlist.aspx");
           
        }




        else
        {
            Lblerror.Text = "Incorrect Please Check Your Username  and Password";
        }
    }
}