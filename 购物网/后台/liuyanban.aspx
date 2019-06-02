<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="liuyanban.aspx.cs" Inherits="购物网.后台.liuyanban" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <LINK href="../css/css2.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <TABLE id="Table1" cellSpacing="0" cellPadding="1" width="600" border="0">
				<TR>
					<TD>
						<asp:DataGrid id="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" Width="100%"
							AllowPaging="True" OnDeleteCommand="DataGrid1_DeleteCommand" OnItemCommand="DataGrid1_ItemCommand" OnPageIndexChanged="DataGrid1_PageIndexChanged" OnSortCommand="DataGrid1_SortCommand" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
							<AlternatingItemStyle BackColor="White" />
							<Columns>
								<asp:BoundColumn DataField="lybid" SortExpression="lybid" HeaderText="编号"></asp:BoundColumn>
								<asp:BoundColumn DataField="username" SortExpression="username" HeaderText="用户名"></asp:BoundColumn>
								<asp:BoundColumn DataField="useremail" SortExpression="useremail" HeaderText="电子邮件"></asp:BoundColumn>
								<asp:ButtonColumn Text="删除" HeaderText="删除" CommandName="Delete"></asp:ButtonColumn>
								<asp:TemplateColumn HeaderText="查看内容">
									<ItemTemplate>
										<asp:Button id="Button1" runat="server" Text="查看" CommandName="chakan"></asp:Button>
									</ItemTemplate>
								</asp:TemplateColumn>
							</Columns>
							<FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <ItemStyle BackColor="#F7F7DE" />
							<PagerStyle HorizontalAlign="Right" Mode="NumericPages" BackColor="#F7F7DE" ForeColor="Black"></PagerStyle>
						    <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
						</asp:DataGrid></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体"></FONT></TD>
				</TR>
				<TR>
					<TD>
						<asp:Panel id="Panel1" runat="server" Visible="False">
							<FONT face="宋体">
								<TABLE id="Table2" cellSpacing="0" cellPadding="1" width="100%" border="0">
									<TR>
										<TD>文章内容:</TD>
									</TR>
									<TR>
										<TD>
											<asp:Label id="Label1" runat="server" Width="100%"></asp:Label></TD>
									</TR>
								</TABLE>
							</FONT>
						</asp:Panel></TD>
				</TR>
			</TABLE>
    </form>
</body>
</html>
