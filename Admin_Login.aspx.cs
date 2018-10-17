using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_Login : System.Web.UI.Page
{

    DataClassesDataContext dv = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnsignup_Click(object sender, EventArgs e)
    {
        //signup admin
        admin a = new admin
        {
            ad_email=Txtsignupemail.Text,
            ad_name=Txtsignupuser.Text,
            ad_pass=Txtsignuppass.Text

        };
        dv.admins.InsertOnSubmit(a);
        dv.SubmitChanges();
        Txtsignupuser.Text = " ";
        Txtsignuppass.Text = " ";
        Txtsignupemail.Text = " ";
         

        //signup admin
    }

    protected void btnsignin_Click(object sender, EventArgs e)
    {

        
        //compare
        var check = from c in dv.admins
                   where c.ad_name==Txtusername.Text &&
                   c.ad_pass==Txtpassword.Text
                   select c;


        if (check.Any())
        {

           
            Lblcheck.Text = "success";
            Session["username"] = Txtusername.Text;
            Session["password"] = Txtpassword.Text;
            Response.Redirect("./Admin/journal.aspx");
        }




        else
        {

            Lblcheck.Text = "Please check again";
          


        } //compare 





    }
}