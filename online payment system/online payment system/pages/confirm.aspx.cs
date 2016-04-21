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
    public partial class confirm : System.Web.UI.Page
    {
       SqlConnection con;
        SqlCommand cmd;
        DataSet ds;
        SqlDataAdapter da;
       
            
        protected void Page_Load(object sender, EventArgs e)
        {
             con = new SqlConnection(ConfigurationManager.ConnectionStrings["Pay_onlineConnectionString1"].ConnectionString);
            con.Open();
            
            
            Lbl_pnr.Text =  Session["pnr"].ToString();
            lbl_mob.Text = Session["mob"].ToString();
            lbl_mail.Text = Session["mail"].ToString();
            lbl_course.Text = Session["course"].ToString();
            lbl_sem.Text = Session["sem"].ToString();
            lbl_pass.Text = Session["pass"].ToString();

            //string pnr = Lbl_pnr.Text;
            //string course = lbl_course.Text;
            //string name;
            cmd = new SqlCommand("select Stud_name from Source where PNR_noForm_no='" + Lbl_pnr.Text + "' and Course='" + lbl_course.Text + "'", con);
            lbl_stud.Text = cmd.ExecuteScalar().ToString();


            //string CheckPasswordQuery = "select Stud_name from Source where PNR_noForm_no='" +Lbl_pnr.Text + "' and Course='"+lbl_course.Text+"'";
            //SqlCommand name = new SqlCommand(CheckPasswordQuery, con);
            //string stud_nm = name.ExecuteScalar().ToString();

         

        }

     

        protected void Button1_Click1(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select count(Acc_id)+1 from Account_detail", con);

            ds = new DataSet();
            da.Fill(ds, "tbres");
            string num = ds.Tables[0].Rows[0][0].ToString();
            

            //cmd = new SqlCommand("select count(Acc_id) from Account_detail", con);
            //int num = cmd.ExecuteNonQuery();
            //num = num + 1;
           // Guid newGUID = Guid.NewGuid();

           cmd = new SqlCommand("Insert into Account_detail (Acc_id,PRN_noForm_no,Stud_name,mobile_no,Email_id,Course,Sem,Password)values('"+num+"'," + Lbl_pnr.Text + ",'"+lbl_stud.Text+"', " + lbl_mob.Text + ",'" + lbl_mail.Text + "','" + lbl_course.Text + "'," + lbl_sem.Text + " ,'" + lbl_pass.Text+ "')", con);
          // cmd.Parameters.AddWithValue("@id", newGUID.ToString());
           cmd.ExecuteNonQuery();
           


           Response.Redirect("login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentDetail.aspx");
        }
    }
}