using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_rovaid : System.Web.UI.Page
{
    DataClassesDataContext dv = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        try {
            if (Session["username"] != null)
            {
                Lbllogin.Text ="Welcome " +Session["username"].ToString();
            }
            

            //fetch admin id from session whose login
            var adName = dv.admins.First(c => c.ad_name == Session["username"].ToString());
            var adID = adName.ad_id;
            txtAdminID.Text = adID.ToString();
        }
        catch(Exception ex)
        {
            lbldataiscorrect_or_not.Text = "problem occured in session cause you are not logged in with admin";
        }
  }
     

    protected void btnjournal_Click(object sender, EventArgs e)
    {

        try   //insertion in journal
        {

           Journal j = new Journal
            {
                J_name = txtjname.Text,
                YOP = Convert.ToInt32(Txtdop.Text),
                Impact_factor = Txtimpactfactor.Text,
                Publication_link = Txtpublication.Text,
                citations = Txtcitations.Text,
                c_id = Convert.ToInt32(Txtcategory.Text),
                ad_id = Convert.ToInt32(txtAdminID.Text),
                index_id = Convert.ToInt32(txtindexid.Text)

            };
            dv.Journals.InsertOnSubmit(j);
            get_cid();
            dv.SubmitChanges();
            txtjname.Text = " "; Txtdop.Text = " ";Txtimpactfactor.Text = " ";Txtpublication.Text = " ";
            Txtcitations.Text = " ";Txtcategory.Text = " "; txtAdminID.Text = " ";txtindexid.Text = " ";
            }
        catch
        {
            lbldataiscorrect_or_not.Text = "problem occured cause of wrong data insertion";
         }
       
 }


    protected void Btnaddnewindex_Click(object sender, EventArgs e)
    {
        //insertion in Index table
        index i = new index
        {                                             
            index_name=Txtaddnewindex.Text
        };
        dv.indexes.InsertOnSubmit(i);
        dv.SubmitChanges();
        Txtaddnewindex.Text = " ";
    }

    protected void Btnaddcategory_Click(object sender, EventArgs e)
    {
        //insertion in category table
        category c1 = new category
        {
            c_name = Txtaddnewcategory.Text
        };
        dv.categories.InsertOnSubmit(c1);
        DropDownList1.DataBind();
        dv.SubmitChanges();
        Txtaddnewcategory.Text = " ";
    }


    void get_cid()      //**cid fetch from category  table
 {
        try
        {  
           string cs = ConfigurationManager.ConnectionStrings["Researcher_s_portalConnectionString"].ConnectionString;
             using (SqlConnection con = new SqlConnection(cs))
             {
                con.Open();
                SqlCommand comm = new SqlCommand("select * from category where c_id=" + DropDownList1.SelectedValue, con);
                SqlDataReader reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    Txtcategory.Text = reader["c_id"].ToString();
                }

                con.Close();

                var tb = new DataTable();
                tb.Load(reader);
           
          
             };
        }
        catch
        {
            lbldataiscorrect_or_not.Text = " something went wrong in c_id";
        }
    } //cid fetch from category  table**

    //**get index_id

    void get_index_id()
    {
        try      
        {

            string cs = ConfigurationManager.ConnectionStrings["Researcher_s_portalConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand comm = new SqlCommand("select * from dbo.[index] where index_id=" + DropDownindex.SelectedValue, con);
                SqlDataReader reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    txtindexid.Text = reader["index_id"].ToString();
                }

                con.Close();

                var tb = new DataTable();
                tb.Load(reader);
            };
        }
        catch
        {
            lbldataiscorrect_or_not.Text = "Index_id problem";
        }
    }

    //get index_id**

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       get_cid();    
    }


    protected void DropDownindex_SelectedIndexChanged(object sender, EventArgs e)
  {
        get_index_id();
  }
   











































//class end

    }
