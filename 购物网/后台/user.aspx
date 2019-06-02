<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="购物网.后台.user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <LINK href="../css/css.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <FONT face="宋体">
				<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="90%" border="1">
					<tr>
						<td>
							用户名:
							<asp:TextBox id="TextBox1" runat="server"></asp:TextBox>
							<asp:Button id="Button1" runat="server" Text="查找" onclick="Button1_Click"></asp:Button>
						</td>
					</tr>
					<TR>
						<TD>
							<asp:DataGrid id="DataGrid1" runat="server" Width="100%" AllowSorting="True" AutoGenerateColumns="False"
								PageSize="20" AllowPaging="True" OnDeleteCommand="DataGrid1_DeleteCommand" OnPageIndexChanged="DataGrid1_PageIndexChanged" OnSortCommand="DataGrid1_SortCommand" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
								<AlternatingItemStyle BackColor="White" />
								<Columns>
									<asp:BoundColumn DataField="userid" SortExpression="userid" ReadOnly="True" HeaderText="编号"></asp:BoundColumn>
									<asp:BoundColumn DataField="useradmin" SortExpression="useradmin" HeaderText="用户名"></asp:BoundColumn>
									<asp:BoundColumn DataField="username" SortExpression="username" HeaderText="姓名"></asp:BoundColumn>
									<asp:BoundColumn DataField="useremail" SortExpression="useremail" HeaderText="电子邮件"></asp:BoundColumn>
									<asp:ButtonColumn Text="删除" HeaderText="删除" CommandName="Delete"></asp:ButtonColumn>
								</Columns>
								<FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                <ItemStyle BackColor="#F7F7DE" />
								<PagerStyle HorizontalAlign="Right" Mode="NumericPages" BackColor="#F7F7DE" ForeColor="Black"></PagerStyle>
							    <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
							</asp:DataGrid></TD>
					</TR>
				</TABLE>
			</FONT>
    </form>
</body>
</html>
