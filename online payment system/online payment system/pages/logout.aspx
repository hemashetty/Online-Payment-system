<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="online_payment_system.pages.logout" MasterPageFile="~/pages/Home.Master" %>

 <asp:Content ID="content2" ContentPlaceHolderID ="menu" runat="server" >

        <ul>
          <li ><a href="Profile.aspx"><span>Profile</span></a></li>
          <li ><a href="Payment.aspx"><span>Payment</span></a></li>
          <li><a href="Histroy.aspx"><span>History</span></a></li>
          <li  class="active"><a href="logout.aspx"><span>Log out</span></a></li>
          
        </ul>
          </asp:Content>
<asp:Content ID="content1" ContentPlaceHolderID ="cont" runat="server" >
     <div>
    
        For security purpose don&#39;t forget to log out.<br />
        <br />
        <asp:Button ID="btn_lgout" runat="server" OnClick="btn_lgout_Click" Text="Log Out" />
    
    </div>
   
</asp:Content>