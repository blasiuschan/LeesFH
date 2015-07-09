<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Financial.aspx.cs" Inherits="LeesFamilyHome.Financial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
    <title></title>
</head>
<body style="height: 374px">
    <form id="form1" runat="server">
    <div style="height: 55px">
    
    &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Month"></asp:Label>
&nbsp;
        <asp:DropDownList ID="Month1" runat="server" autopostback="True" Height="41px" Width="64px" >
            <asp:ListItem selected="True">1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
        <link href="Financialcss.css" rel="stylesheet" type="text/css" />
       


   &nbsp;&nbsp; Standard Monthly payment

    
        <asp:GridView ID="dgvReport" runat="server" DataSourceID="SqlDataSource5" CssClass="GridViewStyle" Height="377px" Width="971px" AutoGenerateColumns="False" OnDataBound="dgvReport_DataBound">
            
            <FooterStyle CssClass="FooterStyle" />

            <RowStyle CssClass="RowStyle" />

            <EmptyDataRowStyle CssClass="EmptyRowStyle" />

            <PagerStyle CssClass="PagerStyle" />

            <SelectedRowStyle CssClass="SelectedRowStyle" />

            <HeaderStyle CssClass="HeaderStyle" BackColor="#99CCFF" />

            <Columns>
                <asp:BoundField DataField="Mdate" HeaderText="Mdate" SortExpression="Mdate" />
                <asp:BoundField DataField="PayPart" HeaderText="PayPart" SortExpression="PayPart" />
                <asp:BoundField DataField="PayName" HeaderText="PayName" SortExpression="PayName" />
                <asp:BoundField DataField="NAmount" HeaderText="NAmount" SortExpression="NAmount" />
                <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
                <asp:BoundField DataField="PayDate" HeaderText="PayDate" SortExpression="PayDate" />
                <asp:BoundField DataField="AutoPay" HeaderText="AutoPay" SortExpression="AutoPay" />
            </Columns>

            <EditRowStyle CssClass="EditRowStyle" />

            <AlternatingRowStyle CssClass="AltRowStyle" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="Data Source=104.15.177.129,40716;Initial Catalog=Lees;Persist Security Info=True;User ID=sa;Password=tjgus2014@$" ProviderName="System.Data.SqlClient" SelectCommand="SELECT  Mdate, PayPart, PayName, NAmount, DueDate, PayDate, AutoPay
FROM     HPayment
WHERE  (Mdate = Datefromparts(Year(Getdate()) , @Mon , '1'))
ORDER BY DueDate">
            <SelectParameters>
                <asp:ControlParameter ControlID="Month1" Name="Mon" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:LeesConnectionHome %>" SelectCommand="select Mdate, PayPart, PayName, NAmount, DueDate, PayDate, AutoPay from HPayment
  where Mdate = Datefromparts(Year(Getdate()) , @Mon , '1')
">
            <SelectParameters>
                <asp:ControlParameter ControlID="Month1" DefaultValue="1" Name="Mon" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LeesConnectionString2 %>" SelectCommand="SELECT Mdate, PayPart, PayName, NAmount, DueDate, PayDate, AutoPay FROM HPayment WHERE (Mdate = Datefromparts(YEAR(GETDATE()), @mon, '1')) ORDER BY DueDate">
            <SelectParameters>
                <asp:ControlParameter ControlID="Month1" DefaultValue="1" Name="mon" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Total"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="txtTotal" runat="server" Font-Bold="True" Font-Size="Small" Height="22px"></asp:TextBox>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LeesConnectionString %>" SelectCommand="SELECT * FROM [board]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=104.15.177.129,40716;Initial Catalog=Lees;Persist Security Info=True;User ID=sa;Password=tjgus2014@$" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [board]"></asp:SqlDataSource>
        
    </div>

    </form>
</body>
</html>

