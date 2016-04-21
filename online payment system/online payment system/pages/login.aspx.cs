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
    public partial class login : System.Web.UI.Page
    {
        DataSet ds;
        SqlDataAdapter da;
       
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con;
           // SqlCommand cmd;

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Pay_onlineConnectionString1"].ConnectionString);
           
            con.Open();


            string checkuser = "select count(*) from Account_detail where Email_id='" + txt_email.Text + "'";
            SqlCommand cmd = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

           // da = new SqlDataAdapter("select count(*) from Admin where email_id='"+txt_email.Text+"'",con);

           // ds = new DataSet();
           // da.Fill(ds, "tbres");
           //string num = ds.Tables[0].Rows[0][0].ToString();


            
            con.Close();

           

            
            if (temp > 0)
            {
                con.Open();
                string CheckPasswordQuery = "select Password from Account_detail where Email_id='" + txt_email.Text + "'";
                SqlCommand passcomm = new SqlCommand(CheckPasswordQuery, con);
                string password = passcomm.ExecuteScalar().ToString();
                if (password == txt_pass.Text)
                {
                    
                    //Response.Write("Password is correct");
                    Session["pass"] = txt_pass.Text;
                    Session["email"] = txt_email.Text;
                    //Response.Redirect("Profile.aspx");
                    da = new SqlDataAdapter("select Acc_id from Account_detail where email_id='" + txt_email.Text + "' and Password='"+txt_pass.Text+"'" , con);

                    ds = new DataSet();
                    da.Fill(ds, "tbres");
                    Session["Accid"]= ds.Tables[0].Rows[0][0].ToString();
            
                   Response.Redirect("Payment.aspx");
                }
                else
                {
                    Response.Write("Password is incorrect");
                }
            }
            //else if(num == "1")
            //{
            //    con.Open();
            //    string CheckPasswordQuery = "select password from Admin where email_id='" + txt_email.Text + "'";
            //    SqlCommand passcomm = new SqlCommand(CheckPasswordQuery, con);
            //    string password = passcomm.ExecuteScalar().ToString();
            //    if(password==txt_pass.Text)
            //    {
            //        Session["pass"] = txt_pass.Text;
            //        Session["email"] = txt_email.Text;
            //        Response.Redirect("student account.aspx");
            //    }
            //    else
            //    {
            //        Response.Write("Password is incorrect");
            //    }
            //}
            else
            {
                Response.Write("Email is incorrect");
            }
            
        }
    }
}