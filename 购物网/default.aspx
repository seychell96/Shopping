<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="购物网.MainPage" %>
<%@ Register TagPrefix="uc1" TagName="down" Src="Down.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="Top.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <LINK href="css/css2.css" type="text/css" rel="stylesheet">
    <title>闽江学院购物网</title>
</head>
<body topMargin="0">
    <form id="form1" runat="server">
    <!---------项部--------------->
        <TABLE id="Table1" cellSpacing="0" cellPadding="1" width="885" align="center" border="0">
				<TR>
					<TD><uc1:top id="Top1" runat="server"></uc1:top></TD>
				</TR>
			</TABLE>
        <!---------中部--------------->
			<TABLE id="Table2" cellSpacing="0" cellPadding="1" width="885" align="center" border="0"
				runat="server">
				<TR>
					<TD class="border-r" vAlign="top" align="center" width="255">
						<TABLE id="Table4" cellSpacing="0" cellPadding="1" width="255" border="0" runat="server">
							<tr>
								<td><FONT face="宋体">
										<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="255" align="left" border="0"
											runat="server">
											<TBODY>
												<TR>
													<TD align="center">
														<TABLE id="Table22" cellSpacing="0" cellPadding="0" width="249" border="0">
															<TBODY>
																<TR>
																	<TD width="4%" background="background/y1.jpg"><IMG height="27" src="background/y1_left.jpg" width="4"></TD>
																	<TD width="93%" background="background/y1.jpg">
																		<TABLE id="Table33" cellSpacing="0" cellPadding="0" width="100%" border="0">
																			<TBODY>
																				<TR>
																					<TD width="10%"><IMG height="27" src="background/tb1.jpg" width="24"></TD>
																					<TD class="white12px" width="50%"><STRONG><FONT color="#ffffff">会员登陆</FONT></STRONG></TD>
																					<TD width="40%">&nbsp;</TD>
																				</TR>
																			</TBODY>
																		</TABLE>
																	</TD>
																	<TD width="3%" background="background/y1.jpg">
																		<DIV align="right"><IMG height="27" src="background/y1_right.jpg" width="4"></DIV>
																	</TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
												<tr>
													<td align="center"><FONT face="宋体"><asp:panel id="Panel2" runat="server">
																<TABLE id="Table7" cellSpacing="0" cellPadding="0" width="249" border="0" runat="server">
																	<TR>
																		<TD vAlign="bottom" height="12"><IMG height="5" src="background/l_di.jpg" width="249"></TD>
																	</TR>
																	<TR>
																		<TD background="background/l_z.jpg">
																			<TABLE cellSpacing="0" cellPadding="2" align="center" border="0">
																				<TR>
																					<TD>用户名：<!--用户名：--></TD>
																					<TD align="left" colSpan="2">
																						<asp:TextBox id="TextBox1" runat="server" EnableViewState="False" Width="100px" Height="22px"></asp:TextBox></TD>
																					<TD>
																						<asp:ImageButton id="ImageButton1" runat="server" Width="42px" Height="22px" ImageUrl="background/btlogon.jpg" OnClick="ImageButton1_Click1"></asp:ImageButton></TD>
																					<TD></TD>
																				</TR>
																				<TR>
																					<TD align="right">密 码：<!--密&nbsp;&nbsp;码：--></TD>
																					<TD align="left" colSpan="2">
																						<asp:TextBox id="Textbox2" runat="server" Width="100px" Height="22px" TextMode="Password"></asp:TextBox></TD>
																					<TD><A href="userzhuche.aspx"><IMG height="21" src="background/btreg.jpg" width="42" border="0"></A></TD>
																					<TD></TD>
																				</TR>
																				
																			</TABLE>
																		</TD>
																	</TR>
																	<TR>
																		<TD background="background/l_z.jpg" height="10"></TD>
																	</TR>
																	<TR>
																		<TD vAlign="bottom" height="5"><IMG height="5" src="background/l_ding.jpg" width="249"></TD>
																	</TR>
																</TABLE>
															</asp:panel></FONT></td>
												</tr>
											</TBODY>
										</TABLE>
									</FONT>
								</td>
							</tr>
							<tr>
								<td height="3">
								</td>
							</tr>
							<tr>
								<td><FONT face="宋体">
										<TABLE id="Tableuser_denlu" cellSpacing="0" cellPadding="0" width="255" align="left" border="0"
											runat="server">
											<TBODY>
												<tr>
													<td align="center"><FONT face="宋体"><asp:panel id="Panel3" runat="server" Visible="False">
																<TABLE id="Table17" cellSpacing="0" cellPadding="0" width="249" border="0" runat="server">
																	<TR>
																		<TD vAlign="bottom" height="12"><IMG height="5" src="background/l_di.jpg" width="249"></TD>
																	</TR>
																	<TR>
																		<TD background="background/l_z.jpg">
																			<TABLE cellSpacing="0" cellPadding="2" align="center" border="0">
																				<TR>
																					<TD>已登陆:<!--用户名：--></TD>
																					<TD align="left" colSpan="2">欢迎购物</TD>
																				</TR>
																				<TR>
																					<TD>用户名:<!--用户名：--></TD>
																					<TD align="left" colSpan="2">
																						<asp:Label id="username" runat="server"></asp:Label></TD>
																				</TR>
																				<TR>
																					<TD align="center" colSpan="3">
																						<asp:ImageButton id="Imagebutton3" runat="server" Width="42px" Height="22px" ImageUrl="background/btexit.gif" OnClick="Imagebutton3_Click"></asp:ImageButton></TD>
																				</TR>
																			</TABLE>
																		</TD>
																	</TR>
																	<TR>
																		<TD background="background/l_z.jpg" height="10"></TD>
																	</TR>
																	<TR>
																		<TD vAlign="bottom" height="5"><IMG height="5" src="background/l_ding.jpg" width="249"></TD>
																	</TR>
																</TABLE>
															</asp:panel></FONT></td>
												</tr>
											</TBODY>
										</TABLE>
									</FONT>
								</td>
							</tr>
							<TR>
								<TD align="center">
									<TABLE id="Table212" cellSpacing="0" cellPadding="0" width="249" border="0">
										<TBODY>
											<TR>
												<TD width="4%" background="background/y1.jpg"><IMG height="27" src="background/y1_left.jpg" width="4"></TD>
												<TD width="93%" background="background/y2.jpg">
													<TABLE id="Table313" cellSpacing="0" cellPadding="0" width="100%" border="0">
														<TBODY>
															<TR>
																<TD width="10%"><IMG height="27" src="background/jian.jpg" width="17"></TD>
																<TD class="white12px" width="50%"><STRONG><FONT color="#ffffff">购物车</FONT></STRONG></TD>
																<TD width="40%">&nbsp;</TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
												<TD width="3%" background="background/y1.jpg">
													<DIV align="right"><IMG height="27" src="background/y1_right.jpg" width="4"></DIV>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
							<tr>
								<td align="center">
									<TABLE cellSpacing="0" cellPadding="0" width="249" border="0">
										<TBODY>
											<TR>
												<TD><IMG height="5" src="background/l_di.jpg" width="249"></TD>
											</TR>
											<TR>
												<TD background="background/l_z.jpg">
													<TABLE cellSpacing="0" cellPadding="0" width="235" align="center" bgColor="#ffffff" border="0">
														<TBODY>
															<TR>
																<TD width="79"><FONT face="Verdana"><IMG height="72" src="background/cartbag.gif" width="79"></FONT></TD>
																<TD width="123">
																	<TABLE cellSpacing="0" cellPadding="2" width="120" border="0">
																		<TBODY>
																			<TR>
																				<TD noWrap><FONT face="Verdana"></FONT></TD>
																			</TR>
																			<TR>
																				<TD noWrap><FONT face="Verdana"></FONT></TD>
																			</TR>
																			<TR>
																				<TD align="center">
																					<TABLE cellSpacing="0" cellPadding="2" border="0">
																						<TBODY>
																							<TR>
																								<TD>&nbsp;</TD>
																								<TD><A href="shopping.aspx">进入购物车</A></TD>
																							</TR>
																						</TBODY>
																					</TABLE>
																				</TD>
																			</TR>
																		</TBODY>
																	</TABLE>
																</TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
											<TR>
												<TD background="background/l_z.jpg" height="8"></TD>
											</TR>
											<TR>
												<TD vAlign="bottom" height="5"><IMG height="5" src="background/l_ding.jpg" width="249"></TD>
											</TR>
										</TBODY>
									</TABLE>
								</td>
							</tr>
							<tr>
								<td height="6">
								</td>
							</tr>
							<TR>
								<TD align="center">
									<TABLE id="Table222" cellSpacing="0" cellPadding="0" width="249" border="0">
										<TBODY>
											<TR>
												<TD width="4%" background="background/y1.jpg"><IMG height="27" src="background/y1_left.jpg" width="4"></TD>
												<TD width="93%" background="background/y2.jpg">
													<TABLE id="Table333" cellSpacing="0" cellPadding="0" width="100%" border="0">
														<TBODY>
															<TR>
																<TD width="10%"><IMG height="27" src="background/jian.jpg" width="17"></TD>
																<TD class="white12px" width="50%"><STRONG><FONT color="#ffffff">商品分类</FONT></STRONG></TD>
																<TD width="40%">&nbsp;</TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
												<TD width="3%" background="background/y1.jpg">
													<DIV align="right"><IMG height="27" src="background/y1_right.jpg" width="4"></DIV>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
							<tr>
								<td align="center">
									<TABLE cellSpacing="0" cellPadding="0" width="249" border="0">
										<TBODY>
											<TR>
												<TD><IMG height="5" src="background/l_di.jpg" width="249"></TD>
											</TR>
											<TR>
												<TD background="background/l_z.jpg">
													<TABLE cellSpacing="0" cellPadding="0" width="235" align="center" bgColor="#ffffff" border="0">
														<TBODY>
															<TR>
																<TD width="15%"></TD>
																<TD width="70%">
																	<asp:DataList id="DataList4" runat="server" Width="100%" RepeatColumns="2" OnSelectedIndexChanged="DataList4_SelectedIndexChanged">
																		<ItemTemplate>
																			<FONT face="宋体">
																				<asp:HyperLink id=HyperLink4 runat="server" NavigateUrl='<%# "shangpingleibie.aspx?leibieid="+DataBinder.Eval(Container, "DataItem.leibieid") %>' Text='<%# DataBinder.Eval(Container, "DataItem.leibiename") %>'>
																				</asp:HyperLink></FONT>
																		</ItemTemplate>
																	</asp:DataList>
																</TD>
																<TD width="15%"></TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
											</TR>
											<TR>
												<TD background="background/l_z.jpg" height="8"></TD>
											</TR>
											<TR>
												<TD vAlign="bottom" height="5"><IMG height="5" src="background/l_ding.jpg" width="249"></TD>
											</TR>
										</TBODY>
									</TABLE>
								</td>
							</tr>					
							<tr>
								<td height="6">
								</td>
							</tr>
							
							</tr>
						</TABLE>
					</TD>
					<TD class="border-r" vAlign="top">
						<TABLE id="Table5" cellSpacing="0" cellPadding="1" width="620" align="center" border="0">
							
							<tr>
								<td>
									<table id="Table9" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
										<TBODY>
											<tr>
												<TD width="7%" background="background/y4_l_z.jpg"><IMG height="25" src="background/y4_l.jpg" width="40"></TD>
												<TD width="12%" background="background/y4_l_z.jpg" height="25"><FONT color="#ffffff"><STRONG>最新商品</STRONG></FONT></TD>
												<TD width="75%" background="background/y4_l3.jpg"><IMG height="25" src="background/y4_l2.jpg" width="18"></TD>
												<TD width="4%" background="background/y4_l3.jpg"></TD>
											</tr>
										</TBODY>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table id="Table12" cellSpacing="1" cellPadding="0" width="100%" align="center" border="1">
										<tr>
											<td><asp:datalist id="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
													<ItemTemplate>
														<FONT face="宋体">
															<TABLE id="Table8" cellSpacing="0" cellPadding="1" width="150" border="0" runat="server">
																<TR>
																	<TD style="HEIGHT: 28px" align="center"><FONT face="宋体">
																			<asp:Image id=Image1 runat="server" Width="120px" Height="120px" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.pic") %>'>
																			</asp:Image></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">
																			<asp:Label id=Label1 runat="server" Width="112px" Height="20px" Text='<%# DataBinder.Eval(Container, "DataItem.shangpingname") %>'>
																			</asp:Label></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">会员价:
																			<asp:Label id=Label2 runat="server" Width="63px" Height="16px" Text='<%# DataBinder.Eval(Container, "DataItem.chushouprice ") %>'>
																			</asp:Label></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">&nbsp;
																			<asp:HyperLink id=HyperLink1 runat="server" NavigateUrl='<%# "shangpinxingxi.aspx?spid="+DataBinder.Eval(Container, "DataItem.shangpingid") %>'>点击查看</asp:HyperLink></FONT></TD>
																</TR>
															</TABLE>
														</FONT>
													</ItemTemplate>
												</asp:datalist></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table id="Table10" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
										<TBODY>
											<tr>
												<TD width="7%" background="background/y4_l_z.jpg"><IMG height="25" src="background/y4_l.jpg" width="40"></TD>
												<TD width="12%" background="background/y4_l_z.jpg" height="25"><FONT color="#ffffff"><STRONG>推荐商品</STRONG></FONT></TD>
												<TD width="75%" background="background/y4_l3.jpg"><IMG height="25" src="background/y4_l2.jpg" width="18"></TD>
												<TD width="4%" background="background/y4_l3.jpg"></TD>
											</tr>
										</TBODY>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table id="Table15" cellSpacing="1" cellPadding="0" width="100%" align="center" border="1">
										<tr>
											<td><asp:datalist id="Datalist2" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
													<ItemTemplate>
														<FONT face="宋体">
															<TABLE id="Table13" cellSpacing="0" cellPadding="1" width="150" border="0" runat="server">
																<TR>
																	<TD style="HEIGHT: 28px" align="center"><FONT face="宋体">
																			<asp:Image id=Image2 runat="server" Width="120px" Height="120px" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.pic") %>'>
																			</asp:Image></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">
																			<asp:Label id=Label3 runat="server" Width="112px" Height="20px" Text='<%# DataBinder.Eval(Container, "DataItem.shangpingname") %>'>
																			</asp:Label></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">会员价:
																			<asp:Label id=Label4 runat="server" Width="63px" Height="16px" Text='<%# DataBinder.Eval(Container, "DataItem.chushouprice ") %>'>
																			</asp:Label></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">&nbsp;
																			<asp:HyperLink id=Hyperlink2 runat="server" NavigateUrl='<%# "shangpinxingxi.aspx?spid="+DataBinder.Eval(Container, "DataItem.shangpingid") %>'>点击查看</asp:HyperLink></FONT></TD>
																</TR>
															</TABLE>
														</FONT>
													</ItemTemplate>
												</asp:datalist></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table id="Table11" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
										<TBODY>
											<tr>
												<TD width="7%" background="background/y4_l_z.jpg"><IMG height="25" src="background/y4_l.jpg" width="40"></TD>
												<TD width="12%" background="background/y4_l_z.jpg" height="25"><FONT color="#ffffff"><STRONG>特价商品</STRONG></FONT></TD>
												<TD width="75%" background="background/y4_l3.jpg"><IMG height="25" src="background/y4_l2.jpg" width="18"></TD>
												<TD width="4%" background="background/y4_l3.jpg"></TD>
											</tr>
										</TBODY>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table id="Table16" cellSpacing="1" cellPadding="0" width="100%" align="center" border="1">
										<tr>
											<td><asp:datalist id="Datalist3" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
													<ItemTemplate>
														<FONT face="宋体">
															<TABLE id="Table14" cellSpacing="0" cellPadding="1" width="150" border="0" runat="server">
																<TR>
																	<TD style="HEIGHT: 28px" align="center"><FONT face="宋体">
																			<asp:Image id=Image3 runat="server" Width="120px" Height="120px" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.pic") %>'>
																			</asp:Image></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">
																			<asp:Label id=Label5 runat="server" Width="112px" Height="20px" Text='<%# DataBinder.Eval(Container, "DataItem.shangpingname") %>'>
																			</asp:Label></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">会员价:
																			<asp:Label id=Label6 runat="server" Width="63px" Height="16px" Text='<%# DataBinder.Eval(Container, "DataItem.chushouprice ") %>'>
																			</asp:Label></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">&nbsp;
																			<asp:HyperLink id=Hyperlink3 runat="server" NavigateUrl='<%# "shangpinxingxi.aspx?spid="+DataBinder.Eval(Container, "DataItem.shangpingid") %>'>点击查看</asp:HyperLink></FONT></TD>
																</TR>
															</TABLE>
														</FONT>
													</ItemTemplate>
												</asp:datalist></td>
										</tr>
									</table>
								</td>
							</tr>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			</TD></TR></TBODY></TABLE> 
        <!---------底部--------------->
			<TABLE id="Table3" cellSpacing="0" cellPadding="1" width="885" align="center" border="0"
				runat="server">
				<TR>
					<TD id="TD1" runat="server"><FONT face="宋体"><uc1:down id="Down1" runat="server"></uc1:down></FONT></TD>
				</TR>
			</TABLE>
    </form>
</body>
</html>
