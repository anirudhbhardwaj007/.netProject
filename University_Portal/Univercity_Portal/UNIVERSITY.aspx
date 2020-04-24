<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="UNIVERSITY.aspx.cs" Inherits="UNIVERSITY" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 637px">
                <tr>
                    <td style="width: 281px" align="right">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        Select State</td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="True" Width="258px" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                        </asp:DropDownList><br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 281px" align="right">
                        Select City&nbsp;</td>
                    <td style="width: 100px" align="center">
                        <asp:DropDownList ID="ddlcity" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlcity_SelectedIndexChanged"
                            Width="257px">
                        </asp:DropDownList><br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="background-color: #990000">
                        <strong><span style="color: #ff0066"><hr />
                            <span style="font-size: 36pt; color: #ffff99; font-family: Segoe Print">
                        UNIVERCITY</span><br />
                        </span></strong></td>
                </tr>
                <tr>
                    <td colspan="2">
                    <asp:DataList ID="DataList1" OnItemCommand="DataList1_ItemCommand" runat="server" 
                DataKeyField="uni">
    <ItemTemplate>
    <table border ="2" width="600"><tr><th>
        <asp:LinkButton ID="LinkButton1" Text='<%#DataBinder.Eval(Container.DataItem,"uni")%>' runat="server">LinkButton</asp:LinkButton>
        </th></tr></table>
        </ItemTemplate>
        </asp:DataList>
        <asp:Label ID="Label1" runat="server"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="lbluser" runat="server" Visible="False"></asp:Label>
                </tr>
            </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

