<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="houtaigongyingshang.aspx.cs" Inherits="购物网.后台.houtaigongyingshang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <LINK href="../css/css.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <FONT face="宋体" id="FONT1" runat="server">
				<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0">
					<TR>
						<TD id="Td2" runat="server">
							<asp:Panel id="Panel1" runat="server" Visible="False">
								<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="100%" border="1" runat="server">
									<TR>
										<TD>
											<P>供应商称:
												<asp:TextBox id="TextBox1" runat="server" Width="88px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;
											</P>
										</TD>
									</TR>
									<TR>
										<TD>联 系 人:&nbsp;
											<asp:TextBox id="TextBox2" runat="server" Width="96px"></asp:TextBox>&nbsp;&nbsp;
										</TD>
									</TR>
									<TR>
										<TD style="HEIGHT: 22px">联系电话:
											<asp:TextBox id="TextBox3" runat="server" Width="128px"></asp:TextBox>&nbsp;&nbsp;&nbsp;
											<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" Width="48px" ErrorMessage="*" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>&nbsp;&nbsp;
										</TD>
									</TR>
									<TR>
										<TD>电子邮件:&nbsp;
											<asp:TextBox id="TextBox4" runat="server" Width="144px"></asp:TextBox></TD>
									</TR>
									<TR>
										<TD>公司地址:
											<asp:TextBox id="TextBox5" runat="server" Width="232px"></asp:TextBox>&nbsp;&nbsp;
											<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox5"></asp:RequiredFieldValidator></TD>
									</TR>
									<TR>
										<TD>
											<asp:Button id="Button2" runat="server" Text="新增" onclick="Button2_Click"></asp:Button></TD>
									</TR>
									<TR>
										<TD></TD>
									</TR>
								</TABLE>
							</asp:Panel></TD>
					</TR>
					<TR>
						<TD id="TD1" runat="server">
							<asp:Button id="Button1" runat="server" Text="增加数据" onclick="Button1_Click"></asp:Button></TD>
					</TR>
					<TR>
						<TD align="center">
							供应商管理</TD>
					</TR>
					<TR>
						<TD>
							<asp:DataGrid id="DataGrid1" runat="server" Width="100%" Height="100%" AllowSorting="True" AutoGenerateColumns="False"
								PageSize="3" AllowPaging="True" OnCancelCommand="DataGrid1_CancelCommand" OnDeleteCommand="DataGrid1_DeleteCommand" OnEditCommand="DataGrid1_EditCommand" OnPageIndexChanged="DataGrid1_PageIndexChanged" OnSortCommand="DataGrid1_SortCommand" OnUpdateCommand="DataGrid1_UpdateCommand" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
								<AlternatingItemStyle BackColor="White" />
								<Columns>
									<asp:BoundColumn DataField="gysID" SortExpression="gysID" ReadOnly="True" HeaderText="编号"></asp:BoundColumn>
									<asp:BoundColumn DataField="gysname" SortExpression="gysname" HeaderText="供应商名称"></asp:BoundColumn>
									<asp:BoundColumn DataField="gyslinkman" SortExpression="gyslinkman" HeaderText="联系人"></asp:BoundColumn>
									<asp:BoundColumn DataField="telephone" SortExpression="telephone" HeaderText="联系电话"></asp:BoundColumn>
									<asp:BoundColumn DataField="email" SortExpression="email" HeaderText="电子邮件"></asp:BoundColumn>
									<asp:BoundColumn DataField="address" SortExpression="address" HeaderText="公司地址"></asp:BoundColumn>
									<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="更新" HeaderText="选择" CancelText="取消" EditText="编辑"></asp:EditCommandColumn>
									<asp:ButtonColumn Text="删除" HeaderText="删除" CommandName="Delete"></asp:ButtonColumn>
								</Columns>
								<FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                <ItemStyle BackColor="#F7F7DE" />
								<PagerStyle HorizontalAlign="Right" Mode="NumericPages" BackColor="#F7F7DE" ForeColor="Black"></PagerStyle>
							    <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
							</asp:DataGrid></TD>
					</TR>
					<TR>
						<TD></TD>
					</TR>
				</TABLE>
			</FONT>
    </form>
</body>
</html>
