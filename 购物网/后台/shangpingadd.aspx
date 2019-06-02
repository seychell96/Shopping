<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shangpingadd.aspx.cs" Inherits="购物网.后台.shangpingadd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <LINK href="../css/css.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>添加商品</title>
</head>
<body>
    <form id="form1" runat="server">
    <TABLE id="Table1" align="center" cellSpacing="1" cellPadding="1" width="80%" border="1"
				class="table2">
				<TR>
					<TD align="center"><FONT face="宋体">增加商品</FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">商 品 名:&nbsp;&nbsp;
							<asp:TextBox id="TextBox1" runat="server"></asp:TextBox></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">商品规格: &nbsp;
							<asp:TextBox id="Textbox2" runat="server"></asp:TextBox></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">商品品牌: &nbsp;
							<asp:TextBox id="Textbox3" runat="server"></asp:TextBox></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">添加数量: &nbsp;
							<asp:TextBox id="Textbox4" runat="server"></asp:TextBox></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">商品价格: &nbsp;
							<asp:TextBox id="Textbox5" runat="server"></asp:TextBox></FONT></TD>
				</TR>
				<tr>
					<td><FONT face="宋体"> 出售价格:&nbsp;&nbsp;
							<asp:TextBox id="TextBox6" runat="server" Width="152px"></asp:TextBox></FONT>
					</td>
				</tr>
				<TR>
					<TD><FONT face="宋体">商品类别: &nbsp;
							<asp:DropDownList id="DropDownList1" runat="server" Width="112px"></asp:DropDownList></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">网站分类: &nbsp;
							<asp:DropDownList id="DropDownList2" runat="server" Width="112px"></asp:DropDownList></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">供应商名: &nbsp;
							<asp:DropDownList id="DropDownList3" runat="server" Width="112px"></asp:DropDownList></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">商品图片:&nbsp; &nbsp;<INPUT type="file" id="File1" style="WIDTH: 400px; HEIGHT: 22px" size="47" name="File1"
								runat="server"></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体"> 商品说明:&nbsp;&nbsp;
							<asp:TextBox id="Textbox7" runat="server" Width="368px"></asp:TextBox></FONT></TD>
				</TR>
				<TR>
					<TD align="center"><FONT face="宋体">
							<asp:Button id="Button1" runat="server" Text="确定" onclick="Button1_Click"></asp:Button>&nbsp;&nbsp;
							<asp:Button id="Button2" runat="server" Text="退出" onclick="Button2_Click"></asp:Button></FONT></TD>
				</TR>
			</TABLE>
    </form>
</body>
</html>
