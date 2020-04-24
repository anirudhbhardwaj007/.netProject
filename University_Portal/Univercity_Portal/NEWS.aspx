<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="NEWS.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="2" rowspan="2">
                <asp:Label ID="Label2" runat="server" Text="Insert news"></asp:Label></td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtnews" runat="server" Height="193px" TextMode="MultiLine" Width="375px" ForeColor="#990000"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbldis" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#C0FFC0" BorderStyle="Outset"
                    OnClick="btnsubmit_Click" Text="Add New News" Width="379px" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" BackColor="#FFC0C0" BorderStyle="Outset"
                    OnClick="Button1_Click" Text="Remove All News" Width="379px" /></td>
        </tr>
    </table>
</asp:Content>

