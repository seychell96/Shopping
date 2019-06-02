<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="购物网.后台.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理登录</title>
    <meta name="description"  content="舞台上最闪耀的星星变成了夜空中最闪耀的星星，你的音乐对于我们是温暖的怀抱。人生就是相遇和分手的连续虽然马上回很遗憾很伤心，但是在这个过程中也不成长着">
    <meta name="keywords"  content="团体组合">
    <link rel="stylesheet" href="css/normalize.css" type="text/css">
    <link rel="stylesheet" href="css/base.css" type="text/css">
    <link href="https://fonts.gdgdocs.org/css?family=Lobster" rel="stylesheet" type="text/css">
</head>
<body background="images/gh.jpg">
    <form id="form1" runat="server">
         <div class="z">
          <div>
              <h1 class="a" align="center">闽江学院购物系统管理</h1>
          </div>
          <div class="c">
              <div class="d">
    <TABLE cellSpacing="0" cellPadding="2" align="center" border="0" style="WIDTH: 419px; HEIGHT: 200px; BACKGROUND-COLOR: #ccffff">
				<TBODY>
					<TR>
						
					</TR>
					<TR>
						<TD align="right" style="WIDTH: 69px; HEIGHT: 30px">用户名：</TD>
						<TD align="left" colSpan="2" style="WIDTH: 208px; HEIGHT: 30px"><INPUT class="input1" size="30" name="LoginName" style="WIDTH: 216px; HEIGHT: 30px" id="Text1"
								runat="server" maxLength="20"></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 69px; HEIGHT: 18px" align="right">密 码：</TD>
						<TD align="left" colSpan="2" style="WIDTH: 208px; HEIGHT: 18px"><INPUT class="input1" type="password" maxLength="20" size="30" name="LoginPass" style="WIDTH: 214px; HEIGHT: 28px"
								id="Password1" runat="server"></TD>
					</TR>					
					<TR>
						<TD align="center" colspan="3" style="HEIGHT: 106px">
							<asp:Button id="Button1" runat="server" Text=" 登 陆 " onclick="Button1_Click"></asp:Button><FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button id="Button2" runat="server" Text=" 返 回 " onclick="Button2_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</FONT>
							</TD>
					</TR>
				</TBODY>
			</TABLE>
                  </div>
              </div>
             </div>
    </form>
</body>
</html>
