<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirm.aspx.cs" Inherits="online_payment_system.pages.confirm" MasterPageFile="~/pages/Home.Master" %>
<%@ PreviousPageType VirtualPath="~/pages/StudentDetail.aspx" %>


    <asp:Content ID="content1" ContentPlaceHolderID ="cont" runat="server" >
        <table style="height: 161px; width: 665px">
            <tr>
                <td class="auto-style3" style="text-align: justify; width: 275px; height: 43px;">
                    <asp:Label ID="pnr" runat="server" Text="PNR No/FORM No.:"></asp:Label>
                </td>
                <td class="auto-style2" style="width: 445px; height: 43px">
                    <asp:Label ID="Lbl_pnr" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: justify; width: 275px; height: 30px;">Student Name:</td>
                <td class="auto-style2" style="width: 445px; height: 30px">
                    <asp:Label ID="lbl_stud" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: justify; width: 275px; height: 41px;">Mobile No.</td>
                <td class="auto-style2" style="width: 445px; height: 41px">
                    <asp:Label ID="lbl_mob" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: justify; width: 275px; height: 36px;">Email Id:</td>
                <td class="auto-style2" style="width: 445px; height: 36px">
                    <asp:Label ID="lbl_mail" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: justify; width: 275px; height: 57px;">Course</td>
                <td class="auto-style2" style="width: 445px; height: 57px">
                    <asp:Label ID="lbl_course" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: justify; width: 275px; height: 32px;">Semester:</td>
                <td class="auto-style2" style="width: 445px; height: 32px">
                    <asp:Label ID="lbl_sem" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: justify; width: 275px; height: 19px;">Password:</td>
                <td class="auto-style2" style="width: 445px; height: 19px">
                    <asp:Label ID="lbl_pass" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="confirm" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
    
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT * FROM [Account_detail]"></asp:SqlDataSource>
   
        </asp:Content>
