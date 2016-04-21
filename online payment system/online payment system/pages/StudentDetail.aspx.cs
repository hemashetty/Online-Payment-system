using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace online_payment_system.pages
{
    public partial class StudentDetail : System.Web.UI.Page
    {
       /* SqlConnection con;
        SqlCommand cmd;
        string str;*/
        protected void Page_Load(object sender, EventArgs e)
        {
            /* con = new SqlConnection(ConfigurationManager.ConnectionStrings["Pay_onlineConnectionString"].ConnectionString);
            con.Open();
            Label1.Text = "success";
            Label1.Visible = true;
            str = "select * from Account_detail"; */
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           /* Guid newGUID = Guid.NewGuid();

            cmd = new SqlCommand("Insert into Account_detail (Acc_id,PRN_noForm_no,mobile_no,Email_id,Course,Sem,Password)values(@id," + txt_pnr.Text + ", " + txt_mob.Text + ",'" + txt_email.Text + "','" + drop_course.Text + "'," + DropDownList_sem.Text + " ,'" + txt_pass.Text+ "')", con);
            cmd.Parameters.AddWithValue("@id", newGUID.ToString());
            cmd.ExecuteNonQuery();
            Label1.Text = "inserted";
            cmd = new SqlCommand(str, con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            Label2.Text = reader["Email_id"].ToString();
            reader.Close();*/

            Session["pnr"] = txt_pnr.Text;
            Session["mob"] = txt_mob.Text;
            Session["mail"] = txt_email.Text;
            Session["course"] = drop_course.SelectedItem; 
            Session["sem"] = DropDownList_sem.SelectedIndex; 
            Session["pass"] = txt_pass.Text;
            Response.Redirect("confirm.aspx");

             
    
        }

       

        
    }
}