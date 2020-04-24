<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="result_search.aspx.cs" Inherits="result_search" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="1" style="width: 911px; border-color: #990000; border-style:double; height: 368px">
        <tr>
            <td style="width: 100px; height: 22px; background-color: #990000;">
    <asp:Label ID="Label1" runat="server" Text="Enrollment No." Width="146px" BackColor="White" BorderColor="White" Font-Bold="True" ForeColor="Black"></asp:Label></td>
            <td style="width: 114px">
        <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid"></asp:TextBox></td>
            <td style="width: 13px; background-color: #990000;">
        </td>
            <td style="width: 146px">
        </td>
            <td style="width: 146px; background-color: #990000;">
            </td>
            <td style="width: 146px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 22px; background-color: #990000;">
        <asp:Label ID="Label4" runat="server" Text="Stream" Width="141px" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White"></asp:Label></td>
            <td style="width: 114px">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="153px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList></td>
            <td style="width: 13px; background-color: #990000;">
            </td>
            <td style="width: 146px">
            </td>
            <td style="width: 146px; background-color: #990000;">
            </td>
            <td style="width: 146px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 22px; background-color: #990000;">
        <asp:Label ID="Label2" runat="server" Text="Branch" Width="141px" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td style="width: 114px">
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Width="154px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList></td>
            <td style="width: 13px; background-color: #990000;">
            </td>
            <td style="width: 146px">
            </td>
            <td style="width: 146px; background-color: #990000;">
            </td>
            <td style="width: 146px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 22px; background-color: #990000;">
        <asp:Label ID="Label3" runat="server" Text="Semester" Width="135px" Font-Bold="True" Font-Italic="False" ForeColor="White"></asp:Label></td>
            <td style="width: 114px">
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Width="155px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
        </asp:DropDownList></td>
            <td style="width: 13px; background-color: #990000;">
            </td>
            <td style="width: 146px">
            </td>
            <td style="width: 146px; background-color: #990000;">
            </td>
            <td style="width: 146px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 22px; background-color: #990000;">
        <asp:Label ID="Label11" runat="server" Text="THEORY SUBJECTS" Width="152px" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td style="width: 114px">
            </td>
            <td style="width: 13px; background-color: #990000;">
                <asp:Label ID="Label1999" runat="server" Font-Bold="True" ForeColor="White" Text="PRACTICAL  SUBJECTS"
                    Width="192px"></asp:Label></td>
            <td style="width: 146px">
            </td>
            <td style="width: 146px; background-color: #990000;">
                <asp:Label ID="Label19999" runat="server" Font-Bold="True" ForeColor="White" Text="MIDTERM SUBJECT" Width="164px"></asp:Label></td>
            <td style="width: 146px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 22px; background-color: #990000;">
        <asp:Label ID="Label5" runat="server" Visible="False" Width="117px" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td style="width: 114px">
        <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox></td>
            <td style="width: 13px; background-color: #990000;">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="White" Visible="False"
                    Width="103px"></asp:Label></td>
            <td style="width: 146px">
                <asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox></td>
            <td style="width: 146px; background-color: #990000;">
                <asp:Label
                                    ID="Label19" runat="server" Font-Bold="True" ForeColor="White" Text="Label" Visible="False"></asp:Label></td>
            <td style="width: 146px">
                <asp:TextBox ID="TextBox13" runat="server" Visible="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px; background-color: #990000;">
        <asp:Label ID="Label6" runat="server" Visible="False" Width="109px" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td style="width: 114px; height: 26px;">
        <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox></td>
            <td style="width: 13px; background-color: #990000; height: 26px;">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="White" Visible="False"
                    Width="117px"></asp:Label></td>
            <td style="width: 146px; height: 26px;">
                <asp:TextBox ID="TextBox9" runat="server" Visible="False"></asp:TextBox></td>
            <td style="width: 146px; background-color: #990000; height: 26px;">
                <asp:Label ID="Label20" runat="server" Font-Bold="True" ForeColor="White" Text="Label"
                    Visible="False"></asp:Label></td>
            <td style="width: 146px; height: 26px;">
                <asp:TextBox ID="TextBox14" runat="server" Visible="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; background-color: #990000;">
        <asp:Label ID="Label7" runat="server" Visible="False" Width="98px" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td style="width: 114px">
        <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox></td>
            <td style="width: 13px; background-color: #990000;">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="White" Visible="False"
                    Width="109px"></asp:Label></td>
            <td style="width: 146px">
                <asp:TextBox ID="TextBox10" runat="server" Visible="False"></asp:TextBox></td>
            <td style="width: 146px; background-color: #990000;">
            <asp:Label ID="Label21" runat="server" Font-Bold="True"
                        ForeColor="White" Text="Label" Visible="False"></asp:Label></td>
            <td style="width: 146px">
                <asp:TextBox ID="TextBox15" runat="server" Visible="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 22px; background-color: #990000;">
        <asp:Label ID="Label8" runat="server" Visible="False" Width="103px" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td style="width: 114px">
        <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox></td>
            <td style="width: 13px; background-color: #990000;">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="White" Visible="False"
                    Width="98px"></asp:Label></td>
            <td style="width: 146px">
                <asp:TextBox ID="TextBox11" runat="server" Visible="False"></asp:TextBox></td>
            <td style="width: 146px; background-color: #990000;">
            <asp:Label ID="Label22"
                            runat="server" Font-Bold="True" ForeColor="White" Text="Label" Visible="False"></asp:Label></td>
            <td style="width: 146px">
                <asp:TextBox ID="TextBox16" runat="server" Visible="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 8px; background-color: #990000;">
        <asp:Label ID="Label9" runat="server" Visible="False" Width="99px" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td style="width: 114px; height: 8px;">
        <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox></td>
            <td style="width: 13px; background-color: #990000; height: 8px;">
                <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="White" Visible="False"
                    Width="103px"></asp:Label></td>
            <td style="width: 146px; height: 8px;">
                <asp:TextBox ID="TextBox12" runat="server" Visible="False"></asp:TextBox></td>
            <td style="width: 146px; height: 8px; background-color: #990000;">
            <asp:Label
                                ID="Label23" runat="server" Font-Bold="True" ForeColor="White" Text="Label" Visible="False"></asp:Label></td>
            <td style="width: 146px; height: 8px;">
                <asp:TextBox ID="TextBox17" runat="server" Visible="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 22px; background-color: #990000;">
        <asp:Label ID="Label10" runat="server" Text="Label" Width="90px" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td style="width: 114px; height: 22px">
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
            <td style="width: 13px; background-color: #990000;">
            </td>
            <td style="width: 146px; height: 22px">
            </td>
            <td style="width: 146px; background-color: #990000;">
                <asp:Label ID="Label26" runat="server" Font-Bold="True" ForeColor="White" Text="Label"
                    Visible="False"></asp:Label></td>
            <td style="width: 146px; height: 22px">
                <asp:TextBox ID="TextBox19" runat="server" Visible="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 22px; background-color: #990000;">
            </td>
            <td style="width: 114px">
            </td>
            <td style="width: 13px; background-color: #990000;">
            </td>
            <td style="width: 146px">
            </td>
            <td style="width: 146px; background-color: #990000;">
            </td>
            <td style="width: 146px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 22px; background-color: #990000;">
        <asp:Label ID="LBLTH" runat="server" Text="TOTAL THEORY MARKS" Visible="False" Width="207px" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td style="width: 114px">
        <asp:TextBox ID="TXTTH" runat="server" Visible="false"  ></asp:TextBox></td>
            <td style="width: 13px; background-color: #990000;">
                <asp:Label ID="LBLPR" runat="server" Font-Bold="True" ForeColor="White" Text="TOTAL PRACTICALS MARKS"
                    Visible="False" Width="228px"></asp:Label></td>
            <td style="width: 146px">
                <asp:TextBox ID="TXTPR" runat="server" Visible="False"></asp:TextBox></td>
            <td style="width: 146px; background-color: #990000;">
                <asp:Label ID="lblmtotal" runat="server" Font-Bold="True" ForeColor="White" Text="TOTAL MIDTERM MARKS"
                    Width="218px"></asp:Label></td>
            <td style="width: 146px">
                <asp:TextBox ID="Txtmtotal" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 28px; background-color: #990000;">
        <asp:Label ID="LBLSESS" runat="server" Text="TOTAL SESSIONALS  MARKS" Visible="False" Width="221px" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td style="width: 114px; height: 28px;">
        <asp:TextBox ID="TXTSECTH" runat="server" Visible="False"></asp:TextBox></td>
            <td style="width: 13px; height: 28px; background-color: #990000;">
            </td>
            <td style="width: 146px; height: 28px;">
            </td>
            <td style="width: 146px; background-color: #990000;">
            </td>
            <td style="width: 146px; height: 28px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 22px; background-color: #990000;">
        <asp:Label ID="Lbltotal" runat="server" Text="TOTAL" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td style="width: 114px">
        <asp:TextBox ID="Txttotal" runat="server"></asp:TextBox></td>
            <td style="width: 13px; background-color: #990000;">
                <asp:Label ID="Lblresult" runat="server" Font-Bold="True" ForeColor="White" Text="Result"></asp:Label></td>
            <td style="width: 146px">
                <asp:TextBox ID="txtresult" runat="server"></asp:TextBox></td>
            <td style="width: 146px; background-color: #990000;">
                <asp:Label ID="lblback" runat="server" Font-Bold="True" ForeColor="White" Text="back Subject"
                    Width="88px"></asp:Label></td>
            <td style="width: 146px">
                <asp:TextBox ID="Txtback" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <asp:Button ID="Btnsearch" runat="server" Font-Bold="True" OnClick="Btnsearch_Click"
        Text="Search" Width="385px" />
</asp:Content>

