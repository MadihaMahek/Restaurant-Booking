<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transaction.aspx.cs" Inherits="Transaction" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <TABLE id="Table1" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" height="100%"
				cellSpacing="1" cellPadding="1" width="100%" border="1">
				<TR>
					<td width="100%" colSpan="3" height="6%">
						<uc1:Header id="Header1" runat="server"></uc1:Header></td>
				</TR>
				<TR>
					<TD width="100%" colSpan="3" height="4%"></TD>
				</TR>
				<TR>
					<TD width="15%"></TD>
					<td width="70%">
						<table height="100%" width="100%">
							<tr>
								<td align="center" bgColor="#ff99ff" colSpan="8" height="10%"><font face="Times New Roman" size="4"><b><i>Over All Items											Transaction</i></b></font></td>
							</tr>
							<tr>
								<td width="15%"></td>
								<td><font><b>I Want To Transfer</b></font></td>
								<td>
									<table border="0" height="100%" width="100%">
										<tr>
											<td>
											<asp:RadioButton id="Transfer" runat="server" Checked="True" GroupName="g1"></asp:RadioButton></td>
											<td><font size="3"><b>Transfer</b></font></td>
										</tr>
										<tr>
											<td>
												<asp:RadioButton id="WithDraw" runat="server" GroupName="g1"></asp:RadioButton></td>
											<td><font size="3"><b>WithDraw</b></font></td>
										</tr>
										<tr>
											<td>
												<asp:RadioButton id="Deposit" runat="server" GroupName="g1"></asp:RadioButton></td>
										<td><font size="3"><b>Deposit</b></font></td>
										</tr>
									</table>
								</td>
								<td width="15%"></td>
							</tr>
							<tr>
								<td width="15%"></td>
								<td><font size="3"><b>From</b></font></td>
								<td><asp:DropDownList id="dpfrom" runat="server"></asp:DropDownList></td>
								<td width="15%"></td>
							</tr>
							<tr>
								<td width="15%"></td>
								<td><font size="3"><b>To</b></font></td>
								<td><asp:DropDownList id="drpto" runat="server"></asp:DropDownList></td>
								<td width="15%"></td>
							</tr>
							<tr>
								<td width="15%"></td>
								<td><font size="3"><b>Amount</b></font></td>
								<td>
									<asp:TextBox id="TextBox1" runat="server"></asp:TextBox></td>
								<td width="15%"></td>
							</tr>
							<tr>
								<td colspan="4" align="center">
									<asp:Button id="Button1" runat="server" Text="Submit" Width="20%" Font-Bold="True" Font-Italic="True"
										Font-Name="Times New Roman" OnClick="Button1_Click"></asp:Button>
								</td>
							</tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                            </tr>
						</table>
					</td>
					<TD width="15%"></TD>
				</TR>
				<TR>
					<TD width="100%" colSpan="3" height="4%"></TD>
				</TR>
				<TR>
					<td colSpan="3" height="6%">
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
				</TR>
			</TABLE>
    </div>
    </form>
</body>
</html>
