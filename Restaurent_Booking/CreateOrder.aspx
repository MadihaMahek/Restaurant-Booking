<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateOrder.aspx.cs" Inherits="login" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <TABLE id="Table1" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" height="100%"
				cellSpacing="1" cellPadding="1" width="100%" border="1">
				<TR>
					<td width="100%" colSpan="3" height="6%"><uc1:header id="Header1" runat="server"></uc1:header></td>
				</TR>
				<TR>
					<TD width="100%" colSpan="3" height="4%"></TD>
				</TR>
				<TR>
					<TD width="15%"></TD>
					<td width="70%">
						<table height="100%" width="100%">
							<tr>
								<td align="center" bgColor="#ff99ff" colSpan="5" height="10%"><font face="Times New Roman" size="4"><b><i>Create Your Order by Adding Item</i></b></font></td>
							</tr>
                           <tr>
								<td width="25%"></td>
								<td><font size="3"><b>Customer Name</b></font></td>
								<td><asp:dropdownlist id="drpcustomer" runat="server">
                                    </asp:dropdownlist></td>
								<td></td>
								<td width="5%"></td>
							</tr>

							<tr>
								<td width="25%"></td>
								<td><font size="3"><b>Item Name</b></font></td>
								<td><asp:dropdownlist id="drpitem" runat="server">
                                    </asp:dropdownlist></td>
								<td></td>
								<td width="5%"></td>
							</tr>
							<tr>
								<td width="25%"></td>
								<td><font size="3"><b>Quantity </b></font></td>
								<td>
                                    <asp:DropDownList ID="drpqty" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
								<td>&nbsp;</td>
								<td width="5%"></td>
							</tr>
							<tr>
								<td width="25%"></td>
								<td><font size="3"><b>Price </b></font></td>
								<td><asp:textbox id="txtprice" runat="server"></asp:textbox></td>
								<td></td>
								<td width="5%"></td>
							</tr>
							
							<tr>
								<td width="25%"></td>
								<td><font size="3"><b>Service  </b></font></td>
								<td><asp:RadioButton id="diein" runat="server" Checked="True" GroupName="g1" Text="Die-in"></asp:RadioButton>&nbsp;<asp:RadioButton id="overDraft0" runat="server" GroupName="g1" Text="Take Home"></asp:RadioButton></td>
								<td></td>
								<td width="5%"></td>
							</tr>
							
							<tr>
								<td align="center" colSpan="4">
									<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/CreateCustomer.aspx">Add New Customer</asp:LinkButton>
									<asp:button id="Button1" runat="server" Text="Add Item" Width="20%" Font-Bold="True" Font-Italic="True"
										Font-Name="Times New Roman" OnClick="Button1_Click"></asp:button></td>
							</tr>
						</table>
					</td>
					<TD width="15%"></TD>
				</TR>
				<TR>
					<TD width="100%" colSpan="3" height="4%"></TD>
				</TR>
				<TR>
					<td colSpan="3" height="6%"><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</TR>
			</TABLE>
    </form>
</body>
</html>
