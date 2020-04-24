<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 592px">
        <tr>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
            </td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
                <asp:Label ID="lbluser" runat="server" Visible="False"></asp:Label></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
                College name:-</td>
            <td align="left" colspan="3" style="color: #ffffcc; background-color: #990000">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#FFFFFF" OnClick="LinkButton2_Click"
                    Width="150px">College Detail</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
                <asp:LinkButton ID="lnkcourses" runat="server" ForeColor="#FFFFFF" OnClick="LinkButton1_Click"
                    Width="150px">Our Course</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
                <asp:LinkButton ID="lnkpro" runat="server" ForeColor="#FFFFFF" OnClick="lnkpro_Click"
                    Width="150px">Our Prospactus</asp:LinkButton>
            </td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
                <asp:LinkButton ID="lnkfeestr" runat="server" ForeColor="#FFFFFF" OnClick="lnkfeestr_Click"
                    Width="150px">Fee Structure</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
                <asp:LinkButton ID="lnkfcltylist" runat="server" ForeColor="#FFFFFF" OnClick="lnkfcltylist_Click"
                    Width="150px">Faculty List</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
                <asp:LinkButton ID="lnkFeedback" runat="server" ForeColor="#FFFFFF" OnClick="lnkFeedback_Click"
                    Width="150px">Your Feed Back</asp:LinkButton></td>
        </tr>
        <tr>
            <td colspan="6" style="height: 396px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

