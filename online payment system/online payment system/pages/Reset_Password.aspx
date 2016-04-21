<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reset_Password.aspx.cs" Inherits="online_payment_system.pages.Reset_Password" MasterPageFile="~/pages/Home.Master" %>

<asp:Content ID="content1" ContentPlaceHolderID ="cont" runat="server" >
        <table class="auto-style1" style="height: 235px; width: 666px">
            <tr>
                <td class="auto-style2" style="text-align: right; height: 36px;">&nbsp;</td>
                <td class="auto-style2" style="height: 36px; text-align: left;"><span style="font-size: medium"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Reset Password</strong></span></td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; height: 36px;">Enter new password:</td>
                <td class="auto-style2" style="height: 36px">&nbsp;&nbsp;
                    <asp:TextBox ID="txt_passw" runat="server" style="margin-left: 0px" Width="180px" TextMode="Password"></asp:TextBox>
&nbsp;<br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please Enter the password" ForeColor="#CC0000" ControlToValidate="txt_passw"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; height: 2px;">Confirm password:</td>
                <td class="auto-style2" style="height: 2px">&nbsp;&nbsp;
                    <asp:TextBox ID="txt_cnfrm" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_passw" ControlToValidate="txt_cnfrm" ErrorMessage="*Please enter correct password" ForeColor="#CC0000"></asp:CompareValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_cnfrm" ErrorMessage="*Please enter the password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; height: 51px;"></td>
                <td class="auto-style2" style="height: 51px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_rstp" runat="server" Text="Reset Password" OnClick="btn_rstp_Click" />
                </td>
            </tr>
        </table>
    <div>
    
        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
    
    </div>
    
    </asp:Content>

