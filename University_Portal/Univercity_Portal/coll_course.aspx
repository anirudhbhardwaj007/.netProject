<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="coll_course.aspx.cs" Inherits="coll_course" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
            </td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
    <asp:Label ID="lbluser" runat="server" Visible="False"></asp:Label></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
                CollegeName :-</td>
            <td align="left" colspan="3" style="color: #ffffcc; background-color: #990000">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True"
        Font-Size="Large"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px; color: #ffffcc; height: 21px; background-color: #990000">
                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#FFFFFF" OnClick="LinkButton2_Click"
                    Width="150px">College Detail</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; height: 21px; background-color: #990000">
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#FFFFFF" OnClick="LinkButton1_Click"
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
                    Width="150px">Your Feed Back</asp:LinkButton></td>
        </tr>
        <tr>
            <td colspan="6" style="height: 534px">
                &nbsp;&nbsp;
                <asp:DataList ID="DataList1" runat="server" DataKeyField="coll_branch" BackColor="PeachPuff" BorderColor="#DEDFDE" BorderStyle="Dotted" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="325px">
                <ItemTemplate>
                <asp:Label ID="lblbr" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"coll_branch") %>'></asp:Label>
                </ItemTemplate>
                    <FooterStyle BackColor="#CCCC99" />
                    <EditItemStyle BackColor="#FFC0C0" />
                    <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <AlternatingItemStyle BackColor="White" />
                    <ItemStyle BackColor="#990000" ForeColor="DimGray" />
                    <SeparatorStyle BackColor="#FFC0C0" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                </asp:DataList></td>
        </tr>
    </table>
    <br />
</asp:Content>

