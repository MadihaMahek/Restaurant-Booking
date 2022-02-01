<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderPlaced.aspx.cs" Inherits="OrderPlaced" %>

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
                    <td>

                        <h1>Your Order is placed Successfully ... ! </h1>
                        <h3>Thank you for Ordering ... ! </h3>
                        <h3>&nbsp;</h3>
                        <h3>
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/CreateOrder.aspx">Go to Home</asp:LinkButton>
                        </h3>
                    </td>


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
