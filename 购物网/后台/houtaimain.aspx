<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="houtaimain.aspx.cs" Inherits="购物网.后台.houtaimain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <frameset id="top" border="0" frameSpacing="0" rows="50,80%" frameBorder="0">
		<frame name="Top" src="houtaitop.aspx" noResize scrolling="no">
		<frameset id="frame" cols="100,85%">
			<frame name="left" src="houtaimenu.aspx" scrolling="no">
			<frame name="main" src="houtaigongyingshang.aspx">
		</frameset>
	</frameset>
</head>
</html>
