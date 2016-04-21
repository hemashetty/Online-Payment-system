<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Histroy.aspx.cs" Inherits="online_payment_system.pages.Histroy" MasterPageFile="~/pages/try.Master" %>

<asp:Content ID="content2" ContentPlaceHolderID ="pay" runat="server" >

        <ul>
          <li ><a href="Profile.aspx"><span>Profile</span></a></li>
          <li ><a href="Payment.aspx"><span>Payment</span></a></li>
          <li class="active"><a href="Histroy.aspx"><span>History</span></a></li>
          <li><a href="logout.aspx"><span>Log out</span></a></li>
          
        </ul>
          </asp:Content>

<asp:Content ID="content1" ContentPlaceHolderID ="try" runat="server" >
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource_grid" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT [Receipt_id], [sem], [Fee_type], [time_span], [Amount] FROM [Fees_detail] ORDER BY [time_span]"></asp:SqlDataSource>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Receipt_id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" >
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
            <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString %>" SelectCommand="SELECT * FROM [Fees_detail] WHERE ([Acc_id] = @Acc_id)">
            <SelectParameters>
                <asp:SessionParameter Name="Acc_id" SessionField="Accid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    
    </div>
        </asp:Content>