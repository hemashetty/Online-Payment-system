using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_payment_system.pages
{
    public partial class update : System.Web.UI.Page
    {
        headsDataContext db = new headsDataContext();
        public string id, crs, sem, tut, sprt, other, exm, exfrm, amt, lib;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = txt_id.Text;
            crs = DropDownList_course.Text;
            sem = DropDownList_sem.Text;
            tut = txt_tution.Text;
            sprt = txt_sprt.Text;
            other = txt_other.Text;
            exm = txt_exam.Text;
            exfrm = txt_exfrm.Text;
            amt = txt_amnt.Text;
            lib = txt_lib.Text;

            if (Request.QueryString["id"] != null)
            {
                var qry = from m in db.Head_details
                          where m.Fee_id == Convert.ToInt32(Request.QueryString["id"].ToString ())
                          select m;
                foreach (var q in qry)
                {

                    txt_id.Text = Convert.ToString(q.Fee_id);
                    DropDownList_course.Text = q.Course;
                    txt_tution.Text = Convert.ToString(q.Tution_fee);
                    txt_sprt.Text = Convert.ToString(q.Sport_culture_fee);
                    txt_other.Text = Convert.ToString(q.Other_fee);
                    txt_exam.Text = Convert.ToString(q.Exam_fee);
                    txt_exfrm.Text = Convert.ToString(q.Exam_form_fee);
                    txt_amnt.Text = Convert.ToString(q.Amount);
                    txt_lib.Text = Convert.ToString(q.Library_fee);

                }

            }
        }

        protected void btn_upt_Click(object sender, EventArgs e)
        {
            Session["fid"] = id;
            Session["course"] = crs;
            Session["semtr"] = sem;
            Session["tuti"] = tut;
            Session["culsprt"] = sprt;
            Session["othr"] = other;
            Session["ex"] = exm;
            Session["exfrm"] = exfrm;
            Session["amnt"] = amt;
            Session["libr"] = lib;



            Response.Redirect("up_conf.aspx");
            db.SubmitChanges();
        }
    }
}