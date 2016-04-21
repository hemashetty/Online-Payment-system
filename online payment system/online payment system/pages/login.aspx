<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="online_payment_system.pages.login" MasterPageFile="~/pages/Home.Master" %>


 <asp:Content ID="content2" ContentPlaceHolderID ="menu" runat="server" >
 

        <ul>
          <li ><a href="Home.aspx"><span>Home Page</span></a></li>
          <li ><a   href="FeesDetail.aspx"><span>Fees Detail</span></a></li>
          <li ><a  href="login.aspx"><span>Payment</span></a></li>
          <li ><a  href="Help.aspx"><span>Help</span></a></li>
          <li class="active"><a  href="login.aspx"><span>Log In</span></a></li>
        </ul>

       </asp:Content>
 
  <asp:Content ID="content1" ContentPlaceHolderID ="cont" runat="server" >
        <table style="height: 196px; width: 674px" >
            <tr>
                <td class="auto-style2" style="height: 61px"></td>
                <td style="width: 479px; font-size: medium; text-align: left; height: 61px;">
                    <strong style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Log In<br />
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 35px; text-align: right;">Email Id:</td>
                <td class="auto-style3" style="width: 479px; height: 35px;">
                    <asp:TextBox ID="txt_email" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_em" runat="server" ControlToValidate="txt_email" ErrorMessage="*Please enter Email id" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 16px; text-align: right;">Password:</td>
                <td class="auto-style3" style="width: 479px; height: 16px;">
                    <asp:TextBox ID="txt_pass" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_pass" runat="server" ControlToValidate="txt_pass" ErrorMessage="*Please enter the password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 5px"></td>
                <td class="auto-style3" style="width: 479px; height: 5px;">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" style="height: 26px" />
                &nbsp;<asp:HyperLink ID="HyperLink_reg" runat="server" NavigateUrl="~/pages/StudentDetail.aspx">Register</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style3" style="width: 479px">
                    <asp:HyperLink ID="HyperLink_frgt" runat="server" NavigateUrl="~/pages/Forgot_password.aspx">Forgot Password?</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style3" style="width: 479px"></td>
            </tr>
        </table>
   
        <br />
   
     </asp:Content>

