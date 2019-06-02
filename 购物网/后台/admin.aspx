<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="购物网.后台.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <LINK href="../css/css.css" type="text/css" rel="stylesheet">
    <title>后台管理</title>
</head>
<body>
    <form id="form1" runat="server">
   <FONT face="宋体">
				<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="600" border="1" runat="server">
					<TR>
						<TD bgColor="#ffccff">管理员信息</TD>
					</TR>
					<TR>
						<TD width="100%">
							<asp:DataGrid id="DataGrid1" runat="server" AutoGenerateColumns="False" Width="100%" OnDeleteCommand="DataGrid1_DeleteCommand">
								<Columns>
									<asp:BoundColumn DataField="adminid" ReadOnly="True" HeaderText="编号"></asp:BoundColumn>
									<asp:BoundColumn DataField="adminname" ReadOnly="True" HeaderText="账号"></asp:BoundColumn>
									<asp:BoundColumn DataField="adminpassword" ReadOnly="True" HeaderText="密码"></asp:BoundColumn>
									<asp:ButtonColumn Text="删除" HeaderText="删除" CommandName="Delete"></asp:ButtonColumn>
								</Columns>
							</asp:DataGrid></TD>
					</TR>
					<TR>
						<TD>
							<asp:Button id="Button1" runat="server" Text="增加管理员" onclick="Button1_Click"></asp:Button>&nbsp;&nbsp;
							<asp:Button id="Button3" runat="server" Width="88px" Text="修改密码" onclick="Button3_Click"></asp:Button></TD>
					</TR>
					<TR>
						<TD>
							<asp:Panel id="Panel1" runat="server" Visible="False">
								<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="500" border="1">
									<TR>
										<TD>管理员账号:</TD>
										<TD>
											<asp:TextBox id="TextBox1" runat="server"></asp:TextBox>
											<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="不能为空" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></TD>
									</TR>
									<TR>
										<TD>管理员密码:</TD>
										<TD>
											<asp:TextBox id="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
											<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="不能为空" ControlToValidate="TextBox2"
												Display="Dynamic"></asp:RequiredFieldValidator></TD>
									</TR>
									<TR>
										<TD>确认密码:</TD>
										<TD id="TD1">
											<asp:TextBox id="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
											<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="不能为空" ControlToValidate="TextBox3"
												Display="Dynamic"></asp:RequiredFieldValidator>
											<asp:CompareValidator id="CompareValidator1" runat="server" ErrorMessage="密码不一致" ControlToValidate="TextBox3"
												Display="Dynamic" ControlToCompare="TextBox2"></asp:CompareValidator></TD>
									</TR>
									<TR>
										<TD align="center" colSpan="2">
											<asp:Button id="Button2" runat="server" Text="确定" onclick="Button2_Click"></asp:Button></TD>
									</TR>
								</TABLE>
							</asp:Panel></TD>
					</TR>
					<TR>
						<TD>
							<asp:Panel id="Panel2" runat="server" Visible="False">
								<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="500" border="1">
									<TR>
										<TD>新密码:</TD>
										<TD>
											<asp:TextBox id="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
											<asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ErrorMessage="不能为空" ControlToValidate="TextBox4"></asp:RequiredFieldValidator></TD>
									</TR>
									<TR>
										<TD>确认密码:</TD>
										<TD>
											<asp:TextBox id="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
											<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ErrorMessage="不能为空" ControlToValidate="TextBox5"
												Display="Dynamic"></asp:RequiredFieldValidator>
											<asp:CompareValidator id="CompareValidator2" runat="server" ErrorMessage="密码不一致" ControlToValidate="TextBox5"
												Display="Dynamic" ControlToCompare="TextBox4"></asp:CompareValidator></TD>
									</TR>
									<TR>
										<TD align="center" colSpan="2">
											<asp:Button id="Button4" runat="server" Text="确定" onclick="Button4_Click"></asp:Button></TD>
									</TR>
								</TABLE>
							</asp:Panel></TD>
					</TR>
				</TABLE>
			</FONT>
    </form>
</body>
</html>
