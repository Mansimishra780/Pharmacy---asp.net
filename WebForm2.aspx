<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Pharma.WebForm2" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Geometry Calculator</title>
</head>
<body>
<form id="form2" runat="server">
<div>
<h2>Geometry Calculator</h2>
<asp:DropDownList ID="ddlShapes" runat="server" >
<asp:ListItem Text="Triangle" Value="Triangle"></asp:ListItem>
<asp:ListItem Text="Rectangle" Value="Rectangle"></asp:ListItem>
<asp:ListItem Text="Circle" Value="Circle"></asp:ListItem>
<asp:ListItem Text="Square" Value="Square"></asp:ListItem>
</asp:DropDownList>
<br /><br />
<label for="txtTriangleBase">Dimension1:</label>
<asp:TextBox ID="txtTriangleBase" runat="server"></asp:TextBox>
<br /><br />
<label for="txtTriangleBase">Dimension2</label><label for="txtTriangleHeight">:</label>
<asp:TextBox ID="txtTriangleHeight" runat="server"></asp:TextBox>
<br /><br />
<asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
<br /><br />
<asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
</div>
</form>
</body>
</html>