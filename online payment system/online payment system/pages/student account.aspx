<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student account.aspx.cs" Inherits="online_payment_system.pages.student_account" MasterPageFile="~/pages/Data.Master" %>


    <asp:Content ID="content1" ContentPlaceHolderID ="admi" runat="server" >
 
        <ul>
            
          <li class="active"><a href="student account.aspx"><span>Student Detail</span></a></li>
          <li><a href="Paid details.aspx"><span>Paid Detail</span></a></li>
          <li><a href="heads.aspx"><span>Enter Heads</span></a></li>
          <li><a href="Budget details.aspx"><span>Head Detail</span></a></li>
          <li><a href="settings.aspx"><span>Settings</span></a></li>
           
        </ul>
           
         </asp:Content>


<asp:Content ID="content3" ContentPlaceHolderID ="data" runat="server" >
    
        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource_acccrs" DataTextField="Course" DataValueField="Course" Height="26px" Width="180px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
       <asp:ListItem Text="All courses" Value="" />
             </asp:DropDownList>
&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource_accsem" DataTextField="Sem" DataValueField="Sem" Height="26px" Width="180px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource_accsem" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT DISTINCT [Sem] FROM [Account_detail]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource_acccrs" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT DISTINCT [Course] FROM [Account_detail]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Acc_id" DataSourceID="SqlDataSource_acc" Width="645px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Acc_id" HeaderText="Acc_id" ReadOnly="True" SortExpression="Acc_id" />
                <asp:BoundField DataField="PRN_noForm_no" HeaderText="PRN_noForm_no" SortExpression="PRN_noForm_no" />
                <asp:BoundField DataField="Stud_name" HeaderText="Stud_name" SortExpression="Stud_name" />
                <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                <asp:BoundField DataField="Sem" HeaderText="Sem" SortExpression="Sem" />
                <asp:BoundField DataField="Mobile_no" HeaderText="Mobile_no" SortExpression="Mobile_no" />
                <asp:BoundField DataField="Email_id" HeaderText="Email_id" SortExpression="Email_id" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource_acc" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT * FROM [Account_detail]" FilterExpression="Course = '{0}' and sem='{1}'">
            <FilterParameters>
        <asp:ControlParameter Name="Course" ControlID="DropDownList1" PropertyName="SelectedValue" />
         <asp:ControlParameter Name="sem" ControlID="DropDownList2" PropertyName="SelectedValue" />
             </FilterParameters>
        </asp:SqlDataSource>
    
   </asp:Content>