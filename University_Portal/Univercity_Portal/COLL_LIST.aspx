<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="COLL_LIST.aspx.cs" Inherits="COLL_LIST" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:DataList ID="DataList1" runat="server" DataKeyField="sub_coll">
        <ItemTemplate>
        <table border="2" width="400"><tr><th>
        <asp:Label ID="lmkcoll" Text='<%#DataBinder.Eval(Container.DataItem,"sub_coll")%>' runat="server"></asp:Label>
        </th></tr></table></ItemTemplate>
        </asp:DataList>
</asp:Content>

