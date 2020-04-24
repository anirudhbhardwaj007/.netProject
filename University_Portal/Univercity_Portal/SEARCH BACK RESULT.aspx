<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="SEARCH BACK RESULT.aspx.cs" Inherits="SEARCH_BACK_RESULT" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="14pt" Text="Your Back Result"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtsname" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Text="Student Roll no."></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtsrno" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" Text="No Of Back"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtnoback" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label4" runat="server" Text="Back Paper Code" Width="114px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtbcode" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbldis" runat="server" ForeColor="Red" Width="267px"></asp:Label>&nbsp;</td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

