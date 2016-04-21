<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="online_payment_system.pages.Home" MasterPageFile="~/pages/Home.Master" %>

<asp:Content ID="content2" ContentPlaceHolderID ="menu" runat="server" >
 

        <ul>
          <li class="active"><a href="Home.aspx"><span>Home Page</span></a></li>
          <li ><a   href="FeesDetail.aspx"><span>Fees Detail</span></a></li>
          <li ><a  href="login.aspx"><span>Payment</span></a></li>
          <li ><a  href="Help.aspx"><span>Help</span></a></li>
          <li><a  href="login.aspx"><span>Log In</span></a></li>
        </ul>

       </asp:Content>
    <asp:Content ID="content1" ContentPlaceHolderID ="cont" runat="server" >
         <strong><span style="font-size: medium">Home</span></strong><br />
         <br />
         <%--<span style="font-size: 14.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%; font-family: &quot;Shruti&quot;,&quot;sans-serif&quot;"><b style="mso-bidi-font-weight: normal"><u>Home<o:p><br />
         <br />
         </u></b><span style="mso-bidi-font-weight: normal"><span style="font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%; font-family: &quot;Shruti&quot;,&quot;sans-serif&quot;">The Pay online website is allowing you to pay the different fees of university online. And it allows to do not waste the time waiting in the long queue.To access this website you must have the account in the pay online website .Log in to your account you will be allow using all the options provided in this system.As you click on the payment option it will take you to the payment processor and click on the pay button it will move to the payment gateway to pay the money with more security.<br />
         <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;
line-height:115%;font-family:&quot;Shruti&quot;,&quot;sans-serif&quot;">This website facilitates to pay the amount in three ways:<o:p></o:p></span><![if !supportLists]><span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:115%;font-family:
Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol"><span style="mso-list:Ignore"><br />
         ·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp; </span></span></span><![endif]><span style="font-size:12.0pt;mso-bidi-font-size:
11.0pt;line-height:115%;font-family:&quot;Shruti&quot;,&quot;sans-serif&quot;">Using the PayPal account.<o:p></o:p></span><![if !supportLists]><span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:115%;font-family:
Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol"><span style="mso-list:Ignore"> ·</span></span><span style="font-size:12.0pt;mso-bidi-font-size:
11.0pt;line-height:115%;font-family:&quot;Shruti&quot;,&quot;sans-serif&quot;">Debit card <o:p></o:p></span><![if !supportLists]><span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:115%;font-family:
Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp; </span></span></span><span style="font-size:12.0pt;mso-bidi-font-size:
11.0pt;line-height:115%;font-family:&quot;Shruti&quot;,&quot;sans-serif&quot;">Credit card.<o:p></o:p></span>
         <o:p>
         <br />
         <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;
line-height:115%;font-family:&quot;Shruti&quot;,&quot;sans-serif&quot;">At the end of payment you will be generated to get electronic bill.<o:p><br />
         </o:p></span><span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;
line-height:115%;font-family:&quot;Shruti&quot;,&quot;sans-serif&quot;">This website helps you to make your work more trouble-free.<o:p></o:p></span></o:p></span></span></o:p></span>--%>
		 <span style="color: #000000"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-size: small">The pay online website allows the student to pay tuition and other related fees to the<br />
&nbsp;university. <o:p></o:p>To access this website you must need to create the account in the pay online website through which you will be eligible to use the all the features of this website.<o:p></o:p>You can pay the amount online without waiting in the long queue by wasting your time.<o:p><br />
         <br />
         </o:p>When you login to go to payment option you will be moved to the papal sit and if you have the paypal account you will pay the money online otherwise it also provide to pay with<o:p></o:p>Debit card <o:p></o:p>Credit card.<o:p></o:p></span></span></span><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="color: #000000; font-size: small"><br />
         <br />
         This will makes your work trouble free. It also contains the information of paid detail. Whatsoever you want see the paid detail of fees of semester, course and date you will get it from history.<o:p><br />
         <br />
         You just need a single click to pay the amount online as you pay the amount through<br />
         paypal<br />
         Debit card<br />
         Credit card<br />
         <br />
         This will generates a electronic bill and also perform the adition of history. As Your work will be completed for the security purpose logout from the site.<br />
         <br />
         This website is truely helpful for the student to pay the tuition fee.<br />
         <br />
         The user should have any of this device to access this website.<br />
         Computer , tablet or the mobile phone.</span><span style="font-size: medium"><br />
         </span>
         <br />
         <br />
         <br />
         </o:p></span>
		</asp:Content>

      