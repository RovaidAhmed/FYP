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

    protected void Button1_Click(object sender, EventArgs e)
    {
        var cust = from p in dv.Journals
                   join q in dv.journals_publications
                   on p.j_id equals q.j_id
                   join s in dv.indexes
                   on p.index_id equals s.index_id
                   where q.Keyword.Contains(Txtkeyword.Text)
                   select new { p.J_name, p.Impact_factor, p.citations, p.ISSN, s.index_name, q.publication_time, q.publication_charges, q.pub_Jou_Access, };

        GridView1.DataSource = cust;
        GridView1.DataBind();
        main_div.Visible = false;
        GridView1.Visible = true;
    }
}