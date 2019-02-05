using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Publish : System.Web.UI.Page
{
    DataClassesDataContext dv = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {


    }





    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (Radiokeyword.Checked == true || RadioPubcharges.Checked==true || RadioISSN.Checked==true || Radiocategory.Checked==true || Radioimpactfactor.Checked==true || Radiopublicationtime.Checked==true) {

            var cust = from c in dv.Journals
                       join d in dv.journals_publications
                       on c.j_id equals d.j_id
                       join f in dv.categories
                       on c.c_id equals f.c_id
                       join g in dv.indexes
                       on c.index_id equals g.index_id
                       where d.Keyword.Contains(TextBox1.Text) ||   //keyword
                       c.ISSN.Contains(TextBox1.Text) ||           //issn
                       f.c_name.Contains(TextBox1.Text) ||           //category name  ex :springer etc
                       d.publication_time.Contains(TextBox1.Text) || //publication time ex :Biomonthly etc
                       d.publication_charges.Contains(TextBox1.Text) || //publication charges
                       c.Impact_factor.Contains(TextBox1.Text)           //search according to impact factor

                       select new { c.J_name, c.Impact_factor, c.citations, c.ISSN, g.index_name, d.publication_time, d.publication_charges, d.pub_Jou_Access, c.Publication_link };


            GridView1.DataSource = cust;
            GridView1.DataBind();
        }
        
        }
     
      


    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[9].Visible = false;                         //Gridview ke column ko hide karne ke lye .
    }
}