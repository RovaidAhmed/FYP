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
        //session**
        load_grid();
   }
   
    void load_grid()
    {
        var query = from c in dv.authors join d in dv.research_paper_authors
                    on c.a_id equals d.a_id
                    join e in dv.research_papers
                    on  d.r_id equals e.r_id
                    
                    
         select new {c.a_name ,c.a_country ,d.is_mainauthor,d.main_author_country , e.research_name ,e.title};
        GridViewauthor_details.DataSource = query;
        GridViewauthor_details.DataBind();
    }



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
                SqlCommand comm = new SqlCommand("select * from author where a_id=" + DropDownListauthor.SelectedValue, con);
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




    protected void Button1_Click(object sender, EventArgs e)
    {
      
            try
            {
                research_paper_author p = new research_paper_author             //is_main_author
                {
                    a_id = Convert.ToInt32(Txtcoauthor_id.Text),
                    r_id = Convert.ToInt32(Txtgetpaper_id.Text),
                    is_mainauthor = Txtmainauthor.Text,
                    main_author_country = Txtmainauthorcountry.Text

                };
                dv.research_paper_authors.InsertOnSubmit(p);
                dv.SubmitChanges();
                Txtcoauthor_id.Text = " "; Txtgetpaper_id.Text = " "; Txtmainauthor.Text = " "; Txtmainauthorcountry.Text = " ";
                Response.Redirect("author.aspx");
                  load_grid();

            }
            catch (Exception ex)
            {
                Lblerror.Text = "insertion in table main author";
            }
        
        Txtcoauthor_id.Text = " "; Txtgetpaper_id.Text = " "; Txtmainauthor.Text = " ";
        Txtmainauthorcountry.Text = " ";

    }





    protected void Btnauthor_Click(object sender, EventArgs e)
    {
        try
        {
            if (Btnauthor.Enabled)
            {
                author a = new author
                {
                    a_country = txtcountry.Text,
                    a_name = txtAuthorName.Text,
                    a_email = TxtAuthoremail.Text

                };
                dv.authors.InsertOnSubmit(a);
                dv.SubmitChanges();
                txtAuthorName.Text = " ";
                TxtAuthoremail.Text = " ";
                txtcountry.Text = " ";
                Response.Redirect("author.aspx");
                DropDownListauthor.DataBind();
                load_grid();

            }
        }
        catch(Exception ex)
        {
            Lblerror.Text = "something problem with data insertion";
        }
        
    }
}