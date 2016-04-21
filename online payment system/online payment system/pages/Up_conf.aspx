<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Up_conf.aspx.cs" Inherits="online_payment_system.pages.Up_conf" MasterPageFile="~/pages/Data.Master"%>


     <asp:Content ID="content3" ContentPlaceHolderID ="data" runat="server" >
        Are you sure , you want to perform changes ?<br />
        <br />
        <asp:Button ID="btn_yes" runat="server" OnClick="Button1_Click" Text="Yes" />
&nbsp;
        <asp:Button ID="btn_no" runat="server" Text="No" OnClick="btn_no_Click" />
    
   </asp:Content>
