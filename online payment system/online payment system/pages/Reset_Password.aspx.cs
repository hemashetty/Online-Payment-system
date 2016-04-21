using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace online_payment_system.pages
{
    public partial class Reset_Password : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Pay_onlineConnectionString"].ConnectionString);
            con.Open();
            Label2.Text = Request.QueryString["uid"];
            cmd = new SqlCommand("select UserId from ResetPassword where Id='" + Label2.Text + "' ", con);


            Label3.Text = cmd.ExecuteScalar().ToString();

           // if(Label2.Text == Label3.Text)
           // {

           // }
           // else
           // {
           //     Response.Redirect("Forgot_password.aspx");
           // }
         
             
            
        }

        protected void btn_rstp_Click(object sender, EventArgs e)
        {

            cmd = new SqlCommand("Update Account_detail set Password='" + txt_passw.Text + "' where Acc_id='"+Label3.Text+"'", con);
            
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("Delete from ResetPassword where UserId='"+Label3.Text+"'",con);
            cmd.ExecuteNonQuery();
            Label1.Text = "Password changed Succeful";
            Response.Redirect("login.aspx");
        }

        
        
    }
}