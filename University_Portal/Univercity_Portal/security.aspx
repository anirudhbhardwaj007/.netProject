<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="security.aspx.cs" Inherits="security" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lbluser" runat="server" Visible="False"></asp:Label><br />
    <div style="text-align: center">
        <table dir="ltr" frame="box">
            <tr>
                <td colspan="2">
                    Change Your Password</td>
            </tr>
            <tr>
                <td style="width: 100px" align="left">
                    <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">Password:</asp:Label></td>
                <td style="width: 197px" align="left">
                    <asp:TextBox ID="CurrentPassword" runat="server" Font-Size="0.8em" TextMode="Password" Width="107px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CurrentPassword"
                        ErrorMessage="RequiredFieldValidator" Width="51px">plese fill</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">New Password:</asp:Label></td>
                <td style="width: 197px">
                    <asp:TextBox ID="NewPassword" runat="server" Font-Size="0.8em" TextMode="Password" Width="201px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px" align="left">
                    <asp:Label ID="Label1" runat="server" Text="Confirm New Password:"></asp:Label></td>
                <td style="width: 197px" align="left">
                    <asp:TextBox ID="ConfirmNewPassword" runat="server" Font-Size="0.8em" 
                        TextMode="Password" Width="201px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="ConfirmNewPassword"
                        ControlToValidate="NewPassword" ErrorMessage="CompareValidator" Width="207px">password dose not match</asp:CompareValidator></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lbldis" runat="server" ForeColor="Red" Width="313px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Button ID="ChangePasswordPushButton" runat="server" BackColor="White" BorderColor="#CC9966"
                        BorderStyle="Solid" BorderWidth="1px" CommandName="ChangePassword" Font-Names="Verdana"
                        Font-Size="0.8em" ForeColor="#990000" OnClick="ChangePasswordPushButton_Click"
                        Text="Change Password" ValidationGroup="ChangePassword1" /></td>
                <td style="width: 197px">
                    <asp:Button ID="CancelPushButton" runat="server" BackColor="White" BorderColor="#CC9966"
                        BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="Cancel"
                        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Text="Cancel" /></td>
            </tr>
        </table>
    </div>
    <br />
</asp:Content>

