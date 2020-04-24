<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="COLLEGE_Details.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table>
        <tr>
            <td style="width: 100px; color: #ffffcc; background-color: #990000; height: 21px;">
                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#FFFFFF" Width="150px" OnClick="LinkButton2_Click">College Detail</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000; height: 21px;">
    <asp:LinkButton ID="lnkcourses" runat="server" ForeColor="#FFFFFF" OnClick="LinkButton1_Click" Width="150px">Our Course</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000; height: 21px;">
                <asp:LinkButton ID="lnkpro" runat="server" ForeColor="#FFFFFF" Width="150px" OnClick="lnkpro_Click">Our Prospactus</asp:LinkButton>
            </td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000; height: 21px;">
                <asp:LinkButton ID="lnkfeestr" runat="server" ForeColor="#FFFFFF" Width="150px" OnClick="lnkfeestr_Click">Fee Structure</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000; height: 21px;">
                <asp:LinkButton ID="lnkfcltylist" runat="server" ForeColor="#FFFFFF" Width="150px" OnClick="lnkfcltylist_Click">Faculty List</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000; height: 21px;">
                <asp:LinkButton ID="lnkFeedback" runat="server" ForeColor="#FFFFFF" Width="150px" OnClick="lnkFeedback_Click">Result</asp:LinkButton></td>
        </tr>
        <tr>
            <td colspan="6">
<table style="width: 326px; height: 129px" frame="box" id="TABLE1">
                <tr>
                    <td colspan="2" style="background-color: #990000">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Courier New CYR"
                            Font-Size="24pt" Font-Underline="False" ForeColor="#FFE0C0"></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="height: 28px;" colspan="2">
                        <asp:Label ID="lbluser" runat="server" Visible="False"></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="width: 34px; height: 28px;">
                        <asp:Label ID="Label4" runat="server" Text="Director Name" Width="150px"></asp:Label></td>
                    <td style="width: 6px; height: 28px;" align="left">
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="left" style="width: 34px; height: 21px">
                        <asp:Label ID="Label3" runat="server" Text="College Address" Width="150px"></asp:Label></td>
                    <td align="left" style="width: 6px; height: 21px">
                        <asp:TextBox ID="TextBox3" runat="server" Width="200px" Height="43px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="left" style="width: 34px">
                        <asp:Label ID="Label5" runat="server" Text="College e-mail" Width="150px"></asp:Label></td>
                    <td style="width: 6px" align="left">
                        <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="left" style="width: 34px">
                        <asp:Label ID="Label6" runat="server" Text="College Fax-No" Width="150px"></asp:Label></td>
                    <td style="width: 6px" align="left">
                        <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="left" style="width: 34px; height: 15px;">
                        <asp:Label ID="Label7" runat="server" Text="Total No of Faculty" Width="150px"></asp:Label></td>
                    <td style="width: 6px; height: 15px;" align="left">
                        <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="left" style="width: 34px">
                        <asp:Label ID="Label8" runat="server" Text="Total No of Student" Width="150px"></asp:Label></td>
                    <td style="width: 6px" align="left">
                        <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="left" style="width: 34px">
                        <asp:Label ID="Label9" runat="server" Text="Total Computer" Width="150px"></asp:Label></td>
                    <td style="width: 6px" align="left">
                        <asp:TextBox ID="TextBox8" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="left" style="width: 34px">
                        <asp:Label ID="Label10" runat="server" Text="Total Books" Width="150px"></asp:Label></td>
                    <td style="width: 6px" align="left">
                        <asp:TextBox ID="TextBox9" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="left" style="width: 34px">
                    </td>
                    <td style="width: 6px">
                        </td>
                </tr>
            </table>
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

