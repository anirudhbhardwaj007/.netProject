<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Addfeestucture.aspx.cs" Inherits="Addfeestucture" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="z-index: 107; left: 317px; width: 402px; position: absolute; top: 135px;
        height: 498px">
        <asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 23px; position: absolute;
            top: 196px" Text="BOOK BANK"></asp:Label>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:DropDownList ID="ddluni" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddluni_SelectedIndexChanged"
            Style="z-index: 101; left: 0px; position: absolute; top: 21px">
        </asp:DropDownList>
        <br />
        &nbsp;&nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:DropDownList ID="ddlcg" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlcg_SelectedIndexChanged"
            Style="z-index: 102; left: 4px; position: absolute; top: 63px">
        </asp:DropDownList>
        &nbsp;
        <asp:Label ID="Label3" runat="server" Style="z-index: 103; left: -127px; position: absolute;
            top: 219px" Text="TRAINING AND PLACEMENT FEE" Width="247px"></asp:Label>
        <asp:Label ID="Label4" runat="server" ForeColor="#990033" Style="z-index: 104; left: 90px;
            position: absolute; top: 243px" Text="OTHER FEE"></asp:Label>
        <asp:Label ID="Label5" runat="server" Style="z-index: 105; left: 39px; position: absolute;
            top: 292px" Text="BUS FEE "></asp:Label>
        <asp:Label ID="Label7" runat="server" Style="z-index: 106; left: 2px; position: absolute;
            top: 315px" Text="MEDICAL FEE "></asp:Label>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:DropDownList ID="ddlc" runat="server" AutoPostBack="True" Style="z-index: 107;
            left: 6px; position: absolute; top: 99px">
        </asp:DropDownList>
        &nbsp;
        <asp:Label ID="Label8" runat="server" Style="z-index: 108; left: -83px; position: absolute;
            top: 337px" Text="CELTURAL ACTIVITY FEE" Width="189px"></asp:Label>
        <asp:Label ID="Label6" runat="server" Style="z-index: 109; left: -39px; position: absolute;
            top: 267px" Text="REGISTRATION FEE"></asp:Label>
        <asp:Label ID="Label9" runat="server" Style="z-index: 110; left: -92px; position: absolute;
            top: 360px" Text="ID CARD & LIBRARY CARD" Width="197px"></asp:Label>
        <asp:Label ID="Label10" runat="server" Style="z-index: 111; left: -23px; position: absolute;
            top: 383px" Text="UNIVERCITY FEE"></asp:Label>
        <asp:Label ID="Label11" runat="server" ForeColor="#990033" Style="z-index: 112; left: 44px;
            position: absolute; top: 407px" Text="OPTIONALFACILITY"></asp:Label>
        <asp:Label ID="Label12" runat="server" Style="z-index: 113; left: 5px; position: absolute;
            top: 429px" Text="HOSTAL FEE"></asp:Label>
        <asp:Label ID="Label13" runat="server" Style="z-index: 114; left: -12px; position: absolute;
            top: 452px" Text="MESS CHARGE"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 115; left: 200px; position: absolute;
            top: 522px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 116; left: 200px; position: absolute;
            top: 499px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 117; left: 200px; position: absolute;
            top: 455px"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 118; left: 200px; position: absolute;
            top: 431px"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 119; left: 199px; position: absolute;
            top: 383px"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 120; left: 198px; position: absolute;
            top: 359px"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server" Style="z-index: 121; left: 199px; position: absolute;
            top: 335px"></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server" Style="z-index: 122; left: 199px; position: absolute;
            top: 311px"></asp:TextBox>
        <asp:TextBox ID="TextBox9" runat="server" Style="z-index: 123; left: 198px; position: absolute;
            top: 262px"></asp:TextBox>
        <asp:TextBox ID="TextBox10" runat="server" Style="z-index: 124; left: 198px; position: absolute;
            top: 286px"></asp:TextBox>
        <asp:TextBox ID="TextBox11" runat="server" Style="z-index: 125; left: 203px; position: absolute;
            top: 218px"></asp:TextBox>
        <asp:TextBox ID="TextBox12" runat="server" Style="z-index: 126; left: 202px; position: absolute;
            top: 195px"></asp:TextBox>
        <asp:Label ID="Label14" runat="server" ForeColor="#990033" Style="z-index: 127; left: 45px;
            position: absolute; top: 477px" Text="DEPOSIT(one at the time of admission)"></asp:Label>
        <asp:Label ID="Label15" runat="server" Style="z-index: 128; left: -93px; position: absolute;
            top: 520px" Text="HOSTAL CAUTION MONEY"></asp:Label>
        <asp:Label ID="Label16" runat="server" Style="z-index: 129; left: -98px; position: absolute;
            top: 498px" Text="COLLEGE CAUTION MONEY"></asp:Label>
        <asp:Button ID="BTNADD" runat="server" Height="22px" OnClick="BTNADD_Click" Style="z-index: 130;
            left: 126px; position: absolute; top: 569px" Text="ADD" Width="111px" />
        <asp:Label ID="Label17" runat="server" Style="z-index: 131; left: 43px; position: absolute;
            top: 174px" Text="FOR YEAR"></asp:Label>
        <asp:TextBox ID="txtyear" runat="server" Style="z-index: 132; left: 200px; position: absolute;
            top: 170px"></asp:TextBox>
        <br />
        <asp:Label ID="lbldis" runat="server" ForeColor="#FF0033" Style="z-index: 133; left: 164px;
            position: absolute; top: 150px"></asp:Label>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" ForeColor="#00CC00"
            Style="z-index: 134; left: 53px; position: absolute; top: 122px" Text="Now Insert Fee Structure"
            Width="268px"></asp:Label>
        <asp:Label ID="Label18" runat="server" Style="z-index: 135; left: -110px; position: absolute;
            top: 21px" Text="Select Univercity"></asp:Label>
        &nbsp;
        <asp:Label ID="Label20" runat="server" Style="z-index: 137; left: -132px; position: absolute;
            top: 64px" Text="Select College Group  "></asp:Label>
        <asp:Label ID="Label21" runat="server" Style="z-index: 139; left: -97px; position: absolute;
            top: 96px" Text="Select College "></asp:Label>
    </div>
</asp:Content>

