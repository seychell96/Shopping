<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dingdan.aspx.cs" Inherits="购物网.后台.dingdan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <LINK href="../css/css.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>订单</title>
</head>
<body>
    <form id="form1" runat="server">
    <TABLE id="Table1" cellSpacing="1" cellPadding="1" width="100%" border="1">
				<TR>
					<TD>
						<asp:DataGrid id="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" PageSize="15"
							AllowPaging="True" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" OnSortCommand="DataGrid1_SortCommand">
							<Columns>
								<asp:BoundColumn DataField="dingdanid" SortExpression="dingdanid" ReadOnly="True" HeaderText="定单编号"></asp:BoundColumn>
								<asp:BoundColumn DataField="useradmin" SortExpression="useradmin" HeaderText="会员名"></asp:BoundColumn>
								<asp:BoundColumn DataField="shangpingid" SortExpression="shangpingid" HeaderText="商品编号"></asp:BoundColumn>
								<asp:BoundColumn DataField="quantity" SortExpression="quantity" HeaderText="数量"></asp:BoundColumn>
								<asp:BoundColumn DataField="totalprice" SortExpression="totalprice" HeaderText="总金额"></asp:BoundColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Center" Mode="NumericPages"></PagerStyle>
						</asp:DataGrid></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">查找:
							<asp:DropDownList id="DropDownList1" runat="server" Width="88px">
								<asp:ListItem Value="定单编号">定单编号</asp:ListItem>
								<asp:ListItem Value="会员名">会员名</asp:ListItem>
								<asp:ListItem Value="商品编号">商品编号</asp:ListItem>
								<asp:ListItem Value="显示全部">显示全部</asp:ListItem>
							</asp:DropDownList>
							<asp:TextBox id="TextBox1" runat="server"></asp:TextBox>
							<asp:Button id="Button1" runat="server" Width="88px" Text="查找" onclick="Button1_Click"></asp:Button></FONT></TD>
				</TR>
				<TR>
					<TD></TD>
				</TR>
			</TABLE>
    </form>
</body>
</html>
