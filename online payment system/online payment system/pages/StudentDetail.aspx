<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetail.aspx.cs" Inherits="online_payment_system.pages.StudentDetail" MasterPageFile="~/pages/Home.Master" %>

<asp:Content ID="content1" ContentPlaceHolderID ="cont" runat="server" >
    
        <table>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3" style="text-align: center; font-size: large; color: #000000">
                    Registration Form<br />
                </td>
                <td class="auto-style3" style="width: 216px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">PNR No/From No.</td>
                <td class="auto-style3">
        <asp:TextBox ID="txt_pnr" runat="server" Width="180px" MaxLength="25"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style3" style="width: 216px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_pnr" runat="server" ControlToValidate="txt_pnr" ErrorMessage="*Please enter correct PNR no." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mobile No.:</td>
                <td class="auto-style3">
        <asp:TextBox ID="txt_mob" runat="server" Width="180px" MaxLength="10" TextMode="Phone"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style3" style="width: 216px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_mob" runat="server" ControlToValidate="txt_mob" ErrorMessage="*Please enter the mobile no." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email Id:</td>
                <td class="auto-style3">
        <asp:TextBox ID="txt_email" runat="server" Width="180px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style3" style="width: 216px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_email" runat="server" ControlToValidate="txt_email" ErrorMessage="*Please enter the Email Id" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_email" runat="server" ControlToValidate="txt_email" ErrorMessage="*Please enter valid Email address" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Course:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="drop_course" runat="server" Height="24px" Width="187px" style="margin-left: 0px" >
                        <asp:ListItem>None</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>M.Sc(CA &amp; IT)</asp:ListItem>
                        <asp:ListItem>PGDCA</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>MA</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
                    <br />
                </td>
                <td class="auto-style3" style="width: 216px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_course" runat="server" ControlToValidate="drop_course" ErrorMessage="*Please select some course" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Semester:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList_sem" runat="server" Height="24px" Width="187px">
                        <asp:ListItem>none</asp:ListItem>
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
                <td class="auto-style3" style="width: 216px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_sem" runat="server" ControlToValidate="DropDownList_sem" ErrorMessage="*Please enter the semester." ForeColor="#CC0000" style="text-align: left"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_pass" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
    
                </td>
                <td class="auto-style3" style="width: 216px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_pass" runat="server" ControlToValidate="txt_pass" ErrorMessage="*Please enter the password." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm Password:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txt_conf" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
    
                </td>
                <td class="auto-style3" style="width: 216px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_conf" runat="server" ControlToValidate="txt_conf" ErrorMessage="*Please enter the confirm password." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator_conf" runat="server" ControlToCompare="txt_pass" ControlToValidate="txt_conf" ErrorMessage="*Password does not match." ForeColor="#CC0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="height: 75px"></td>
                <td class="auto-style3" style="height: 75px">&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Next" runat="server" Height="32px" Text="NEXT" Width="94px" OnClick="Button2_Click" style="text-align: center"  />
    
                    <br />
                    <br />
    
                </td>
                <td class="auto-style3" style="height: 75px; width: 216px"></td>
            </tr>
        </table>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource_regi" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT * FROM [Account_detail]"></asp:SqlDataSource>
        
 </asp:Content>   

   
