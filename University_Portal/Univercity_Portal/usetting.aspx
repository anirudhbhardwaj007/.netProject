<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="usetting.aspx.cs" Inherits="usetting" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table>
            <tr>
                <td align="center" colspan="3" style="background-color: #990000">
                    <h1>
                        <span style="font-size: 32pt; color: #ffffcc">UPDTE PROFILE</span></h1>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="3">
                    <asp:Label ID="lbluser" runat="server" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td rowspan="15" style="width: 100px">
                    <img src="img/mumbai_065.jpg" style="width: 170px; height: 483px" /></td>
                <td style="width: 100px" align="left">
                    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label></td>
                <td style="width: 100px" align="left">
                    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px" align="left">
                    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label></td>
                <td style="width: 100px" align="left">
                    <asp:TextBox ID="txtlname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px;" align="left">
                    <asp:Label ID="Label4" runat="server" Text="Father's Name"></asp:Label></td>
                <td style="width: 100px; height: 26px;" align="left">
                    <asp:TextBox ID="txtfathname" runat="server" AutoPostBack="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px" align="left">
                    <asp:Label ID="Label5" runat="server" Text="Date of Birth"></asp:Label></td>
                <td style="width: 100px" align="left">
                    <asp:TextBox ID="txtdob" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left" style="width: 100px">
                    <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
                </td>
                <td align="left" style="width: 100px">
                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px" align="left">
                    <asp:Label ID="Label1" runat="server" Text="College name" Width="96px"></asp:Label></td>
                <td style="width: 100px" align="left">
                    <asp:TextBox ID="txtcollname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px" align="left">
                    <asp:Label ID="Label13" runat="server" Text="10th %"></asp:Label></td>
                <td style="width: 100px" align="left">
                    <asp:TextBox ID="txt10" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px" align="left">
                    <asp:Label ID="Label14" runat="server" Text="12th %"></asp:Label></td>
                <td style="width: 100px" align="left">
                    <asp:TextBox ID="txt12" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px" align="left">
                    <asp:Label ID="Label15" runat="server" Text="Qualification"></asp:Label></td>
                <td style="width: 100px" align="left">
                    <asp:TextBox ID="txtother" runat="server" Width="147px"></asp:TextBox><br />
                    (add New qualification)</td>
            </tr>
            <tr>
                <td align="left" style="width: 100px">
                    <asp:Label ID="Label7" runat="server" Text="Prmanent Address" Width="127px"></asp:Label>
                </td>
                <td align="left" style="width: 100px">
                    <asp:TextBox ID="txtpadd" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left" style="width: 100px">
                    <asp:Label ID="Label8" runat="server" Text="Local Add"></asp:Label></td>
                <td align="left" style="width: 100px">
                    <asp:TextBox ID="txtladd" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px" align="left">
                    <asp:Label ID="Label19" runat="server" Text="Mobile No"></asp:Label></td>
                <td style="width: 100px" align="left">
                    <asp:TextBox ID="txtmob" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px" align="left">
                    <asp:Label ID="Label20" runat="server" Text="Hobby"></asp:Label></td>
                <td style="width: 100px" align="left">
                    <asp:TextBox ID="txthobby" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px" align="left">
                    <asp:Label ID="Label21" runat="server" Text="Home town"></asp:Label></td>
                <td style="width: 100px" align="left">
                    <asp:TextBox ID="txthtown" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px" align="left">
                    <asp:Label ID="Label22" runat="server" Text="Age"></asp:Label></td>
                <td style="width: 100px" align="left">
                    <asp:TextBox ID="txtage" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td rowspan="1" style="width: 100px">
                </td>
                <td colspan="2">
                    <asp:Label ID="lbldis" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td rowspan="1" style="width: 100px">
                </td>
                <td colspan="2">
                    <asp:Button ID="btnupdate" runat="server" Text="UPDATE" Width="293px" OnClick="btnupdate_Click" /></td>
            </tr>
        </table>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

