<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="ADDSEM.aspx.cs" Inherits="ADDSEM" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="2">
            </td>
        </tr>
        <tr>
            <td style="width: 144px">
                <asp:Label ID="Label1" runat="server" Text="Select Course"></asp:Label></td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddlcourse" runat="server" AutoPostBack="True" Width="156px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 144px">
                <asp:Label ID="Label2" runat="server" Text="Insert semister"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtsem" runat="server"></asp:TextBox></td>
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

