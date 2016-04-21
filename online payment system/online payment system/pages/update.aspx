<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="online_payment_system.pages.update" MasterPageFile="~/pages/Data.Master"%>


   <asp:Content ID="content1" ContentPlaceHolderID ="data" runat="server" > 
        <table class="auto-style1" style="width: 666px">
            <tr>
                <td class="auto-style2">Fees id</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_id" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Course</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList_course" runat="server" Height="16px" Width="180px">
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>M.Sc(CA &amp; IT)</asp:ListItem>
                        <asp:ListItem>PGDCA</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>M.Sc(IT)</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Semester</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList_sem" runat="server" Height="19px" Width="180px">
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
                <td class="auto-style2">Tuition Fee</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_tution" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Library Fee</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_lib" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Sport culture Fee</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_sprt" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Other Fee</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_other" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Exam Fee</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_exam" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Exam Form Fee</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_exfrm" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Amount</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_amnt" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_upt" runat="server" Text="Update" OnClick="btn_upt_Click" />
                </td>
            </tr>
        </table>
    
   </asp:Content>




