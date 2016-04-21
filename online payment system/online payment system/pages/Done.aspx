<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Done.aspx.cs" Inherits="online_payment_system.pages.Done" MasterPageFile ="~/pages/Pay online.Master"%>


   <asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     
       <ul id="nav">
                <li><a href="stud_detail.aspx">student Detail</a></li>
                <li><a href="Done.aspx">Done</a></li>
                
            </ul>
        </asp:Content>
    <asp:Content ID="content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat="server" >
        Student Name:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        Department:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        Type Of Payment:<asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="165px">
            <asp:ListItem>Exam Fee</asp:ListItem>
            <asp:ListItem>Semester Fee</asp:ListItem>
            <asp:ListItem>Add</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Fees:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Pay Now" />
    
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Cancel" />
    
   </asp:Content>
