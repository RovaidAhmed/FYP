using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["Researcher_s_portalConnectionString"].ConnectionString;
    DataClassesDataContext dv = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {

        //Btnback.Visible = false;
        errormessage.Visible = false;
        lblsorting.Visible = false;
        DropDownList1.Visible = false;
      
        if (IsPostBack)
        {
            main_div.Visible = false;
            lblsorting.Visible = true;
            DropDownList1.Visible = true;
          

            //Btnback.Visible = true;
        }
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        //searching_keyword();
        publication_pubAccess_pubtime();
        pubchargessgreaterthen();
        lessimpactfactor();
        greaterimpactfactor();






    }



    ////void searching_keyword()
    ////{
    ////    var cust = from p in dv.Journals
    ////               join q in dv.journals_publications
    ////               on p.j_id equals q.j_id
    ////               join s in dv.indexes
    ////               on p.index_id equals s.index_id
    ////               where q.Keyword.Contains(Txtkeyword.Text) ||
    ////               p.ISSN.Contains(Txtissn.Text)
    ////               select new { p.J_name, p.Publication_link, q.Keyword, p.Impact_factor, p.ISSN, s.index_name, q.publication_time, q.publication_charges, q.pub_Jou_Access, };


    ////    Repeater1.DataSource = cust;
    ////    Repeater1.DataBind();
     

    ////}

    void publication_pubAccess_pubtime()
    {
        try
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                var query = "select * from Journal inner join journals_publication on Journal.j_id = journals_publication.j_id inner join dbo.[index] on Journal.index_id = dbo.[index].index_id where pub_Jou_Access ='" + Txtaccess.Text + "' OR publication_time='" + Txttime.Text + "' and index_name='" + Txtindex.Text + "'";
                SqlCommand com = new SqlCommand(query, con);
                con.Open();
                com.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(com);
                da.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
        catch(Exception ex)
        {
            Response.Write("record not found");
            errormessage.Visible = true;

        }
     }


    //greater pub charges
      void pubchargessgreaterthen()
    {
        if (RadioBtnchargesgreater.Checked==true )
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                var query = "select * from Journal inner join journals_publication on Journal.j_id = journals_publication.j_id inner join dbo.[index] on Journal.index_id = dbo.[index].index_id where publication_charges >='" + Txtpubcharges.Text + "%' And pub_Jou_Access ='" + Txtaccess.Text + "' And publication_time='" + Txttime.Text + "' OR index_name='" + Txtindex.Text + "'";
                SqlCommand com = new SqlCommand(query, con);
                con.Open();
                com.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(com);
                da.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
        else
        {
            errormessage.Visible = true;
        }

    }
    //greater pub charges

    //less pub charges
    void pubchargeslessthen()
    {
        if (RadioBtnchargesless.Checked == true)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                var query = "select * from Journal inner join journals_publication on Journal.j_id = journals_publication.j_id inner join dbo.[index] on Journal.index_id = dbo.[index].index_id where publication_charges <='" + Txtpubcharges.Text + "%' And pub_Jou_Access ='" + Txtaccess.Text + "' and publication_time='" + Txttime.Text + "' OR index_name='" + Txtindex.Text + "'";
                SqlCommand com = new SqlCommand(query, con);
                con.Open();
                com.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(com);
                da.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
        else
        {
            errormessage.Visible = true;
        }

    }
    //less pub charges

    //less impact factor
    void lessimpactfactor()
    {
        if (RadioBtnimpless.Checked == true)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                var query = "select * from Journal inner join journals_publication on Journal.j_id = journals_publication.j_id inner join dbo.[index] on Journal.index_id = dbo.[index].index_id where Impact_factor <='" + Txtimpactfactor.Text + "%' And pub_Jou_Access ='" + Txtaccess.Text + "' And publication_time='" + Txttime.Text + "' OR index_name='" + Txtindex.Text + "'";
                SqlCommand com = new SqlCommand(query, con);
                con.Open();
                com.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(com);
                da.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
        else
        {
            errormessage.Visible = true;
        }

    }
    //less impact factor

    //greater impact factor
    void greaterimpactfactor()
    {
        if (RadioBtnimpgreater.Checked == true)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                var query = "select * from Journal inner join journals_publication on Journal.j_id = journals_publication.j_id inner join dbo.[index] on Journal.index_id = dbo.[index].index_id where Impact_factor >='" + Txtimpactfactor.Text + "%' and pub_Jou_Access ='" + Txtaccess.Text + "' and publication_time='" + Txttime.Text + "' OR index_name='" + Txtindex.Text + "'";
                SqlCommand com = new SqlCommand(query, con);
                con.Open();
                com.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(com);
                da.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
        else
        {
            errormessage.Visible = true;
        }

    }
    //greater impact factor











    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "DESC")
        {
            using (SqlConnection con = new SqlConnection(cs))
            {

                var query = "select * from Journal inner join journals_publication on Journal.j_id = journals_publication.j_id inner join dbo.[index] on Journal.index_id = dbo.[index].index_id order by Impact_factor Desc ";
                SqlCommand com = new SqlCommand(query, con);
                con.Open();
                com.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(com);
                da.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }

        }
        if (DropDownList1.SelectedItem.Text == "ASC")
        {
            using (SqlConnection con = new SqlConnection(cs))
            {

                var query = "select * from Journal inner join journals_publication on Journal.j_id = journals_publication.j_id inner join dbo.[index] on Journal.index_id = dbo.[index].index_id order by Impact_factor Asc ";
                SqlCommand com = new SqlCommand(query, con);
                con.Open();
                com.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(com);
                da.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }

        }
    }
}






