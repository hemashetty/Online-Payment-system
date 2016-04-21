<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_head_detail.aspx.cs" Inherits="online_payment_system.pages.add_head_detail" MasterPageFile="~/pages/Data.Master" %>

<asp:Content ID="content1" ContentPlaceHolderID ="data" runat="server" >
        <table style="text-align: right">
            <tr>
                <td class="auto-style3" style="width: 209px; text-align: left">Fees id</td>
                <td class="auto-style2" style="width: 536px; text-align: justify">
                    <asp:TextBox ID="txt_id" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 209px; text-align: left">Course</td>
                <td class="auto-style2" style="width: 536px; text-align: justify">
                    <asp:DropDownList ID="DropDownList_course" runat="server" Width="180px">
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>M.Sc(CA &amp; IT)</asp:ListItem>
                        <asp:ListItem>PGDCA</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>M.Sc(IT)</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 209px; text-align: left">Semester</td>
                <td class="auto-style2" style="width: 536px; text-align: justify">
                    <asp:DropDownList ID="DropDownList_sem" runat="server" Width="180px">
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
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 209px; text-align: left">Tuition Fee</td>
                <td class="auto-style2" style="width: 536px; text-align: justify">
                    <asp:TextBox ID="txt_tution" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 209px; text-align: left">Library Fee</td>
                <td class="auto-style2" style="width: 536px; text-align: justify">
                    <asp:TextBox ID="txt_lib" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 209px; text-align: left">Sport culture Fee</td>
                <td class="auto-style2" style="width: 536px; text-align: justify">
                    <asp:TextBox ID="txt_sprt" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 209px; text-align: left">Other Fee</td>
                <td class="auto-style2" style="width: 536px; text-align: justify">
                    <asp:TextBox ID="txt_other" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 209px; text-align: left">Exam Fee</td>
                <td class="auto-style2" style="width: 536px; text-align: justify">
                    <asp:TextBox ID="txt_exam" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 209px; text-align: left">Exam Form Fee</td>
                <td class="auto-style2" style="width: 536px; text-align: justify">
                    <asp:TextBox ID="txt_exfrm" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 209px; text-align: left">&nbsp;</td>
                <td class="auto-style2" style="width: 536px; text-align: justify">
                    <asp:TextBox ID="txt_amnt" runat="server" Width="180px" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 209px; text-align: left">&nbsp;</td>
                <td class="auto-style2" style="width: 536px; text-align: justify">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" Height="26px" Width="59px" />
                &nbsp;
                    <asp:Button ID="btn_upt" runat="server" Text="Cancel" OnClick="btn_upt_Click" />
                </td>
            </tr>
        </table>
    </asp:Content>


