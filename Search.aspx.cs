using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Search : System.Web.UI.Page

{
    DataClassesDataContext dv = new DataClassesDataContext();
    string cs = ConfigurationManager.ConnectionStrings["Researcher_s_portalConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void Button1_Click1(object sender, EventArgs e)
    {
        search_Author();
        search_Title();
        search_Keyword();
        search_from_Emerald();
    }

    //search from Author and Main Author
    void search_Author()
    {
        if (RadioBtnauthor.Checked == true)
        {
            //Response.Redirect("search_Discription.aspx");
            using (SqlConnection con = new SqlConnection(cs))
            {

                var cust = from v in dv.authors
                           join d in dv.research_paper_authors
                           on v.a_id equals d.a_id
                           join e1 in dv.research_papers on d.r_id equals e1.r_id
                           where v.a_name.Contains(TextBox1.Text) || d.is_mainauthor.Contains(TextBox1.Text)
                           select new { v.a_name, d.is_mainauthor, e1.Title, };



                GridView1.DataSource = cust;
                GridView1.DataBind();



            }
        }
    }


    void search_Title()
    {
        if (RadioBtntitle.Checked == true)
        {
            var cust1 = from v in dv.research_papers
                        where v.Title.Contains(TextBox1.Text)
                        select new { v.Title, v.Research_Name,v.Abstract_View };

            GridView1.DataSource = cust1;
            GridView1.DataBind();
        }

    }

    void search_Keyword()
    {
        if (Radiobtnkeyword.Checked == true)
        {
            var cust2 = from v in dv.research_papers
                        where v.keywords.Contains(TextBox1.Text)
                        select new { v.Title, v.Research_Name, v.Abstract_View };

            GridView1.DataSource = cust2;
            GridView1.DataBind();
        }

    }

    void search_from_Emerald()
    {
        if (Radiobtnemerald.Checked == true)
        {
            var cust3 = from v in dv.Journals  join  d in dv.categories 
                        on v.c_id equals d.c_id join g in dv.research_papers
                        on  v.j_id  equals g.j_id
                        where d.c_name.Contains(TextBox1.Text)
                        select new {d.c_name,v.citations,v.Impact_factor,v.J_name,g.Research_Name,g.Title,g.Abstract_View,g.paper_upload};

            GridView1.DataSource = cust3;
            GridView1.DataBind();
        }

    }






}