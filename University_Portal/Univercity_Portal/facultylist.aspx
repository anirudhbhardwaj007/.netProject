<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="facultylist.aspx.cs" Inherits="facultylist" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
            </td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
                <asp:Label ID="lbluser" runat="server" Visible="False"></asp:Label></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
                College_Name :-</td>
            <td align="left" colspan="3" style="color: #ffffcc; background-color: #990000">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px; color: #ffffcc; height: 21px; background-color: #990000">
                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#FFFFFF" OnClick="LinkButton2_Click"
                    Width="150px">College Detail</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; height: 21px; background-color: #990000">
                <asp:LinkButton ID="lnkcourses" runat="server" ForeColor="#FFFFFF" OnClick="LinkButton1_Click"
                    Width="150px">Our Course</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; height: 21px; background-color: #990000">
                <asp:LinkButton ID="lnkpro" runat="server" ForeColor="#FFFFFF" OnClick="lnkpro_Click"
                    Width="150px">Our Prospactus</asp:LinkButton>
            </td>
            <td style="width: 100px; color: #ffffcc; height: 21px; background-color: #990000">
                <asp:LinkButton ID="lnkfeestr" runat="server" ForeColor="#FFFFFF" OnClick="lnkfeestr_Click"
                    Width="150px">Fee Structure</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; height: 21px; background-color: #990000">
                <asp:LinkButton ID="lnkfcltylist" runat="server" ForeColor="#FFFFFF" OnClick="lnkfcltylist_Click"
                    Width="150px">Faculty List</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; height: 21px; background-color: #990000">
                <asp:LinkButton ID="lnkFeedback" runat="server" ForeColor="#FFFFFF" OnClick="lnkFeedback_Click"
                    Width="150px">Result</asp:LinkButton></td>
        </tr>
        <tr>
            <td colspan="6" style="height: 534px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<table>
                    <tr>
                        <td style="width: 160px">
                            Select Univercity</td>
                        <td style="width: 100px">
                            <asp:DropDownList ID="ddluni" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddluni_SelectedIndexChanged">
                            </asp:DropDownList></td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 160px">
                            Select
                College Group</td>
                        <td style="width: 100px">
                            <asp:DropDownList ID="ddlcg" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlcg_SelectedIndexChanged">
                            </asp:DropDownList></td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 160px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 21px">
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
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

