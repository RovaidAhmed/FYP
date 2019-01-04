using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_publication : System.Web.UI.Page
{
    DataClassesDataContext dv = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        journals_publication j = new journals_publication
        {
           publication_charges=Txtpubcharges.Text,
           publication_time=Txtpublicationtime.Text,
           Keyword=Txtkeyword.Text,
           pub_Jou_Access=Txtjournalaccess.Text
          

        };
        dv.journals_publications.InsertOnSubmit(j);

     
        dv.SubmitChanges();
   
          

    }




    void get_jid()      //**j_id fetch from journal  table
    {
        try
        {
            string cs = ConfigurationManager.ConnectionStrings["Researcher_s_portalConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand comm = new SqlCommand("select * from journal where j_id=" + DropDownjname.SelectedValue, con);
                SqlDataReader reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    Txtjid.Text = reader["j_id"].ToString();
                }

                con.Close();

                var tb = new DataTable();
                tb.Load(reader);


            };
        }
        catch
        {
            Lblerror.Text = " something went wrong in j_id";
        }
    }
    //j_id fetch from from journal  table**



    protected void DropDownjname_SelectedIndexChanged(object sender, EventArgs e)
    {
        get_jid();
    }
}