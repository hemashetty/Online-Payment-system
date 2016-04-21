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
    public partial class settings : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_pas_Click(object sender, EventArgs e)
        {
            lbl_cpas.Visible = true;
            lbl_npas.Visible = true;
            lbl_cnfrm.Visible = true;
            txt_cpas.Visible = true;
            txt_npas.Visible = true;
            txt_cnfpas.Visible = true;
            btn_update.Visible = true;
            btn_cancel.Visible = true;

        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            
            string pass = Session["pass"].ToString();
            
            if(pass==txt_cpas.Text)
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["Pay_onlineConnectionString"].ConnectionString);
                con.Open();
               SqlCommand cmd = new SqlCommand("Update Admin set password='"+txt_npas.Text+"'", con);

                cmd.ExecuteNonQuery();
                lbl_cpas.Visible = false;
                lbl_npas.Visible = false;
                lbl_cnfrm.Visible = false;
                txt_cpas.Visible = false;
                txt_npas.Visible = false;
                txt_cnfpas.Visible = false;
                btn_update.Visible = false;
                btn_cancel.Visible = false;
                
            }

            
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            lbl_cpas.Visible = false;
            lbl_npas.Visible = false;
            lbl_cnfrm.Visible = false;
            txt_cpas.Visible = false;
            txt_npas.Visible = false;
            txt_cnfpas.Visible = false;
            btn_update.Visible = false;
            btn_cancel.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lbl_emid.Visible = true;
            lbl_cnfemail.Visible = true;
            txt_cnfemail.Visible = true;
            txt_emaiid.Visible = true;
            btn_chemail.Visible = true;
            btn_emcancel.Visible = true;
        }

        protected void btn_chemail_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Pay_onlineConnectionString"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("Update Admin set email_id='" +txt_emaiid.Text + "'", con);
            cmd.ExecuteNonQuery();

            lbl_emid.Visible = false;
            lbl_cnfemail.Visible = false;
            txt_cnfemail.Visible = false;
            txt_emaiid.Visible = false;
            btn_chemail.Visible = false;
            btn_emcancel.Visible = false;
            

        }

        protected void btn_emcancel_Click(object sender, EventArgs e)
        {
            lbl_emid.Visible = false;
            lbl_cnfemail.Visible = false;
            txt_cnfemail.Visible = false;
            txt_emaiid.Visible = false;
            btn_chemail.Visible = false;
            btn_emcancel.Visible = false;
        }
    }
}