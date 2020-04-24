<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="ADDSTATE.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" Text="Add New State"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtstate" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Label ID="lbldis" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnstate" runat="server" OnClick="btnstate_Click" Text="Add State" /></td>
        </tr>
    </table>
</asp:Content>

