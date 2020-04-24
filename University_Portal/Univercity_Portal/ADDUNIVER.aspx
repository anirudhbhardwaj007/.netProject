<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="ADDUNIVER.aspx.cs" Inherits="ADDUNIVER" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table>
            <tr>
                <td colspan="2">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Text="Select City"></asp:Label></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="ddcity" runat="server" AutoPostBack="True" Width="156px">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Text="Add Univercity"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtuni" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 21px">
                    <asp:Label ID="lbldis" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="Add" Width="154px" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

