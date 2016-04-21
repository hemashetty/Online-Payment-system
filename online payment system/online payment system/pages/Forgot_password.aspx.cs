﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace online_payment_system.pages
{
    public partial class Forgot_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_rst_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["Pay_onlineConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("resetPasswordrequest", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramEmail = new SqlParameter("@email", txt_email.Text);

                cmd.Parameters.Add(paramEmail);

                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    if (Convert.ToBoolean(rdr["ReturnCode"]))
                    {
                        SendPasswordResetEmail(rdr["Stud_name"].ToString(), txt_email.Text, rdr["UniqueId"].ToString());
                       
                        Label1.Text = "An email with instructions to reset your password is sent to your registered email";
                        Label1.Visible = true;
                        txt_email.Visible = false;
                        lbl_add.Visible = false;
                        btn_rst.Visible = false;
                    }
                    else
                    {
                        
                        Label1.ForeColor = System.Drawing.Color.Red;
                        Label1.Text = "Email is not found!";
                        Label1.Visible = true;

                       
                    }
                }
            }
        }
        private void SendPasswordResetEmail(string UserName, string ToEmail, string UniqueId)
        {
            // MailMessage class is present is System.Net.Mail namespace
            MailMessage mailMessage = new MailMessage("hemapadisetty@gmail.com", ToEmail);


            // StringBuilder class is present in System.Text namespace
            StringBuilder sbEmailBody = new StringBuilder();
            sbEmailBody.Append("Dear " + UserName + ",<br/><br/>");
            sbEmailBody.Append("Please click on the following link to reset your password");
            //sbEmailBody.Append("<br/>"); sbEmailBody.Append("http://localhost/online payment system/pages/Reset_Password.aspx?uid=" + UniqueId);
            sbEmailBody.Append("<br/>"); sbEmailBody.Append("http://localhost/online payment system/pages/Reset_Password.aspx?uid=" + UniqueId);
            sbEmailBody.Append("<br/><br/>");
            sbEmailBody.Append("<b>KSKV Kachchh university</b>");

            mailMessage.IsBodyHtml = true;

            mailMessage.Body = sbEmailBody.ToString();
            mailMessage.Subject = "Reset Your Password";
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                //UserName = "hemapadisetty@gmail.com",
                //Password = "#em@devi13121992"

                UserName = "shettysatya12@gmail.com",
                Password = "veni@143"
            };

            smtpClient.EnableSsl = true;
            smtpClient.Send(mailMessage);
        }
    }
}