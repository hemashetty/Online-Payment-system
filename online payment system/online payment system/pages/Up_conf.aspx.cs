using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_payment_system.pages
{
    public partial class Up_conf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        headsDataContext db = new headsDataContext();
        protected void Button1_Click(object sender, EventArgs e)
        {
            var qry = (from m in db.Head_details 
                       where m.Fee_id == Convert.ToInt32(Session["fid"])
                       select m);
            foreach (var q in qry)
            {
                    q.Fee_id = Convert .ToInt32(Session["fid"] );
                     q.Course =Session["course"].ToString() ; 
                     q.sem =Convert.ToByte  (Session["semtr"]);
                     q.Tution_fee =Convert .ToDecimal (Session["tuti"]) ; 
                     q.Sport_culture_fee =Convert .ToDecimal(Session["culsprt"]) ;
                     q.Other_fee =Convert .ToDecimal(Session["othr"] );
                     q.Exam_fee=Convert .ToDecimal (Session["ex"] );
                     q.Exam_form_fee=Convert.ToDecimal (Session["exfrm"] );
                     q.Amount=Convert .ToDecimal (Session["amnt"] );
                     q.Library_fee = Convert.ToDecimal(Session["libr"]);



            }
            db.SubmitChanges();
            Response.Redirect("heads.aspx");

        }

        protected void btn_no_Click(object sender, EventArgs e)
        {
            Response.Redirect("heads.aspx");
        }
    }
}