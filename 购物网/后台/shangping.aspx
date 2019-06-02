<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shangping.aspx.cs" Inherits="购物网.后台.shangping" %>

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
				<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="100%" border="0">
					<TR>
						<td bgColor="#ffff99">商品管理</td>
					</TR>
					<TR>
						<TD>
							<TABLE id="Table2" cellSpacing="0" cellPadding="1" border="0">
								<TR>
									<TD align="left" width="20%"><A href="shangpingadd.aspx" target="_blank">增加商品</A></TD>
									<TD width="20%"><asp:dropdownlist id="DropDownList4" runat="server" Width="88px"></asp:dropdownlist><asp:button id="Button1" runat="server" Height="22px" Text="查看" onclick="Button1_Click"></asp:button></TD>
									<TD width="20%"><asp:dropdownlist id="DropDownList5" runat="server" Width="112px" onselectedindexchanged="DropDownList5_SelectedIndexChanged"></asp:dropdownlist><asp:button id="Button2" runat="server" Height="22px" Text="查看" onclick="Button2_Click"></asp:button></TD>
									<TD align="left" width="20%"><asp:button id="Button3" runat="server" Width="64px" Height="22px" Text="查看全部" onclick="Button3_Click"></asp:button></TD>
									<TD width="20%"></TD>
								</TR>
							</TABLE>
							商品管理
						</TD>
					</TR>
					<TR>
						<TD><asp:datagrid id="DataGrid1" runat="server" AllowPaging="True" PageSize="15" AllowSorting="True"
								Width="100%" AutoGenerateColumns="False" onselectedindexchanged="DataGrid1_SelectedIndexChanged" OnCancelCommand="DataGrid1_CancelCommand" OnDeleteCommand="DataGrid1_DeleteCommand" OnEditCommand="DataGrid1_EditCommand" OnItemCommand="DataGrid1_ItemCommand" OnItemDataBound="DataGrid1_ItemDataBound" OnPageIndexChanged="DataGrid1_PageIndexChanged" OnSortCommand="DataGrid1_SortCommand" OnUpdateCommand="DataGrid1_UpdateCommand" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
								<FooterStyle BackColor="#CCCC99" />
								<HeaderStyle Wrap="False" BackColor="#6B696B" Font-Bold="True" ForeColor="White"></HeaderStyle>
								<AlternatingItemStyle BackColor="White" />
								<Columns>
									<asp:BoundColumn DataField="shangpingid" SortExpression="shangpingid" ReadOnly="True" HeaderText="编号"></asp:BoundColumn>
									<asp:BoundColumn DataField="shangpingname" SortExpression="shangpingname" HeaderText="商品名"></asp:BoundColumn>
									<asp:BoundColumn DataField="spec" SortExpression="spec" HeaderText="规格"></asp:BoundColumn>
									<asp:BoundColumn DataField="shangpingpingpai" SortExpression="shangpingpingpai" HeaderText="品牌"></asp:BoundColumn>
									<asp:BoundColumn DataField="quantity" SortExpression="quantity" ReadOnly="True" HeaderText="库存数量"></asp:BoundColumn>
									<asp:BoundColumn DataField="price" SortExpression="price" HeaderText="价格"></asp:BoundColumn>
									<asp:BoundColumn DataField="totalprice" SortExpression="totalprice" ReadOnly="True" HeaderText="总价格"></asp:BoundColumn>
									<asp:BoundColumn DataField="chushouprice" SortExpression="chushouprice" HeaderText="销售价格"></asp:BoundColumn>
									<asp:TemplateColumn HeaderText="类别名">
										<ItemTemplate>
											<asp:Label id=Label1 runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.leibiename") %>'>
											</asp:Label>
										</ItemTemplate>
										<EditItemTemplate>
											<asp:DropDownList id="DropDownList1" runat="server" Width="75px"></asp:DropDownList>
										</EditItemTemplate>
									</asp:TemplateColumn>
									<asp:TemplateColumn HeaderText="网站分类">
										<ItemTemplate>
											<asp:Label id=Label2 runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.fenleiname") %>'>
											</asp:Label>
										</ItemTemplate>
										<EditItemTemplate>
											<asp:DropDownList id="DropDownList2" runat="server" Width="83px"></asp:DropDownList>
										</EditItemTemplate>
									</asp:TemplateColumn>
									<asp:TemplateColumn HeaderText="供应商">
										<ItemTemplate>
											<asp:Label id=Label3 runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.gysname") %>'>
											</asp:Label>
										</ItemTemplate>
										<EditItemTemplate>
											<asp:DropDownList id="DropDownList3" runat="server" Width="99px"></asp:DropDownList>
										</EditItemTemplate>
									</asp:TemplateColumn>
									<asp:BoundColumn DataField="pic" SortExpression="pic" HeaderText="图片"></asp:BoundColumn>
									<asp:BoundColumn DataField="beizhu" SortExpression="beizhu" HeaderText="备注"></asp:BoundColumn>
									<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="更新" HeaderText="选择" CancelText="取消" EditText="编辑"></asp:EditCommandColumn>
									<asp:ButtonColumn Text="删除" HeaderText="删除" CommandName="Delete"></asp:ButtonColumn>
									<asp:BoundColumn Visible="False" DataField="leibieid" SortExpression="leibieid" ReadOnly="True" HeaderText="leibieid"></asp:BoundColumn>
									<asp:BoundColumn Visible="False" DataField="fenleiid" SortExpression="fenleiid" HeaderText="fenleiid"></asp:BoundColumn>
									<asp:TemplateColumn HeaderText="查看图片">
										<ItemTemplate>
											<asp:Button id="Button4" runat="server" Text="查看" CommandName="chakan"></asp:Button>
										</ItemTemplate>
									</asp:TemplateColumn>
								</Columns>
								<ItemStyle BackColor="#F7F7DE" />
								<PagerStyle HorizontalAlign="Right" Mode="NumericPages" BackColor="#F7F7DE" ForeColor="Black"></PagerStyle>
							    <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
							</asp:datagrid></TD>
					</TR>
					<TR>
						<TD></TD>
					</TR>
				</TABLE>
			</FONT>
    </form>
</body>
</html>
