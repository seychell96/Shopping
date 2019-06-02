<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shangpingleibie.aspx.cs" Inherits="购物网.后台.shangpingleibie" %>

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
				<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="50%" border="0" runat="server">
					<TR>
						<TD style="HEIGHT: 19px">
							商品类别:</TD>
					</TR>
					<TR>
						<TD>
							<asp:DataGrid id="DataGrid1" runat="server" AutoGenerateColumns="False" Width="100%" OnDeleteCommand="DataGrid1_DeleteCommand" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
								<AlternatingItemStyle BackColor="White" />
								<Columns>
									<asp:BoundColumn DataField="leibieid" SortExpression="leibieid" ReadOnly="True" HeaderText="类别编号"></asp:BoundColumn>
									<asp:BoundColumn DataField="leibiename" SortExpression="leibiename" HeaderText="类别名"></asp:BoundColumn>
									<asp:ButtonColumn Text="删除" HeaderText="删除" CommandName="Delete"></asp:ButtonColumn>
								</Columns>
							    <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                <ItemStyle BackColor="#F7F7DE" />
                                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" Mode="NumericPages" />
                                <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
							</asp:DataGrid></TD>
					</TR>
					<TR>
						<TD>
							<asp:Button id="Button1" runat="server" Text="新增类别" onclick="Button1_Click"></asp:Button></TD>
					</TR>
					<TR>
						<TD>
							<asp:Panel id="Panel1" runat="server" Visible="False">
								<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="300" border="1" runat="server">
									<TR>
										<TD>类别名:
											<asp:TextBox id="TextBox1" runat="server" Width="112px"></asp:TextBox></TD>
									</TR>
									<TR>
										<TD>
											<asp:Button id="Button2" runat="server" Text="确定" onclick="Button2_Click"></asp:Button></TD>
									</TR>
								</TABLE>
							</asp:Panel></TD>
					</TR>
				</TABLE>
			</FONT>
    </form>
</body>
</html>
