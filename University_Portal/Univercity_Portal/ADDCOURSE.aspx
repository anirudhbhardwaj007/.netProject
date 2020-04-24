<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="ADDCOURSE.aspx.cs" Inherits="ADDCOURSE" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="2" rowspan="2">
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td style="width: 144px">
                <asp:Label ID="Label2" runat="server" Text="Insert Course"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtcourse" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbldis" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 144px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Add" Width="155px" /></td>
        </tr>
    </table>
</asp:Content>

