<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="online_payment_system.pages.settings" MasterPageFile="~/pages/Data.Master" %>

<asp:Content ID="content2" ContentPlaceHolderID ="admi" runat="server" >
 
        <ul>
            
          <li ><a href="student account.aspx"><span>Student Detail</span></a></li>
          <li ><a href="Paid details.aspx"><span>Paid Detail</span></a></li>
          <li ><a href="heads.aspx"><span>Enter Heads</span></a></li>
          <li ><a href="Budget details.aspx"><span>Head Detail</span></a></li>
          <li class="active"><a href="settings.aspx"><span>Settings</span></a></li>
           
        </ul>
           
         </asp:Content>   
  <asp:Content ID="content1" ContentPlaceHolderID ="data" runat="server" >
         <asp:Button ID="btn_pas" runat="server" OnClick="btn_pas_Click" Text="Change Password" />
        &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change Email Id" />
         <br />
         <table style="width: 100%">
             <tr>
                 <td style="width: 167px; text-align: right;">
                     <asp:Label ID="lbl_emid" runat="server" Text="Change Email Id" Visible="False"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="txt_emaiid" runat="server" Visible="False" Width="180px"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td style="width: 167px; text-align: right;">
                     <asp:Label ID="lbl_cnfemail" runat="server" Text="Confirm Email Id" Visible="False"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="txt_cnfemail" runat="server" Visible="False" Width="180px"></asp:TextBox>
                     <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="*Email id does not match" ForeColor="#CC0000" ControlToCompare="txt_emaiid" ControlToValidate="txt_cnfemail"></asp:CompareValidator>
                 </td>
             </tr>
             <tr>
                 <td style="width: 167px">&nbsp;</td>
                 <td>
                     <asp:Button ID="btn_chemail" runat="server" OnClick="btn_chemail_Click" Text="Update" Visible="False" />
&nbsp;<asp:Button ID="btn_emcancel" runat="server" OnClick="btn_emcancel_Click" Text="Cancel" Visible="False" />
                 </td>
             </tr>
         </table>
        <br />
        <br />
        <table class="auto-style1" style="height: 87px; width: 627px">
            <tr>
                <td class="auto-style2" style="text-align: right; width: 121px">
                    <asp:Label ID="lbl_cpas" runat="server" Text="Current Password" Visible="False"></asp:Label>
                </td>
                <td style="width: 337px">
                    <asp:TextBox ID="txt_cpas" runat="server" Visible="False" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; width: 121px">
                    <asp:Label ID="lbl_npas" runat="server" Text="New Password" Visible="False"></asp:Label>
                </td>
                <td style="width: 337px">
                    <asp:TextBox ID="txt_npas" runat="server" Visible="False" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; width: 121px">
                    <asp:Label ID="lbl_cnfrm" runat="server" Text="Confirm Password" Visible="False"></asp:Label>
                </td>
                <td style="width: 337px">
                    <asp:TextBox ID="txt_cnfpas" runat="server" Visible="False" Width="180px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_npas" ControlToValidate="txt_cnfpas" ErrorMessage="*Password does not match" ForeColor="#CC0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 121px">&nbsp;</td>
                <td style="width: 337px">
                    <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" Text="Update" Visible="False" />
&nbsp;<asp:Button ID="btn_cancel" runat="server" OnClick="btn_cancel_Click" Text="Cancel" Visible="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 121px">
                    <br />
                </td>
                <td style="width: 337px">
                    <br />
                </td>
            </tr>
        </table>
    </asp:Content>