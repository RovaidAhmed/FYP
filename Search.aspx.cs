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

   

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (RadioBtnauthor.Checked == true)
        {
            //Response.Redirect("search_Discription.aspx");
          using(SqlConnection con = new SqlConnection(cs))
            {
                string sear = "SELECT author.a_name , author.a_id ,research_paper_author.is_mainauthor,research_paper_author.a_id FROM author INNER JOIN research_paper_author ON research_paper_author.a_id = author.a_id where author.a_name like ('%"+TextBox1.Text+"%')";

                string search = "select * from author where a_name like '"+TextBox1.Text+"'";
                var cust = from v in dv.authors join d in dv.research_paper_authors
                           on v.a_id equals d.a_id
                           where  v.a_name==(TextBox1.Text.Trim()) 
                           select new {v.a_name,v.a_id,d.is_mainauthor};

              

                GridView1.DataSource =cust;
                GridView1.DataBind();
                           


            }
                      
        }
    }
}