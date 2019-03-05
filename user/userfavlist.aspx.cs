using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;

public partial class user_userfavlist : System.Web.UI.Page
{
    DataClassesDataContext dv = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
       

        //**session
        if (Session["uname"] == null && Session["upass"]==null)
            {
                Response.Redirect("../userloginform.aspx");
            }
            else
            {
                Lbllogin.Text = "Welcome " + Session["uname"].ToString();
             
            }

        var adName = dv.users.First(c => c.u_name == Session["uname"].ToString());
        var adID = adName.u_id;
        Txtuid.Text = adID.ToString();      //fetch user id ;

    }


    protected void Btnlogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("../userloginform.aspx");
    }








    protected void Btnaddfav_Click(object sender, EventArgs e)
    {
        try
        {
            favourite_list fav = new favourite_list

            {
                j_id = Convert.ToInt32(Txtjid.Text),
                u_id = Convert.ToInt32(Txtuid.Text),

            };
            dv.favourite_lists.InsertOnSubmit(fav);



            //check if already in your favourite list

            var cust = from c in dv.favourite_lists
                       where c.u_id == Convert.ToInt32(Txtuid.Text) &&
                       c.j_id == Convert.ToInt32(Txtjid.Text)
                       select c;



            if (cust.Any())
            {

                Label1.Text = "Already! in Favourite List";

            }




            else
            {
                dv.SubmitChanges();
                Txtjid.Text = " ";
                string script = "alert('Successfully Added To Your Favourite List');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
            }
        }
        catch(Exception ex)
        {
            Label3.Text = "something went wrong";
        }

    }

}