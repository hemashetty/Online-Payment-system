<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="online_payment_system.pages.Bill" MasterPageFile="~/pages/try.Master" %>


<asp:Content ID="content2" ContentPlaceHolderID ="pay" runat="server" >

        <ul>
          <li  class="active" ><a href="Bill.aspx"><span>Bil</span></a></li>
         
          
        </ul>
          </asp:Content>

<asp:Content ID="content1" ContentPlaceHolderID ="try" runat="server" >
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
                    Name :
                    <asp:Label ID="lbl_nm" runat="server" Text="Label"></asp:Label>
                </td>
                <td>Course:<asp:Label ID="lbl_crs" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp; Semester:<asp:Label ID="lbl_sem" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Receipt no.:
                    <asp:Label ID="lbl_recpt" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;Paid date:
                    <asp:Label ID="lbl_date" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
    
    </div>
        <br />
        <table class="auto-style1" style="height: 228px; width: 446px">
            <tr>
                <td>&nbsp;</td>
                <td>Budget Head</td>
                <td>Amount(Rs.)</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Tuition Fee" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;<asp:Label ID="lbl_tut" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Library Fee" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;<asp:Label ID="lbl_lib" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="Sports and Culture Fee" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;<asp:Label ID="lbl_sprt" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="Others" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;<asp:Label ID="lbl_othr" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label19" runat="server" Text="Exam Fee" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;<asp:Label ID="lbl_exm" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label20" runat="server" Text="Exam Form Fee" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;<asp:Label ID="lbl_exfrm" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label21" runat="server" Text="Amount"></asp:Label>
                </td>
                <td>
                    &nbsp;<asp:Label ID="lbl_amt" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
            
    </asp:Content>