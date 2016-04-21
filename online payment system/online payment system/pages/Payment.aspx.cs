using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Text;
namespace online_payment_system.pages
{
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str;
        
        DataSet ds;
        SqlDataAdapter da;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Pay_onlineConnectionString1"].ConnectionString);
            con.Open();

            str = "select Stud_name,PRN_noForm_no from Account_detail";
            da = new SqlDataAdapter(str, con);
            ds = new DataSet();
            da.Fill(ds, "acc");
            Label2.Text = Session["email"].ToString();
            Label1.Text = Session["pass"].ToString();
            //da = new SqlDataAdapter("select Stud_name,PRN_noForm_no,Course from Account_detail where Email_id='" + Label2.Text + "' and Password='" + Label1.Text + "'", con);
            da = new SqlDataAdapter("select Stud_name,PRN_noForm_no,Course from Account_detail where Email_id='" + Label2.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds, "tbres");
           lbl_std_nm.Text = ds.Tables[0].Rows[0][0].ToString();
            lbl_pnr.Text = ds.Tables[0].Rows[0][1].ToString();
            lbl_crs.Text = ds.Tables[0].Rows[0][2].ToString();

           
            Session["sem"] = DropDownList2.SelectedValue.ToString();
            Session["type"] = DropDownList1.SelectedValue.ToString();
            if (DropDownList1.Text == "Semester Fee")
            {
                da = new SqlDataAdapter("select Amount from Head_detail where sem='" + Session["sem"] + "' and Course='" + lbl_crs.Text + "'", con);

                ds = new DataSet();
                da.Fill(ds, "tbres");
                txt_fee.Text = ds.Tables[0].Rows[0][0].ToString();

                
            }
            if (DropDownList1.Text == "Exam Fee")
            {
                da = new SqlDataAdapter("select Exam_fee from Head_detail where sem='" + Session["sem"] + "' and Course='" + lbl_crs.Text + "'", con);

                ds = new DataSet();
                da.Fill(ds, "tbres");
                txt_fee.Text = ds.Tables[0].Rows[0][0].ToString();

                //da = new SqlDataAdapter("select Exam_fee,Exam_form_fee from Head_detail where Course='" + Session["Crse"] + "' and sem=" + Session["sem"] + " ", con);
                //ds = new DataSet();
                //da.Fill(ds, "tbres");
                //Session["exm"] = ds.Tables[0].Rows[0][0].ToString();
                //Session["exmfrm"] = ds.Tables[0].Rows[0][1].ToString();
            }
       
          
            


        }

        protected void btnpay_Click(object sender, EventArgs e)
        {


            da = new SqlDataAdapter("select Acc_id,Stud_name from Account_detail where PRN_noForm_no='" +lbl_pnr.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds, "tbres");
           // Label3.Text = ds.Tables[0].Rows[0][0].ToString();
            Session["Accid"]= ds.Tables[0].Rows[0][0].ToString();
            Session["name"] = ds.Tables[0].Rows[0][1].ToString();
            

            da = new SqlDataAdapter("select Fee_id from Head_detail where Course='" + lbl_crs.Text + "' and sem='" + Session["sem"] + "'", con);
            ds = new DataSet();
            da.Fill(ds, "tbres");
            Label4.Text = ds.Tables[0].Rows[0][0].ToString();
           
            da = new SqlDataAdapter("select count(Receipt_id)+1 from Fees_detail", con);

            ds = new DataSet();
            da.Fill(ds, "tbres");
            string num = ds.Tables[0].Rows[0][0].ToString();

            cmd = new SqlCommand("Insert into Fees_detail (Acc_id,Receipt_id,Fee_id,Course,sem,Fee_type,time_span,Amount)values('" + Session["Accid"] + "','"+num+"'," + Label4.Text + ",'" + lbl_crs.Text + "','" + Session["sem"] + "','" + Session["type"] + " ',GETDATE(),'" + txt_fee.Text + "')", con);

            cmd.ExecuteNonQuery();
            Label5.Text = "inserted";

            da = new SqlDataAdapter("select Receipt_id,time_span,Course from Fees_detail where Acc_id='" + Session["Accid"] + "' ", con);
            ds = new DataSet();
            da.Fill(ds, "tbres");
            Session["rec"] = ds.Tables[0].Rows[0][0].ToString();
            Session["time"] = ds.Tables[0].Rows[0][1].ToString();
            Session["Crse"] = ds.Tables[0].Rows[0][2].ToString();
            //Session["sem"] = ds.Tables[0].Rows[0][3].ToString();

           if(DropDownList1.Text=="Semester Fee")
           {

                da = new SqlDataAdapter("select Tution_fee,Library_fee,Sport_culture_fee,Other_fee,Exam_fee,Exam_form_fee,Amount from Head_detail where Course='" + Session["Crse"] + "' and sem=" + Session["sem"] + "", con);
                ds = new DataSet();
                da.Fill(ds, "tbres");
                Session["tut"] = ds.Tables[0].Rows[0][0].ToString();
                Session["lib"] = ds.Tables[0].Rows[0][1].ToString();
                Session["sprt"] = ds.Tables[0].Rows[0][2].ToString();
                Session["othr"] = ds.Tables[0].Rows[0][3].ToString();
                Session["exm"] = ds.Tables[0].Rows[0][4].ToString();
                Session["exmfrm"] = ds.Tables[0].Rows[0][5].ToString();
                Session["amt"] = ds.Tables[0].Rows[0][6].ToString();
                Session["exmtype"] = "Semester Fee";
           }
           if (DropDownList1.Text == "Exam Fee")
           {

               da = new SqlDataAdapter("select Exam_fee from Head_detail where sem='" + Session["sem"] + "' and Course='" + lbl_crs.Text + "'", con);

               ds = new DataSet();
               da.Fill(ds, "tbres");
               Session["exm"] = ds.Tables[0].Rows[0][0].ToString();
               Session["exmtype"] = "Exam Fee";
           }
          

            //Response.Redirect("Bill.aspx");

           string url = "https://www.paypal.com/us/cgi-bin/webscr";


           var builder = new StringBuilder();
           builder.Append(url);
           builder.AppendFormat("?cmd=_xclick&business={0}", HttpUtility.UrlEncode("shetty.hema@rocketmail.com"));
           builder.Append("&lc=US&no_note=0&currency_code=USD");
           builder.AppendFormat("&amount={0}", string.Format("{0:F2}", decimal.Parse(txt_fee.Text)));

           Response.Redirect(builder.ToString());
           //Response.Redirect("Histroy.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Semester Fee")
            {
                da = new SqlDataAdapter("select Amount from Head_detail where sem='" + Session["sem"] + "' and Course='" + lbl_crs.Text + "'", con);

                ds = new DataSet();
                da.Fill(ds, "tbres");
                txt_fee.Text = ds.Tables[0].Rows[0][0].ToString();


            }
            if (DropDownList1.Text == "Exam Fee")
            {
                da = new SqlDataAdapter("select Exam_fee from Head_detail where sem='" + Session["sem"] + "' and Course='" + lbl_crs.Text + "'", con);

                ds = new DataSet();
                da.Fill(ds, "tbres");
                txt_fee.Text = ds.Tables[0].Rows[0][0].ToString();

                //da = new SqlDataAdapter("select Exam_fee,Exam_form_fee from Head_detail where Course='" + Session["Crse"] + "' and sem=" + Session["sem"] + " ", con);
                //ds = new DataSet();
                //da.Fill(ds, "tbres");
                //Session["exm"] = ds.Tables[0].Rows[0][0].ToString();
                //Session["exmfrm"] = ds.Tables[0].Rows[0][1].ToString();
            }
       
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Semester Fee")
            {
                da = new SqlDataAdapter("select Amount from Head_detail where sem='" + Session["sem"] + "' and Course='" + lbl_crs.Text + "'", con);

                ds = new DataSet();
                da.Fill(ds, "tbres");
                txt_fee.Text = ds.Tables[0].Rows[0][0].ToString();


            }
            if (DropDownList1.Text == "Exam Fee")
            {
                da = new SqlDataAdapter("select Exam_fee from Head_detail where sem='" + Session["sem"] + "' and Course='" + lbl_crs.Text + "'", con);

                ds = new DataSet();
                da.Fill(ds, "tbres");
                txt_fee.Text = ds.Tables[0].Rows[0][0].ToString();

                //da = new SqlDataAdapter("select Exam_fee,Exam_form_fee from Head_detail where Course='" + Session["Crse"] + "' and sem=" + Session["sem"] + " ", con);
                //ds = new DataSet();
                //da.Fill(ds, "tbres");
                //Session["exm"] = ds.Tables[0].Rows[0][0].ToString();
                //Session["exmfrm"] = ds.Tables[0].Rows[0][1].ToString();
            }
       
        }

        protected void btncls_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }
    }
}