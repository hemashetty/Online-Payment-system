using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_payment_system.pages
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_yes_Click(object sender, EventArgs e)
        {
            headsDataContext db = new headsDataContext();
            var qry = from m in db.Head_details
                      where m.Fee_id == Convert.ToInt32(Request.QueryString["id"].ToString())
                      select m;
            foreach (var q in qry )
            {
                db.Head_details.DeleteOnSubmit(q);
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