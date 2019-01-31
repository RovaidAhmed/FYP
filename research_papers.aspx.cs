using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Search_Discription : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        get_data();
    }

    void get_data()
    {

        string cs = ConfigurationManager.ConnectionStrings["Researcher_s_portalConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            var query = "select distinct *from research_paper inner join research_paper_author on research_paper_author.r_id = research_paper.r_id inner join author on author.a_id = research_paper_author.a_id";
            SqlCommand com = new SqlCommand(query, con);
            con.Open();
            com.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(dt);
            Repeaterlist.DataSource = dt;
            Repeaterlist.DataBind();
            con.Close();
        }


    }
    


    }