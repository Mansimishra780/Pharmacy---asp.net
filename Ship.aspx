<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Ship.aspx.cs" Inherits="Pharma.Ship" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 507px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            margin-left: 65px;
        }
        .auto-style6 {
            margin-bottom: 0px;
        }
        .auto-style7 {
            margin-bottom: 8px;
        }
    .auto-style8 {
        height: 33px;
    }
    .auto-style9 {
        width: 498px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style8">NAME OF CLIENT</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style1">ADDRESS<br />
                <br />
                EMAIL</td>
            <td>
                <asp:TextBox ID="txtArea" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*Incorrect Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Italic="True"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">ORDER ID</td>
            <td>
                <asp:TextBox ID="txtOrderId" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnGet" runat="server" Text="Generate" OnClick="btnGet_Click" Font-Italic="True" ForeColor="Red" />
&nbsp;&nbsp; </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">MEDCINE-ID</td>
            <td>
                <asp:TextBox ID="txtID" runat="server" CssClass="auto-style4"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnGive" runat="server" OnClick="btnGive_Click" Text="GET" Font-Italic="True" ForeColor="#FF3300" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">PRICE</td>
            <td>
                <asp:TextBox ID="txtPrice" runat="server" CssClass="auto-style6"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">QUANTITY</td>
            <td>
                <asp:TextBox ID="txtQty" runat="server" CssClass="auto-style7"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtQty" Display="Dynamic" ErrorMessage="*cannot exceed 10" ForeColor="Red" MaximumValue="10" MinimumValue="1" Type="Integer" Font-Italic="True"></asp:RangeValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="auto-style9">
                Purchase-Date</td>
            <td>
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Type ="date"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style9">
                <br />
                TOTAL</td>
            <td>
                <asp:TextBox ID="txtTotal" runat="server" CssClass="auto-style5"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>
&nbsp;&nbsp;&nbsp;<asp:Button ID="btnCalc" runat="server" OnClick="btnCalc_Click" Text="Calculate" BackColor="#FF3300" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="69px" Width="185px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReciept" runat="server" Text="Clear" OnClick="btnReciept_Click" Font-Italic="True" ForeColor="#FF3300" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
