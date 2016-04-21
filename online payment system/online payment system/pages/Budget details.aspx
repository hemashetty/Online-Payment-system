<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Budget details.aspx.cs" Inherits="online_payment_system.pages.Budget_details" MasterPageFile="~/pages/Data.Master" %>


<asp:Content ID="content1" ContentPlaceHolderID ="admi" runat="server" >
 
        <ul>
            
          <li ><a href="student account.aspx"><span>Student Detail</span></a></li>
          <li ><a href="Paid details.aspx"><span>Paid Detail</span></a></li>
          <li ><a href="heads.aspx"><span>Enter Heads</span></a></li>
          <li class="active"><a href="Budget details.aspx"><span>Head Detail</span></a></li>
          <li><a href="settings.aspx"><span>Settings</span></a></li>
           
        </ul>
           
         </asp:Content>

    <asp:Content ID="content3" ContentPlaceHolderID ="data" runat="server" >
        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource_drcrs" DataTextField="Course" DataValueField="Course" Height="26px" Width="180px">
        <asp:ListItem Text="All courses" Value="" />
             </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource_drsm" DataTextField="sem" DataValueField="sem" Height="26px" Width="180px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource_drsm" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT * FROM [Head_detail]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource_drcrs" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT * FROM [Head_detail]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Fee_id" DataSourceID="SqlDataSource_grdhd" Width="584px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Fee_id" HeaderText="Fee_id" ReadOnly="True" SortExpression="Fee_id" />
                <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                <asp:BoundField DataField="Tution_fee" HeaderText="Tution_fee" SortExpression="Tution_fee" />
                <asp:BoundField DataField="Library_fee" HeaderText="Library_fee" SortExpression="Library_fee" />
                <asp:BoundField DataField="Sport_culture_fee" HeaderText="Sport_culture_fee" SortExpression="Sport_culture_fee" />
                <asp:BoundField DataField="Other_fee" HeaderText="Other_fee" SortExpression="Other_fee" />
                <asp:BoundField DataField="Exam_fee" HeaderText="Exam_fee" SortExpression="Exam_fee" />
                <asp:BoundField DataField="Exam_form_fee" HeaderText="Exam_form_fee" SortExpression="Exam_form_fee" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
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
        <asp:SqlDataSource ID="SqlDataSource_grdhd" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT * FROM [Head_detail]" FilterExpression="Course = '{0}' and sem='{1}'">
             <FilterParameters>
        <asp:ControlParameter Name="Course" ControlID="DropDownList1" PropertyName="SelectedValue" />
         <asp:ControlParameter Name="sem" ControlID="DropDownList2" PropertyName="SelectedValue" />
             </FilterParameters>
        </asp:SqlDataSource>
</asp:Content>
