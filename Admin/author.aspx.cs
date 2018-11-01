using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_author : System.Web.UI.Page
{
    DataClassesDataContext dv = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        //**session
        try
        {
            if (Session["username"] != null)
            {
                Lbllogin.Text = "Welcome " + Session["username"].ToString();
            }

        }
        catch (Exception ex)
        {
            Lblerror.Text = "problem occured in session cause you are not logged in with admin";
        }
    }
        //session**

    protected void btnauthor_Click(object sender, EventArgs e)
    {
        try
        {
            author a = new author                                   //insertion of the data
            {
                a_name = txtAuthorName.Text,
                a_country = txtcountry.Text,
                a_email = TxtAuthoremail.Text


            };
            dv.authors.InsertOnSubmit(a);
            dv.SubmitChanges();
            txtAuthorName.Text = " "; txtcountry.Text = " ";
            TxtAuthoremail.Text = "";
            DropDownListauthor.DataBind();


        }
        catch (Exception ex)
        {
            Lblerror.Text = "problem in insertion of data ";
        }
    }

    /*main author*/

  

        void get_rid()      //**r_id fetch from researchpaper  table
    {
        try
        {
            string cs = ConfigurationManager.ConnectionStrings["Researcher_s_portalConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand comm = new SqlCommand("select * from research_paper where r_id=" + DropDownListpaper.SelectedValue, con);
                SqlDataReader reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    Txtgetpaper_id.Text = reader["r_id"].ToString();
                }

                con.Close();

                var tb = new DataTable();
                tb.Load(reader);


            };
        }
        catch
        {
            Lblerror.Text = " something went wrong in r_id";
        }
    }
    //r_id fetch from from researchpaper  table**





    protected void DropDownListpaper_SelectedIndexChanged(object sender, EventArgs e)
    {
        get_rid();
        
    }



    void get_aid()      //*a_id fetch from author table
    {
        try
        {
            string cs = ConfigurationManager.ConnectionStrings["Researcher_s_portalConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand comm = new SqlCommand("select * from author where a_id=" +DropDownListauthor.SelectedValue, con);
                SqlDataReader reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    Txtcoauthor_id.Text = reader["a_id"].ToString();
                }

                con.Close();

                var tb = new DataTable();
                tb.Load(reader);


            };
        }
        catch
        {
            Lblerror.Text = " something went wrong in a_id";
        }
    }
    //a_id fetch from author  table**




    protected void DropDownListauthor_SelectedIndexChanged(object sender, EventArgs e)
    {
        get_aid();
    }




    protected void btnmainauthor_Click(object sender, EventArgs e)
    {
        research_paper_author ra = new research_paper_author        //insertion of table
        {
            a_id=Convert.ToInt32(Txtcoauthor_id.Text),
            r_id=Convert.ToInt32(Txtgetpaper_id.Text),
            is_mainauthor=Txtmainauthor.Text,
            main_author_country=Txtmainauthorcountry.Text


        };
        dv.research_paper_authors.InsertOnSubmit(ra);
        dv.SubmitChanges();
        Txtcoauthor_id.Text = " "; Txtgetpaper_id.Text = " "; Txtmainauthor.Text = " ";
        Txtmainauthorcountry.Text = " ";
   }











}