using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace online_payment_system.pages
{
    public partial class Histroy : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str;

        DataSet ds;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            //con = new SqlConnection(ConfigurationManager.ConnectionStrings["Pay_onlineConnectionString"].ConnectionString);
            //con.Open();

            //str = "select Stud_name,PRN_noForm_no from Account_detail";
            //da = new SqlDataAdapter(str, con);
            //ds = new DataSet();
            //da.Fill(ds, "acc");

           
            

           
           
        }

        
       

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    try
        //    {

        //        con = new SqlConnection(ConfigurationManager.ConnectionStrings["Pay_onlineConnectionString"].ConnectionString);//connection name

        //        con.Open();
   
        //        da = new SqlDataAdapter("select *from Fees_detail where Acc_id='" + Session["Accid"] + "'", con);
        //        ds = new DataSet();
        //        da.Fill(ds, "ss");
        //        GridView1.DataSource = ds.Tables[0];
        //        GridView1.DataBind();         
        //    }
        //    catch
        //    {
        //        Label1.Text = "No record has found";
        //    }

        //}

       

        
    }
}