<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeesDetail.aspx.cs" Inherits="online_payment_system.pages.FeesDetail" MasterPageFile ="~/pages/Home.Master" %>

 <asp:Content ID="content2" ContentPlaceHolderID ="menu" runat="server" >
 

        <ul>
          <li ><a href="Home.aspx"><span>Home Page</span></a></li>
          <li class="active"><a   href="FeesDetail.aspx"><span>Fees Detail</span></a></li>
          <li ><a  href="login.aspx"><span>Payment</span></a></li>
          <li ><a  href="Help.aspx"><span>Help</span></a></li>
          <li><a  href="login.aspx"><span>Log In</span></a></li>
        </ul>

       </asp:Content>

   <asp:Content ID="content1" ContentPlaceHolderID ="cont" runat="server" >
    
            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource_drp1" DataTextField="Course" DataValueField="Course" Height="37px" Width="201px">
           <asp:ListItem Text="All courses" Value="" />
                 </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource_drp2" DataTextField="sem" DataValueField="sem" Height="37px" Width="201px">
            </asp:DropDownList>
            <br />
        <br />
            <asp:SqlDataSource ID="SqlDataSource_drp2" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString1 %>" SelectCommand="SELECT DISTINCT [sem] FROM [Head_detail]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_drp1" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString1 %>" SelectCommand="SELECT DISTINCT [Course] FROM [Head_detail]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="349px" style="text-align: center; margin-top: 0px;" Width="671px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                    <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
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
&nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pay_onlineConnectionString1 %>" SelectCommand="SELECT [Course], [sem], [Amount] FROM [Head_detail]" FilterExpression="Course = '{0}' and sem='{1}'">
                <FilterParameters>
        <asp:ControlParameter Name="Course" ControlID="DropDownList1" PropertyName="SelectedValue" />
         <asp:ControlParameter Name="sem" ControlID="DropDownList2" PropertyName="SelectedValue" />
             </FilterParameters>

            </asp:SqlDataSource>
                    
   </asp:Content>
 
     