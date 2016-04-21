<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="online_payment_system.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="time_span" DataValueField="time_span" AppendDataBoundItems="True">
        </asp:DropDownList>
        &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="time_span" DataValueField="time_span">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT DISTINCT format([time_span],'dd-MMM-yyyy') FROM [Fees_detail]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT DISTINCT format([time_span],'dd-MMM-yyyy')FROM [Fees_detail]"></asp:SqlDataSource>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Receipt_id" DataSourceID="SqlDataSource2">
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
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="

SELECT DISTINCT * FROM [Fees_detail] WHERE format([time_span],'dd-MMM-yyyy' )&gt;= @time_span AND format([time_span],'dd-MMM-yyyy' )&lt;= @time_span2

">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="time_span" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList2" Name="time_span2" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
