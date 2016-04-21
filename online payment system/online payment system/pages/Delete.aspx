<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="online_payment_system.pages.Delete" MasterPageFile="~/pages/Data.Master" %>


     <asp:Content ID="content1" ContentPlaceHolderID ="data" runat="server" >
    
        Are your sure, you want to delete?<br />
        <br />
        <asp:Button ID="btn_yes" runat="server" OnClick="btn_yes_Click" Text="yes" />
&nbsp;
        <asp:Button ID="btn_no" runat="server" OnClick="btn_no_Click" Text="No" />
    
   
</asp:Content>