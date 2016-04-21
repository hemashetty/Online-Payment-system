<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="online_payment_system.pages.Payment" MasterPageFile="~/pages/try.Master" %>

<asp:Content ID="content2" ContentPlaceHolderID ="pay" runat="server" >

        <ul>
          <li ><a href="Profile.aspx"><span>Profile</span></a></li>
          <li class="active"><a href="Payment.aspx"><span>Payment</span></a></li>
          <li><a href="Histroy.aspx"><span>History</span></a></li>
          <li><a href="logout.aspx"><span>Log out</span></a></li>
          
        </ul>
          </asp:Content>

    <asp:Content ID="content1" ContentPlaceHolderID ="try" runat="server" >
        <table style="width: 673px">
            <tr>
                <td class="auto-style3" style="width: 202px">&nbsp;</td>
                <td class="auto-style4" style="width: 548px; font-size: medium;">
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Payment</strong></td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 202px"><strong>Student Fees Payment</strong></td>
                <td class="auto-style4" style="width: 548px">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 202px">Student Name</td>
                <td class="auto-style4" style="width: 548px">
                    <asp:Label ID="lbl_std_nm" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 202px">PNR NO.</td>
                <td class="auto-style4" style="width: 548px">
                    <asp:Label ID="lbl_pnr" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 202px">Course</td>
                <td class="auto-style4" style="width: 548px">
                    <asp:Label ID="lbl_crs" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 202px">Semester</td>
                <td class="auto-style4" style="width: 548px">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="180px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 202px">Pay Fee</td>
                <td class="auto-style4" style="width: 548px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="180px">
                        <asp:ListItem>Semester Fee</asp:ListItem>
                        <asp:ListItem>Exam Fee</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 202px">Fee</td>
                <td class="auto-style4" style="width: 548px">
                    <asp:TextBox ID="txt_fee" runat="server" ReadOnly="True" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 202px">&nbsp;</td>
                <td class="auto-style4" style="width: 548px">
                    <asp:Button ID="btnpay" runat="server" OnClick="btnpay_Click" Text="Pay" Width="75px" style="height: 26px" />
&nbsp;<asp:Button ID="btncls" runat="server" Text="Cancel" OnClick="btncls_Click" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT * FROM [Fees_detail]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
   	</asp:Content>


