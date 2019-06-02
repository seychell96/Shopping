<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="huiyuanzhongxin.aspx.cs" Inherits="购物网.huiyuanzhongxin" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="down" Src="down.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <LINK href="css/css2.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>会员中心</title>
</head>
<body>
    <form id="form1" runat="server">
    <!---------项部--------------->
			<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="885" align="center" border="0">
				<TR>
					<TD><FONT face="宋体">
							<uc1:top id="Top1" runat="server"></uc1:top></FONT></TD>
				</TR>
			</TABLE>
			<!---------中部--------------->
			<TABLE id="Table2" cellSpacing="0" cellPadding="1" width="620" align="center" border="0"
				runat="server">
				<tr>
					<td bgColor="#99ffff">修改密码
					</td>
				</tr>
				<tr>
					<td>
						<TABLE id="Table4" cellSpacing="0" cellPadding="1" width="100%" border="0">
							<TR>
								<TD width="20%" align="right">原密码:</TD>
								<TD><FONT face="宋体">
										<asp:TextBox id="TextBox1" runat="server"></asp:TextBox></FONT></TD>
							</TR>
							<TR>
								<TD width="20%" align="right">新密码:</TD>
								<TD>
									<asp:TextBox id="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
									<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="不能为空" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></TD>
							</TR>
							<TR>
								<TD width="20%" align="right">确认新密码:</TD>
								<TD><FONT face="宋体">
										<asp:TextBox id="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
										<asp:CompareValidator id="CompareValidator1" runat="server" ErrorMessage="两次密码不一致" ControlToCompare="TextBox2"
											ControlToValidate="TextBox3" Display="Dynamic"></asp:CompareValidator>
										<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="不能为空" ControlToValidate="TextBox3"
											Display="Dynamic"></asp:RequiredFieldValidator></FONT></TD>
							</TR>
							<tr>
								<td height="18"></td>
								<td></td>
							</tr>
							<TR>
								<TD width="20%"></TD>
								<TD>
									<asp:Button id="Button1" runat="server" Text="修改确定" onclick="Button1_Click"></asp:Button></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
			</TABLE>
			<!---------底部--------------->
			<TABLE id="Table3" cellSpacing="0" cellPadding="1" width="885" align="center" border="0"
				runat="server">
				<TR>
					<TD id="TD1" runat="server"><FONT face="宋体">
							<uc1:down id="Down1" runat="server"></uc1:down></FONT></TD>
				</TR>
			</TABLE>
    </form>
</body>
</html>
