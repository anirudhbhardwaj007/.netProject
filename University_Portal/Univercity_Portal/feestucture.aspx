<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="feestucture.aspx.cs" Inherits="feestucture" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
            </td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
                <asp:Label ID="lbluser" runat="server" Visible="False"></asp:Label></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000">
                College Name:-</td>
            <td align="left" colspan="3" style="color: #ffffcc; background-color: #990000">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px; color: #ffffcc; background-color: #990000; height: 21px;">
                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#FFFFFF" OnClick="LinkButton2_Click"
                    Width="150px">College Detail</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000; height: 21px;">
                <asp:LinkButton ID="lnkcourses" runat="server" ForeColor="#FFFFFF" OnClick="LinkButton1_Click"
                    Width="150px">Our Course</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000; height: 21px;">
                <asp:LinkButton ID="lnkpro" runat="server" ForeColor="#FFFFFF" OnClick="lnkpro_Click"
                    Width="150px">Our Prospactus</asp:LinkButton>
            </td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000; height: 21px;">
                <asp:LinkButton ID="lnkfeestr" runat="server" ForeColor="#FFFFFF" OnClick="lnkfeestr_Click"
                    Width="150px">Fee Structure</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000; height: 21px;">
                <asp:LinkButton ID="lnkfcltylist" runat="server" ForeColor="#FFFFFF" OnClick="lnkfcltylist_Click"
                    Width="150px">Faculty List</asp:LinkButton></td>
            <td style="width: 100px; color: #ffffcc; background-color: #990000; height: 21px;">
                <asp:LinkButton ID="lnkFeedback" runat="server" ForeColor="#FFFFFF" OnClick="lnkFeedback_Click"
                    Width="150px">Result</asp:LinkButton></td>
        </tr>
        <tr>
            <td colspan="6" style="height: 567px">
              
                &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:DropDownList ID="ddluni" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddluni_SelectedIndexChanged"
                    Style="z-index: 100; left: 384px; position: absolute; top: 234px">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlcg" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlcg_SelectedIndexChanged"
                    Style="z-index: 101; left: 388px; position: absolute; top: 276px">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlc" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlc_SelectedIndexChanged"
                    Style="z-index: 102; left: 390px; position: absolute; top: 312px">
                </asp:DropDownList>
                <asp:Label ID="lbldis" runat="server" ForeColor="#FF0033" Style="z-index: 103; left: 548px;
                    position: absolute; top: 363px"></asp:Label>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="16pt" ForeColor="#00CC00"
                    Style="z-index: 104; left: 437px; position: absolute; top: 335px" Text="Now Insert Fee Structure"
                    Width="268px"></asp:Label>
                <asp:Label ID="Label18" runat="server" Style="z-index: 105; left: 274px; position: absolute;
                    top: 234px" Text="Select Univercity"></asp:Label>
                <asp:Label ID="Label20" runat="server" Style="z-index: 106; left: 252px; position: absolute;
                    top: 277px" Text="Select College Group  "></asp:Label>
                <asp:Label ID="Label21" runat="server" Style="z-index: 107; left: 287px; position: absolute;
                    top: 309px" Text="Select College "></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;&nbsp;
                <br />
                <br />
                <br />
                
                <asp:DataList ID="DataList1" runat="server" style="z-index: 109; left: 386px; position: absolute; top: 415px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both">
                    
                  <ItemTemplate><table style="float:left">  
           <tr><th> For_year</th><td> <%#DataBinder.Eval(Container.DataItem,"For_year") %></td></tr>
            <tr><th>  Book_Bank     </th><td>              <%#DataBinder.Eval(Container.DataItem,"Book_Bank") %></td></tr>
           <tr><th>  Training_placement </th><td>                    <%#DataBinder.Eval(Container.DataItem,"Training_placement") %></td></tr>
<tr><th>Registration           </th><td>      <%#DataBinder.Eval(Container.DataItem,"Registration") %></td></tr>
<tr><th>Bus_Fee             </th><td>       <%#DataBinder.Eval(Container.DataItem,"Bus_Fee") %></td></tr>
<tr><th>Medical_Fee</th><td>   <%#DataBinder.Eval(Container.DataItem,"Medical_Fee") %></td></tr>
<tr><th>Caltural_Fee</th><td>   <%#DataBinder.Eval(Container.DataItem,"Caltural_Fee") %></td></tr>
<tr><th>I_card_Lib_Fee</th><td>   <%#DataBinder.Eval(Container.DataItem,"I_card_Lib_Fee") %></td></tr>
<tr><th>Univercity_fee</th><td>   <%#DataBinder.Eval(Container.DataItem,"Univercity_fee") %></td></tr>
<tr><th>Hostal_Fee</th><td>   <%#DataBinder.Eval(Container.DataItem,"Hostal_Fee") %></td></tr>
<tr><th>Mess_Fee</th><td>   <%#DataBinder.Eval(Container.DataItem,"Mess_Fee") %></td></tr>
<tr><th>College_Caution_fee</th><td>   <%#DataBinder.Eval(Container.DataItem,"College_Caution_fee") %></td></tr>
<tr><th>Hostal_caution_fee</th><td>   <%#DataBinder.Eval(Container.DataItem,"Hostal_caution_fee") %></td></tr>
                   </table> </ItemTemplate>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

