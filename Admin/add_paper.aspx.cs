using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

public partial class Admin_add_paper : System.Web.UI.Page
{
    DataClassesDataContext dv = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        //**session
        try
        {
            if (Session["username"] == null && Session["password"] == null)
            {
                Response.Redirect("../Admin_Login.aspx");
            }
            else
            {
                Lbllogin.Text = "Welcome " + Session["username"].ToString();
            }
        }
        catch (Exception ex)
        {
            Lbllogin.Text = "not logged in with admin";

        }

        //session**

 }




    void get_jid()      //**j_id fetch from journal  table
  {
        try
        {
            string cs = ConfigurationManager.ConnectionStrings["Researcher_s_portalConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand comm = new SqlCommand("select * from journal where j_id=" + DropDowngetj_id.SelectedValue, con);
                SqlDataReader reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    txtjournal_id.Text = reader["j_id"].ToString();
                }

                con.Close();

                var tb = new DataTable();
                tb.Load(reader);


            };
        }
        catch
        {
            lbl_error.Text = " something went wrong in j_id";
        }
  }
    //j_id fetch from from journal  table**



    protected void btnadd_paper_Click1(object sender, EventArgs e)
    {

        string filename = FileUpload1.FileName;            //add files
        string filelocation = "../files/";
        string pathstring = System.IO.Path.Combine(filelocation, filename);

        try
        {
            research_paper r = new research_paper         //insertion of the data
            {
                Research_Name = txtpaperName.Text,
                keywords = txtkeywords.Text,
                Title = txtpapertitle.Text,
                Abstract_View = txtpaperabstract.Text,
                j_id = Convert.ToInt32(txtjournal_id.Text),
                paper_upload = pathstring,

            };
            dv.research_papers.InsertOnSubmit(r);
            dv.SubmitChanges();
            FileUpload1.SaveAs(MapPath(pathstring));

            txtpaperName.Text = " "; txtkeywords.Text = " "; txtpapertitle.Text = " "; txtpaperabstract.Text = " ";


        }
        catch (Exception ex)
        {
            lbl_error.Text = "wrongt data insertion";
        }

    }






    protected void DropDowngetj_id_SelectedIndexChanged(object sender, EventArgs e)
    {
        get_jid();
    }

   





    //end class bracket
}