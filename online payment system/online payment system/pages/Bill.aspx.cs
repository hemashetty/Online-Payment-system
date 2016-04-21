using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_payment_system.pages
{
    public partial class Bill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["exmtype"] == "Exam Fee")
            {
                lbl_exm.Text = Session["exm"].ToString();
                lbl_exm.Visible = true;
                lbl_amt.Text = Session["exm"].ToString();
                lbl_amt.Visible = true;
                Label19.Visible = true;

                lbl_nm.Text = Session["name"].ToString();
                lbl_crs.Text = Session["Crse"].ToString();
                lbl_sem.Text = Session["sem"].ToString();
                lbl_recpt.Text = Session["rec"].ToString();
                lbl_date.Text = Session["time"].ToString();

            }

            else
            {
                lbl_nm.Text = Session["name"].ToString();
                lbl_crs.Text = Session["Crse"].ToString();
                lbl_sem.Text = Session["sem"].ToString();
                lbl_recpt.Text = Session["rec"].ToString();
                lbl_date.Text = Session["time"].ToString();

                lbl_tut.Text = Session["tut"].ToString();
                lbl_lib.Text = Session["lib"].ToString();
                lbl_sprt.Text = Session["sprt"].ToString();
                lbl_othr.Text = Session["othr"].ToString();
                lbl_exm.Text = Session["exm"].ToString();
                lbl_exfrm.Text = Session["exmfrm"].ToString();
                lbl_amt.Text = Session["amt"].ToString();

                lbl_tut.Visible = true;
                lbl_lib.Visible = true;
                lbl_sprt.Visible = true;
                lbl_othr.Visible = true;
                lbl_exm.Visible = true;
                lbl_exfrm.Visible = true;
                lbl_amt.Visible = true;

                Label3.Visible = true;
                Label16.Visible = true;
                Label17.Visible = true;
                Label18.Visible = true;
                Label19.Visible = true;
                Label20.Visible = true;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        

        
        
    }
}