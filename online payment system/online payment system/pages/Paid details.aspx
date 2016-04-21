<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paid details.aspx.cs" Inherits="online_payment_system.pages.Paid_details" MasterPageFile="~/pages/Data.Master" %>

<asp:Content ID="content1" ContentPlaceHolderID="admi" runat="server">

    <ul>

        <li><a href="student account.aspx"><span>Student Detail</span></a></li>
        <li class="active"><a href="Paid details.aspx"><span>Paid Detail</span></a></li>
        <li><a href="heads.aspx"><span>Enter Heads</span></a></li>
        <li><a href="Budget details.aspx"><span>Head Detail</span></a></li>
        <li><a href="settings.aspx"><span>Settings</span></a></li>

    </ul>

</asp:Content>
<asp:Content ID="content3" ContentPlaceHolderID="data" runat="server">


    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource_drop" DataTextField="Course" DataValueField="Course" Height="26px" Width="180px">
        <asp:ListItem Text="All courses" Value="" />
    </asp:DropDownList>
    &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource_drop2" DataTextField="sem" DataValueField="sem" Height="26px" Width="180px">
        </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource_drop2" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT DISTINCT [sem] FROM [Fees_detail]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList3" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="time_span" DataValueField="time_span">
    </asp:DropDownList>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT DISTINCT format([time_span],'dd-MMM-yyyy') &quot;time_span&quot; FROM [Fees_detail]"></asp:SqlDataSource>
    &nbsp;<asp:SqlDataSource ID="SqlDataSource_drop" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT DISTINCT [Course] FROM [Fees_detail]"></asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Receipt_id" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Acc_id" HeaderText="Acc_id" SortExpression="Acc_id" />
            <asp:BoundField DataField="Receipt_id" HeaderText="Receipt_id" ReadOnly="True" SortExpression="Receipt_id" />
            <asp:BoundField DataField="Fee_id" HeaderText="Fee_id" SortExpression="Fee_id" />
            <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
            <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
            <asp:BoundField DataField="Fee_type" HeaderText="Fee_type" SortExpression="Fee_type" />
            <asp:BoundField DataField="time_span" HeaderText="time_span" SortExpression="time_span" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT * FROM [Fees_detail] WHERE (([Course] = @Course) AND ([sem] = @sem) AND (format([time_span],'dd-MMM-yyyy') = @time_span))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Course" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DropDownList2" Name="sem" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DropDownList3" Name="time_span" PropertyName="SelectedValue" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>

    &nbsp;<br />
    <br />
    
</asp:Content>
