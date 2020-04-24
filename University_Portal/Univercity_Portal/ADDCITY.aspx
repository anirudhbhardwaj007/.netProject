<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="ADDCITY.aspx.cs" Inherits="ADDCITY" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table>
            <tr>
                <td colspan="2">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Text="Select State"></asp:Label></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="ddlstate" runat="server" Width="156px" AutoPostBack="True">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Text="Insert City"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lbldis" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Add" Width="155px" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

