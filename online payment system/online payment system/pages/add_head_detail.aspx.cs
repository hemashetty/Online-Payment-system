using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_payment_system.pages
{
    public partial class add_head_detail : System.Web.UI.Page
    {
        
        
        //public string id,crs,sem,tut,sprt,other,exm,exfrm,amt,lib;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //id = txt_id.Text;
            //crs = DropDownList_course.Text;
            //sem = DropDownList_sem.Text;
            //tut = txt_tution.Text;
            //sprt = txt_sprt.Text;
            //other = txt_other.Text;
            //exm = txt_exam.Text;
            //exfrm = txt_exfrm.Text;
            //amt = txt_amnt.Text;
            //lib = txt_lib.Text;

            //if (Request.QueryString["head_id"] != null)
            //{
            //    var qry = from m in db.Head_details
            //              where m.Fee_id == Convert.ToInt32(Request.QueryString["Fee_id"])
            //              select m;
            //    foreach (var q in qry)
            //    {

            //        txt_id.Text = Convert.ToString(q.Fee_id);
            //        DropDownList_course.Text = q.Course;
            //        txt_tution.Text = Convert.ToString(q.Tution_fee);
            //        txt_sprt.Text = Convert.ToString(q.Sport_culture_fee);
            //        txt_other.Text = Convert.ToString(q.Other_fee);
            //        txt_exam.Text = Convert.ToString(q.Other_fee);
            //        txt_amnt.Text = Convert.ToString(q.Amount);
            //        txt_lib.Text = Convert.ToString(q.Library_fee);

            //    }

            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Session["total"] = (Convert.ToInt32(txt_tution.Text) + Convert.ToInt32(txt_sprt.Text) + Convert.ToInt32(txt_other.Text) + Convert.ToInt32(txt_exfrm.Text) + Convert.ToInt32(txt_exam.Text) + Convert.ToInt32(txt_lib.Text));
            txt_amnt.Text = Session["total"].ToString();


           headsDataContext db = new headsDataContext ();
            Head_detail hd = new Head_detail();
            hd.Fee_id = Convert.ToInt32(txt_id.Text);
            hd.Course = DropDownList_course.Text;
            hd.sem =  Convert .ToByte(DropDownList_sem.Text);
            hd.Tution_fee = Convert.ToDecimal(txt_tution.Text);
            hd.Sport_culture_fee = Convert.ToDecimal(txt_sprt.Text);
            hd.Other_fee = Convert.ToDecimal(txt_other.Text);
            hd.Exam_fee = Convert.ToDecimal(txt_exam.Text);
            hd.Exam_form_fee = Convert.ToDecimal(txt_exfrm.Text);
            hd.Amount = Convert.ToDecimal(txt_amnt.Text);
            hd.Library_fee = Convert.ToDecimal(txt_lib.Text);
            db.Head_details.InsertOnSubmit(hd);
            
      
            db.SubmitChanges();
            Response.Redirect("heads.aspx");
        }

        protected void btn_upt_Click(object sender, EventArgs e)
        {
            //Session["fid"] = id;
            //Session["course"] = crs;
            //Session["semtr"] = sem;
            //Session["tuti"] = tut;
            //Session["culsprt"] = sprt;
            //Session["othr"] = other;
            //Session["ex"] = exm;
            //Session["exfrm"] = exfrm;
            //Session["amnt"] = amt;
            //Session["libr"] = lib;

          

            //Response.Redirect("up_conf.aspx");
            //db.SubmitChanges();
            txt_tution.Text = "";
            txt_exam.Text = "";
            txt_exfrm.Text = "";
            txt_lib.Text = "";
            txt_other.Text = "";
            txt_id.Text = "";
            txt_sprt.Text = "";
            txt_amnt.Text = "";

        }
    }
}