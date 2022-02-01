<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerInfo.aspx.cs" Inherits="CreateCustome" %>

<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <body ms_positioning="GridLayout">

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
                    <td width="1%"></td>
                    <td width="98%">
                        <table height="100%" width="100%">
                            <tr>
                                <td align="center" bgcolor="#ff99ff" colspan="3" height="10%"><font face="Times New Roman" size="4"><b><i>Hi!! 
												Welcome to Novelty Hotel !!! </i></b></font>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" height="20%"></td>
                            </tr>
                            <tr height="10%">
                                <td>
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <HeaderTemplate>
                                            <h2 align="center">Customer Order Information</h2>
                                            <b>Item Name</b>&nbsp &nbsp <b> Quantity </b>&nbsp &nbsp <b>Price</b>&nbsp 
											&nbsp <b>Service</b>
                                             <hr>
                                        </HeaderTemplate>
                                        <SeparatorTemplate>
                                            <hr>
                                        </SeparatorTemplate>
                                        <ItemTemplate>
                                            <br />
                                            <%# DataBinder.Eval(Container.DataItem,"ItemName")%>
											&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
											<%# DataBinder.Eval(Container.DataItem,"Qty")%>
											&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
											<%# DataBinder.Eval(Container.DataItem,"Price")%>
											&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
											<%# DataBinder.Eval(Container.DataItem,"service")%>
											&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
											
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </td>
                            </tr>
                            <tr height="10%">
                                <td align="center" colspan="3" height="10%"></td>
                            </tr>
                            <tr>
                                <td align="center" colspan="3">
                                    <asp:Button ID="Button1" runat="server" Font-Name="Times New Roman" Font-Italic="True" Font-Bold="True"
                                        Width="185px" Text="Add More Items" OnClick="Button1_Click"></asp:Button>&nbsp;<asp:Button ID="Button2" runat="server" Font-Name="Times New Roman" Font-Italic="True" Font-Bold="True"
                                        Width="185px" Text="Place Order" OnClick="Button2_Click"></asp:Button></td>
                            </tr>
                        </table>
                    </td>
                    <td width="1%"></td>
                    <tr>
                        <td width="100%" colspan="3" height="4%"></td>
                    </tr>
                    <tr>
                        <td colspan="3" height="6%">
                            <uc1:Footer ID="Footer1" runat="server"></uc1:Footer>
                        </td>
                    </tr>
            </table>
    </form>
</body>
</html>
