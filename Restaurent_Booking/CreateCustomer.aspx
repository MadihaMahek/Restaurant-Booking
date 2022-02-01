<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateCustomer.aspx.cs" Inherits="CreateCustomer" %>

<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="Table1" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" height="100%"
                cellspacing="1" cellpadding="1" width="100%" border="1">
                <tr>
                    <td width="100%" colspan="3" height="6%">
                        <uc1:Header ID="Header1" runat="server"></uc1:Header>
                    </td>
                </tr>
                <tr>
                    <td width="100%" colspan="3" height="4%"></td>
                </tr>
                <tr>
                    <td width="15%"></td>
                    <td width="70%">
                        <table height="100%" width="100%">
                            <tr>
                                <td align="center" bgcolor="#ff99ff" colspan="5" height="10%"><font face="Times New Roman" size="4"><b><i>New Customer Registration</i></b></font></td>
                            </tr>
                            <tr>
                                <td colspan="5" height="10%"></td>
                            </tr>
                            <tr>
                                <td width="25%"></td>
                                <td><font size="3"><b>Prefix</b></font></td>
                                <td>
                                    <asp:DropDownList ID="prefix" runat="server"></asp:DropDownList></td>
                                <td></td>
                                <td width="5%"></td>
                            </tr>
                            <tr>
                                <td width="25%"></td>
                                <td><font size="3"><b>First Name</b></font></td>
                                <td>
                                    <asp:TextBox ID="firstName" runat="server"></asp:TextBox></td>
                                <td>
                                    &nbsp;</td>
                                <td width="5%"></td>
                            </tr>
                            <tr>
                                <td width="25%"></td>
                                <td><font size="3"><b>Last Name</b></font></td>
                                <td>
                                    <asp:TextBox ID="lastName" runat="server"></asp:TextBox></td>
                                <td>
                                    &nbsp;</td>
                                <td width="5%"></td>
                            </tr>
                            <tr>
                                <td width="25%"></td>
                                <td><font size="3"><b>Date of Birth</b></font></td>
                                <td>
                                    <asp:TextBox ID="birth" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td width="5%"></td>
                            </tr>
                            <tr>
                                <td width="25%"></td>
                                <td><font size="3"><b>Address</b></font></td>
                                <td>
                                    <asp:TextBox ID="address" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                <td>
                                    &nbsp;</td>
                                <td width="5%"></td>
                            </tr>
                            <tr>
                                <td width="25%"></td>
                                <td><font size="3"><b>City</b></font></td>
                                <td>
                                    <asp:TextBox ID="city" runat="server"></asp:TextBox></td>
                                <td>
                                    &nbsp;</td>
                                <td width="5%"></td>
                            </tr>
                            <tr>
                                <td width="25%"></td>
                                <td><font size="3"><b>State</b></font></td>
                                <td>
                                    <asp:TextBox ID="state" runat="server"></asp:TextBox></td>
                                <td>
                                    &nbsp;</td>
                                <td width="5%"></td>
                            </tr>
                            <tr>
                                <td width="25%"></td>
                                <td><font size="3"><b>Pin Code</b></font></td>
                                <td>
                                    <asp:TextBox ID="pinCode" runat="server"></asp:TextBox></td>
                                <td>
                                    &nbsp;</td>
                                <td width="5%"></td>
                            </tr>
                            
                            <tr>
                                <td width="25%"></td>
                                <td><font size="3"><b>Email</b></font></td>
                                <td>
                                    <asp:TextBox ID="email" runat="server"></asp:TextBox></td>
                                <td></td>
                                <td width="5%"></td>
                            </tr>
                           
                            <tr>
                                <td width="25%"></td>
                                <td><font size="3"><b>Mobile</b></font></td>
                                <td>
                                    <asp:TextBox ID="mobile" runat="server"></asp:TextBox></td>
                                <td></td>
                                <td width="5%"></td>
                            </tr>
                          
                            <tr>
                                <td colspan="5" height="10%"></td>
                            </tr>
                            <tr>
                                <td align="center" colspan="5">
                                    <asp:Label ID="lblmessage" runat="server"></asp:Label>
                                    <asp:Button ID="Button1" runat="server" Width="20%" Text="Add &amp; Proceed Order" Font-Italic="True" Font-Bold="True"
                                        Font-Name="Times New Roman" OnClick="Button1_Click"></asp:Button></td>
                            </tr>
                        </table>
                    </td>
                    <td width="15%"></td>
                </tr>
                <tr>
                    <td width="100%" colspan="3" height="4%"></td>
                </tr>
                <tr>
                    <td colspan="3" height="6%">
                        <uc1:Footer ID="Footer1" runat="server"></uc1:Footer>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
