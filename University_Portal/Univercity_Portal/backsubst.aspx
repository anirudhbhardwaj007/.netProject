<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="backsubst.aspx.cs" Inherits="backsubst" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="14pt" Text="Enter Name Back Subject"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtsname" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Text="Student Roll no."></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtsrno" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Search" />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" /></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" Text="No Of Back"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtnoback" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label4" runat="server" Text="Back Paper Code" Width="114px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtbcode" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="lbldis" runat="server" ForeColor="Red"></asp:Label></td>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" Width="80px" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="update" /></td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

