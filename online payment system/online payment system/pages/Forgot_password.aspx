<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot_password.aspx.cs" Inherits="online_payment_system.pages.Forgot_password" MasterPageFile="~/pages/Home.Master" %>


<asp:Content ID="content1" ContentPlaceHolderID ="cont" runat="server" >
        <table style="width: 614px; margin-left: 25px;">
            <tr>
                <td class="auto-style2" style="width: 259px; text-align: right; height: 43px;">
                    &nbsp;</td>
                <td class="auto-style2" style="width: 430px; height: 43px;">
                    <span style="font-size: medium"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Forgot password</strong></span></td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 259px; text-align: right; height: 43px;">
                    <asp:Label ID="lbl_add" runat="server" Text="Email address:"></asp:Label>
                </td>
                <td class="auto-style2" style="width: 430px; height: 43px;">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_email" runat="server" Width="180px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Please enter correct password" ForeColor="Red" ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please enter the email id" ForeColor="Red" ControlToValidate="txt_email"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 259px; height: 61px;"></td>
                <td class="auto-style2" style="width: 430px; height: 61px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_rst" runat="server" OnClick="btn_rst_Click" Text="Reset Password" />
                    <br />
                </td>
            </tr>
        </table>
    </asp:Content>


