<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shangpinxingxi.aspx.cs" Inherits="购物网.shangpinxingxi" %>
<%@ Register TagPrefix="uc1" TagName="down" Src="down.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="top.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <LINK href="css/css2.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>商品信息</title>
</head>
<body>
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
																						<asp:TextBox id="TextBox1" runat="server" EnableViewState="False" Height="22px" Width="100px"></asp:TextBox></TD>
																					<TD>
																						<asp:ImageButton id="ImageButton1" runat="server" Height="22px" Width="42px" ImageUrl="background/btlogon.jpg" OnClick="ImageButton1_Click"></asp:ImageButton></TD>
																					<TD></TD>
																				</TR>
																				<TR>
																					<TD align="right">密 码：<!--密&nbsp;&nbsp;码：--></TD>
																					<TD align="left" colSpan="2">
																						<asp:TextBox id="Textbox2" runat="server" Height="22px" Width="100px" TextMode="Password"></asp:TextBox></TD>
																					<TD><A href="userzhuche.aspx"><IMG height="21" src="background/btreg.jpg" width="42" border="0"></A></TD>
																					<TD></TD>
																				</TR>
																				
																			</TABLE>
																		</TD>
																	</TR>
																	<TR>
																		<TD background="background/l_z.jpg" height="15"></TD>
																	</TR>
																	<TR>
																		<TD vAlign="bottom" height="5"><IMG height="5" src="background/l_ding.jpg" width="249"></TD>
																	</TR>
																</TABLE>
															</asp:panel></FONT></td>
												</tr>
												<tr>
													<td height="5"></td>
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
																											<asp:ImageButton id="Imagebutton4" runat="server" Height="22px" Width="42px" ImageUrl="background/btexit.gif" OnClick="Imagebutton4_Click"></asp:ImageButton></TD>
																									</TR>
																								</TABLE>
																							</TD>
																						</TR>
																						<TR>
																							<TD background="background/l_z.jpg" height="15"></TD>
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
														<TABLE id="Table222" cellSpacing="0" cellPadding="0" width="249" border="0">
															<TBODY>
																<TR>
																	<TD width="4%" background="background/y1.jpg"><IMG height="27" src="background/y1_left.jpg" width="4"></TD>
																	<TD width="93%" background="background/y2.jpg">
																		<TABLE id="Table333" cellSpacing="0" cellPadding="0" width="100%" border="0">
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
																									<TD noWrap></TD>
																								</TR>
																								<TR>
																									<TD noWrap></TD>
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
																						<asp:DataList id="DataList4" runat="server" Width="100%" RepeatColumns="2">
																							<ItemTemplate>
																								<FONT face="宋体">
																									<asp:HyperLink id=HyperLink4 runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.leibiename") %>' NavigateUrl='<%# "shangpingleibie.aspx?leibieid="+DataBinder.Eval(Container, "DataItem.leibieid") %>'>
																									</asp:HyperLink></FONT>
																							</ItemTemplate>
																						</asp:DataList></TD>
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
													<td></td>
												</tr>
											</TBODY>
										</TABLE>
									</FONT>
								</td>
							</tr>
							<tr>
								<td><FONT face="宋体"></FONT></td>
							</tr>
						</TABLE>
					</TD>
					<TD class="border-r" vAlign="top">
						<TABLE id="Table5" cellSpacing="0" cellPadding="1" width="620" align="center" border="0">
							<tr>
								<td>
									<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
										<TBODY>
											<TR>
												<TD width="2%" background="background/b_6.jpg"><IMG height="26" src="background/y_2_l.jpg" width="5"></TD>
												<TD width="97%" background="background/b_6.jpg">
													<TABLE height="22" cellSpacing="0" cellPadding="0" width="100%">
														<TBODY>
															<TR>
																<TD width="4%"><IMG height="12" src="background/star_.gif" width="14"></TD>
																<TD vAlign="bottom" width="67%">您的位置：服装&nbsp;&gt;&gt;&nbsp;&nbsp;
																	<asp:label id="Label1" runat="server" Width="40px">Label</asp:label>&nbsp;&nbsp;&nbsp; 
																	商品信息： </STRONG></TD>
																<TD width="15%">
																	<DIV align="right"></DIV>
																</TD>
																<TD width="15%">&nbsp;</TD>
																<TD width="15%">&nbsp;</TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
												<TD width="1%"><IMG height="26" src="background/y_2_r.jpg" width="5"></TD>
											</TR>
										</TBODY>
									</TABLE>
								</td>
							</tr>
							<tr>
								<td>
									<TABLE id="Table8" cellSpacing="1" cellPadding="1" width="500" align="center" border="1">
										<TR>
											<TD align="center" colSpan="2"><asp:image id="Image1" runat="server" Width="120px" Height="120px"></asp:image></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 108px"><FONT face="宋体">商品编号:</FONT></TD>
											<TD><asp:label id="Label2" runat="server" Width="168px">Label</asp:label></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 108px"><FONT face="宋体">商品名称:</FONT></TD>
											<TD><asp:label id="Label3" runat="server" Width="168px">Label</asp:label></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 108px"><FONT face="宋体">商品规格:</FONT></TD>
											<TD><asp:label id="Label4" runat="server" Width="168px">Label</asp:label></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 108px"><FONT face="宋体">商品品牌:</FONT></TD>
											<TD><asp:label id="Label5" runat="server" Width="168px">Label</asp:label></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 108px"><FONT face="宋体">会员价格:</FONT></TD>
											<TD><asp:label id="Label6" runat="server" Width="168px">Label</asp:label></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 108px"><FONT face="宋体">产品说明:</FONT></TD>
											<TD><asp:label id="Label7" runat="server" Width="288px">Label</asp:label></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 108px"><FONT face="宋体">购物数量:</FONT></TD>
											<TD>
												<asp:TextBox id="TextBox4" runat="server" Width="112px"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD align="center" colSpan="2"><FONT face="宋体"><asp:imagebutton id="ImageButton3" runat="server" Width="104px" Height="42px" ImageUrl="background/gw.jpg" OnClick="ImageButton3_Click"></asp:imagebutton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT></TD>
										</TR>
									</TABLE>
								</td>
							</tr>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
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
