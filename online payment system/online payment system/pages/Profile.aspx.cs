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
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str;
       
        DataSet ds;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Pay_onlineConnectionString"].ConnectionString);
            con.Open();

            str = "select Stud_name,PRN_noForm_no from Account_detail";
            da = new SqlDataAdapter(str, con);
            ds = new DataSet();
            da.Fill(ds, "acc");
            lbl_eid.Text = Session["email"].ToString();
            Label1.Text = Session["pass"].ToString();
            lbl_eid.Visible = true;

            da = new SqlDataAdapter("select Stud_name,PRN_noForm_no,Mobile_no,Acc_id from Account_detail where Email_id='" + lbl_eid.Text + "' and Password='"+Label1.Text+"'", con);
            ds = new DataSet();
            da.Fill(ds, "tbres");
            lbl_name.Text = ds.Tables[0].Rows[0][0].ToString();
            lbl_pnr.Text = ds.Tables[0].Rows[0][1].ToString();
            lbl_phno.Text= ds.Tables[0].Rows[0][2].ToString();
            Session["aci"] = ds.Tables[0].Rows[0][3].ToString();

            lbl_phno.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lbl_crnt.Visible = true;
            lbl_npas.Visible = true;
            lbl_confpas.Visible = true;
            txt_cur.Visible = true;
            txt_npas.Visible = true;
            txt_cnfpas.Visible = true;
            btn_cnf.Visible = true;
        }

        protected void btn_cnf_Click(object sender, EventArgs e)
        {
            if (txt_cur.Text == Label1.Text)
            {
                cmd = new SqlCommand("Update Account_detail set Password='" + txt_npas.Text + "' where Acc_id='" + Session["aci"] + "'", con);

                cmd.ExecuteNonQuery();
                txt_cur.Visible = false;
                txt_npas.Visible = false;
                txt_cnfpas.Visible = false;

                btn_cnf.Visible = false;
                Label3.Text = "Password is changed successfully!";
                Label3.Visible = true;
                lbl_crnt.Visible = false;
                lbl_npas.Visible = false;
                lbl_confpas.Visible = false;
            }
            else
            {
                txt_cur.Visible = false;
                txt_npas.Visible = false;
                txt_cnfpas.Visible = false;
                
                btn_cnf.Visible = false;
                Label3.Text = "Current password is incorrect!";
                Label3.Visible = true;
            }
        }

        protected void btn_ueid_Click(object sender, EventArgs e)
        {
            txt_eid.Visible = true;
            btn_cheid.Visible = true;
            lbl_eid.Visible = false;
        }

        protected void btn_cheid_Click(object sender, EventArgs e)
        {
            if(!string.IsNullOrEmpty(txt_eid.Text))
            {
                cmd = new SqlCommand("Update Account_detail set Email_id='" + txt_eid.Text + "' where Acc_id='" + Session["aci"] + "'", con);

                cmd.ExecuteNonQuery();
                lbl_eid.Text = txt_eid.Text;
                lbl_eid.Visible = true;
                txt_eid.Visible = false;
                btn_cheid.Visible = false;
            }
            else
            {
                lbl_notifimail.Text = "*Please enter the email address";
                lbl_notifimail.Visible = true;

            }
            
           
        }

        protected void btn_uph_Click(object sender, EventArgs e)
        {
            txt_phn.Visible = true;
            btn_chph.Visible = true;
            lbl_phno.Visible = false;
        }

        protected void btn_chph_Click(object sender, EventArgs e)
        {
            if(txt_npas.Text!="")
            {
                cmd = new SqlCommand("Update Account_detail set Mobile_no=" + txt_phn.Text + " where Acc_id='" + Session["aci"] + "'", con);

                cmd.ExecuteNonQuery();
                lbl_phno.Text = txt_phn.Text;
                lbl_phno.Visible = true;

                txt_phn.Visible = false;
                btn_chph.Visible = false;
            }
            else
            {
                lbl_notifiph.Text = "*Please enter valid phone number";
                lbl_notifiph.Visible = true;
            }
            
        }

       

           
            //   com = new SqlCommand(str, con);
            //SqlDataReader reader = com.ExecuteReader();
            // reader.Read();
            //lbl_name.Text = reader["Stud_name"].ToString();
       
            
            //cmd = new SqlCommand("select Stud_name from Account_detail wehere Password='" + Label1.Text + "' and Email_id='" + Label2.Text + "'", con);
            //lbl_name .Text = cmd.ExecuteScalar().ToString();
            



             

        
    }
}