<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="COLLEGES_List.aspx.cs" Inherits="COLLEGES_List" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <table>
                <tr>
                    <td colspan="2">
                        You select
    <asp:Label ID="Label1" runat="server"></asp:Label>&nbsp;
                        College Now Select Your Sub-College<br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr />
                        <br />
        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" DataKeyField="sub_coll">
        <ItemTemplate>
        <table border="2" width="400"><tr><th>
        <asp:LinkButton ID="lmkcoll" Text='<%#DataBinder.Eval(Container.DataItem,"sub_coll")%>' runat="server"></asp:LinkButton>
        </th></tr></table></ItemTemplate>
        </asp:DataList>
                        <asp:Label ID="Label2" runat="server"></asp:Label></td>
                </tr>
            </table>
    <asp:Label ID="lbluser" runat="server" Visible="False"></asp:Label>
</asp:Content>

