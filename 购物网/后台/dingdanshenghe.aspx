<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dingdanshenghe.aspx.cs" Inherits="购物网.后台.dingdanshenghe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <LINK href="../css/css.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>订单审核</title>
</head>
<body>
    <form id="form1" runat="server">
    <TABLE id="Table1" cellSpacing="1" cellPadding="1" width="100%" border="1">
				<TR>
					<TD bgColor="#ffff99">定单审核</TD>
				</TR>
				<TR>
					<TD>
						<asp:DataGrid id="DataGrid1" runat="server" AllowSorting="True" Width="100%" AutoGenerateColumns="False"
							AllowPaging="True" OnDeleteCommand="DataGrid1_DeleteCommand" OnItemCommand="DataGrid1_ItemCommand" OnPageIndexChanged="DataGrid1_PageIndexChanged" OnSortCommand="DataGrid1_SortCommand">
							<Columns>
								<asp:BoundColumn DataField="dingdanid" SortExpression="dingdanid" HeaderText="定单编号"></asp:BoundColumn>
								<asp:BoundColumn DataField="useradmin" SortExpression="useradmin" HeaderText="会员名"></asp:BoundColumn>
								<asp:BoundColumn DataField="shangpingid" SortExpression="shangpingid" HeaderText="商品编号"></asp:BoundColumn>
								<asp:BoundColumn DataField="quantity" SortExpression="quantity" HeaderText="数量"></asp:BoundColumn>
								<asp:BoundColumn DataField="totalprice" SortExpression="totalprice" HeaderText="总金额"></asp:BoundColumn>
								<asp:BoundColumn DataField="username" SortExpression="username" HeaderText="用户名"></asp:BoundColumn>
								<asp:BoundColumn DataField="usertelphone" SortExpression="usertelphone" HeaderText="用户电话"></asp:BoundColumn>
								<asp:BoundColumn DataField="useraddress" SortExpression="useraddress" HeaderText="址址"></asp:BoundColumn>
								<asp:BoundColumn DataField="dingdanbeizhu" SortExpression="dingdanbeizhu" HeaderText="备注"></asp:BoundColumn>
								<asp:ButtonColumn Text="删除" HeaderText="删除" CommandName="Delete"></asp:ButtonColumn>
								<asp:TemplateColumn HeaderText="审核">
									<ItemTemplate>
										<FONT face="宋体">
											<asp:Button id="Button1" runat="server" Text="审核" CommandName="shenghe"></asp:Button></FONT>
									</ItemTemplate>
								</asp:TemplateColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Center" Mode="NumericPages"></PagerStyle>
						</asp:DataGrid></TD>
				</TR>
				<TR>
					<TD></TD>
				</TR>
				<TR>
					<TD></TD>
				</TR>
			</TABLE>
    </form>
</body>
</html>
