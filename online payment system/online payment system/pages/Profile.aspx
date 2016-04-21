<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="online_payment_system.pages.Profile" MasterPageFile="~/pages/try.Master" %>

<asp:Content ID="content2" ContentPlaceHolderID ="pay" runat="server" >

        <ul>
          <li  class="active" ><a href="Profile.aspx"><span>Profile</span></a></li>
          <li ><a href="Payment.aspx"><span>Payment</span></a></li>
          <li><a href="Histroy.aspx"><span>History</span></a></li>
          <li ><a href="logout.aspx"><span>Log out</span></a></li>
          
        </ul>
          </asp:Content>

    <asp:Content ID="content1" ContentPlaceHolderID ="try" runat="server" >
        <span style="font-size: medium">Welcome&nbsp;</span>
        <asp:Label ID="lbl_name" runat="server" Text="Label" style="font-size: medium; font-weight: 700"></asp:Label>
&nbsp;<span style="font-size: medium"><strong>!</strong></span><asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        PNR NO:&nbsp;
        <asp:Label ID="lbl_pnr" runat="server" Text="Label"></asp:Label>
        <br />
        <table class="auto-style1" style="height: 138px">
            <tr>
                <td style="height: 25px">Email address:</td>
                <td style="height: 25px">
                    <asp:Label ID="lbl_eid" runat="server" Text="Label"></asp:Label>
                    <asp:TextBox ID="txt_eid" runat="server" Visible="False" Width="180px"></asp:TextBox>
&nbsp;<asp:Button ID="btn_cheid" runat="server" OnClick="btn_cheid_Click" Text="Update" Visible="False" style="height: 26px" />
&nbsp;<asp:Button ID="btn_ueid" runat="server" OnClick="btn_ueid_Click" Text="Edit" Visible="False" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_eid" ErrorMessage="*Please enter correct email address" ForeColor="Red"></asp:RegularExpressionValidator>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_notifimail" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="height: 31px">Phone No.</td>
                <td style="height: 31px">
                    <asp:Label ID="lbl_phno" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:TextBox ID="txt_phn" runat="server" Visible="False" Width="180px" TextMode="Phone"></asp:TextBox>
&nbsp;<asp:Button ID="btn_chph" runat="server" OnClick="btn_chph_Click" Text="Update" Visible="False" />
&nbsp;<asp:Button ID="btn_uph" runat="server" OnClick="btn_uph_Click" Text="Edit" Visible="False" />
                &nbsp;<asp:Label ID="lbl_notifiph" runat="server" ForeColor="Red" Text="label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="height: 4px"></td>
                <td style="height: 4px"></td>
            </tr>
        </table>
        <br />
&nbsp;<asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change Password" />
        &nbsp;<asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <table class="auto-style1" style="height: 164px">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbl_crnt" runat="server" Text="Current Password" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_cur" runat="server" Visible="False" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbl_npas" runat="server" Text="New Password" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_npas" runat="server" Visible="False" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbl_confpas" runat="server" Text="Confirm Password" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_cnfpas" runat="server" Visible="False" Width="180px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_npas" ControlToValidate="txt_cnfpas" ErrorMessage="*Password does not match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_cnf" runat="server" OnClick="btn_cnf_Click" Text="Confirm" Visible="False" />
                </td>
            </tr>
        </table>
        <br />
    
    </div>
   
	</asp:Content>