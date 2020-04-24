<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="COLLEGE.aspx.cs" Inherits="COLLEGE" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 550px; height: 251px">
            <table>
                <tr>
                    <td colspan="2">
                        You select
        <asp:Label ID="Label1" runat="server"></asp:Label>
                        Univercity Now Select Your College<br />
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
        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" DataKeyField="coll">
        <ItemTemplate>
        <table border="2" width="400"><tr><th>
        <asp:LinkButton ID="lmkcoll" Text='<%#DataBinder.Eval(Container.DataItem,"coll")%>' runat="server"></asp:LinkButton>
        </th></tr></table></ItemTemplate>
        </asp:DataList>
                        <asp:Label ID="Label2" runat="server"></asp:Label></td>
                </tr>
            </table>
    </div>
    <asp:Label ID="lbluser" runat="server" Visible="False"></asp:Label>
</asp:Content>

