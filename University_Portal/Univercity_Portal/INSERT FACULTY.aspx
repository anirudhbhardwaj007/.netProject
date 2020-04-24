<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="INSERT FACULTY.aspx.cs" Inherits="INSERT_FACULTY" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp;
        &nbsp;&nbsp;<asp:Label id="Label17" runat="server"
				Width="105px" Height="16px" Font-Bold="True" Font-Names="Arial">Faculty ID</asp:Label>
    &nbsp; &nbsp; &nbsp;&nbsp;
			<asp:TextBox id="TextBox16"
				runat="server" Width="128px" BackColor="#FFE0C0"></asp:TextBox><asp:Button id="Button3" runat="server"
				Width="88px" Text="search" Font-Bold="True" Font-Names="Arial" OnClick="Button3_Click"></asp:Button>
    &nbsp;
    <table id="TABLE1">
        <tr>
            <td colspan="4">
	<asp:Label id="Label1" runat="server"
				Width="256px" Height="24px" Font-Bold="True" Font-Size="Large" Font-Names="Arial" BorderStyle="Outset"
				BorderColor="#E0E0E0" ForeColor="Blue">Faculty Information :-</asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
			<asp:Label id="Label2" runat="server"
				Width="106px" Height="16px" Font-Bold="True" Font-Names="Arial">Faculty ID</asp:Label></td>
            <td style="width: 100px">
			<asp:TextBox id="TextBox1"
				runat="server" Width="128px" BackColor="#FFE0C0"></asp:TextBox></td>
            <td style="width: 99px">
                &nbsp;<asp:Label id="Label3" runat="server"
				Width="32px" Height="24px" Font-Bold="True" Font-Names="Arial">DOB</asp:Label></td>
            <td style="width: 100px">
			<asp:TextBox id="TextBox6"
				runat="server" Width="112px" BackColor="#FFE0C0"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
			<asp:Label id="Label4" runat="server"
				Width="129px" Height="24px" Font-Bold="True" Font-Names="Arial">Faculty name</asp:Label></td>
            <td style="width: 100px">
			<asp:TextBox id="TextBox2"
				runat="server" Width="128px" BackColor="#FFE0C0"></asp:TextBox></td>
            <td style="width: 99px">
			<asp:Label id="Label6" runat="server"
				Width="56px" Height="16px" Font-Bold="True" Font-Names="Arial">Address</asp:Label></td>
            <td style="width: 100px">
			<asp:TextBox id="TextBox4"
				runat="server" Width="112px" BackColor="#FFE0C0"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
			<asp:Label id="Label5" runat="server"
				Width="143px" Height="16px" Font-Bold="True" Font-Names="Arial">Father's name</asp:Label></td>
            <td style="width: 100px">
			<asp:TextBox id="TextBox3"
				runat="server" Width="128px" BackColor="#FFE0C0"></asp:TextBox></td>
            <td style="width: 99px">
			<asp:Label id="Label7" runat="server"
				Width="32px" Height="8px" Font-Bold="True" Font-Names="Arial">City</asp:Label></td>
            <td style="width: 100px">
			<asp:TextBox id="TextBox5"
				runat="server" Width="112px" BackColor="#FFE0C0"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
			<asp:Label id="Label10" runat="server"
				Width="112px" Height="2px" Font-Bold="True" Font-Names="Arial">Univ name</asp:Label></td>
            <td style="width: 100px">
			<asp:TextBox id="TextBox9"
				runat="server" Width="128px" BackColor="#FFE0C0"></asp:TextBox><asp:DropDownList ID="ddluname" runat="server" AutoPostBack="True" Width="134px" OnSelectedIndexChanged="ddluname_SelectedIndexChanged">
                </asp:DropDownList></td>
            <td style="width: 99px">
			<asp:Label id="Label13" runat="server"
				Width="48px" Height="16px" Font-Bold="True" Font-Names="Arial">Subject</asp:Label></td>
            <td style="width: 100px">
			<asp:TextBox id="TextBox12"
				runat="server" Width="112px" BackColor="#FFE0C0"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 27px">
			<asp:Label id="Label9" runat="server"
				Width="80px" Height="16px" Font-Bold="True" Font-Names="Arial">Qualification</asp:Label></td>
            <td style="width: 100px; height: 27px">
			<asp:TextBox id="TextBox8"
				runat="server" Width="128px" BackColor="#FFE0C0"></asp:TextBox></td>
            <td style="width: 99px; height: 27px">
			<asp:Label id="Label14" runat="server"
				Width="64px" Height="16px" Font-Bold="True" Font-Names="Arial">Persentage</asp:Label></td>
            <td style="width: 100px; height: 27px">
			<asp:TextBox id="TextBox13"
				runat="server" Width="112px" BackColor="#FFE0C0"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
			<asp:Label id="Label8" runat="server"
				Width="126px" Height="16px" Font-Bold="True" Font-Names="Arial">College name</asp:Label>
            </td>
            <td style="width: 100px">
			<asp:TextBox id="TextBox7"
				runat="server" Width="128px" BackColor="#FFE0C0"></asp:TextBox>
                <asp:DropDownList ID="ddlcname" runat="server" AutoPostBack="True" Width="134px">
                </asp:DropDownList></td>
            <td style="width: 99px">
			<asp:Label id="Label15" runat="server"
				Width="130px" Height="8px" Font-Bold="True" Font-Names="Arial">Year of pass</asp:Label></td>
            <td style="width: 100px">
			<asp:TextBox id="TextBox14"
				runat="server" Width="112px" BackColor="#FFE0C0"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
			<asp:Label id="Label11" runat="server"
				Width="67px" Height="16px" Font-Bold="True" Font-Names="Arial">E-Mail</asp:Label></td>
            <td style="width: 100px">
			<asp:TextBox id="TextBox10"
				runat="server" Width="128px" BackColor="#FFE0C0"></asp:TextBox></td>
            <td style="width: 99px">
                &nbsp;<asp:Label id="Label16" runat="server"
				Width="56px" Height="16px" Font-Bold="True" Font-Names="Arial">Sec_28</asp:Label></td>
            <td style="width: 100px">
			<asp:TextBox id="TextBox15"
				runat="server" Width="112px" BackColor="#FFE0C0"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
			<asp:Label id="Label12" runat="server"
				Width="40px" Height="2px" Font-Bold="True" Font-Names="Arial">Phone</asp:Label></td>
            <td style="width: 100px">
			<asp:TextBox id="TextBox11"
				runat="server" Width="128px" BackColor="#FFE0C0"></asp:TextBox></td>
            <td style="width: 99px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 99px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial Baltic"
                    Font-Size="11pt" Text="Insert" OnClick="Button1_Click" /></td>
            <td style="width: 100px">
			<asp:Button id="Button4" runat="server"
				Width="80px" Text="Update" Font-Bold="True" Font-Names="Arial" OnClick="Button4_Click"></asp:Button></td>
            <td style="width: 99px">
			<asp:Button id="Button5" runat="server"
				Width="61px" Height="23px" Text="Delete" Font-Bold="True" Font-Names="Arial" OnClick="Button5_Click"></asp:Button></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 99px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 99px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 99px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px">
            </td>
            <td style="width: 100px; height: 21px">
            </td>
            <td style="width: 99px; height: 21px">
            </td>
            <td style="width: 100px; height: 21px">
                &nbsp; &nbsp; &nbsp;
            </td>
        </tr>
    </table>
</div>
</asp:Content>

