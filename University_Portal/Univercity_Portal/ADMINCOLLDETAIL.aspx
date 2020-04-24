<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="ADMINCOLLDETAIL.aspx.cs" Inherits="ADMINCOLLDETAIL" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table frame="box" style="width: 558px; height: 129px">
        <tr>
            <td colspan="2" style="background-color: #990000">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: #990000">
                <strong><span style="color: #ffffcc">SELECT COLLEGE :</span></strong><asp:DropDownList
                    ID="ddlcoll" runat="server" Width="376px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="height: 28px">
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 34px; height: 28px">
                <asp:Label ID="Label4" runat="server" Text="Director Name" Width="150px"></asp:Label></td>
            <td align="left" style="width: 6px; height: 28px">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 34px; height: 21px">
                <asp:Label ID="Label3" runat="server" Text="College Address" Width="150px"></asp:Label></td>
            <td align="left" style="width: 6px; height: 21px">
                <asp:TextBox ID="TextBox3" runat="server" Height="43px" TextMode="MultiLine" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 34px">
                <asp:Label ID="Label5" runat="server" Text="College e-mail" Width="150px"></asp:Label></td>
            <td align="left" style="width: 6px">
                <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 34px">
                <asp:Label ID="Label6" runat="server" Text="College Fax-No" Width="150px"></asp:Label></td>
            <td align="left" style="width: 6px">
                <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 34px">
                <asp:Label ID="Label7" runat="server" Text="Total No of Faculty" Width="150px"></asp:Label></td>
            <td align="left" style="width: 6px">
                <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 34px">
                <asp:Label ID="Label8" runat="server" Text="Total No of Student" Width="150px"></asp:Label></td>
            <td align="left" style="width: 6px">
                <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 34px">
                <asp:Label ID="Label9" runat="server" Text="Total Computer" Width="150px"></asp:Label></td>
            <td align="left" style="width: 6px">
                <asp:TextBox ID="TextBox8" runat="server" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 34px">
                <asp:Label ID="Label10" runat="server" Text="Total Books" Width="150px"></asp:Label></td>
            <td align="left" style="width: 6px">
                <asp:TextBox ID="TextBox9" runat="server" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="width: 34px">
            </td>
            <td style="width: 6px">
                <asp:Label ID="lbldis" runat="server" ForeColor="#FF0033"></asp:Label></td>
        </tr>
        <tr>
            <td align="left" style="width: 34px">
            </td>
            <td align="left" style="width: 6px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD DETAIL"
                    Width="170px" /></td>
        </tr>
    </table>
</asp:Content>

