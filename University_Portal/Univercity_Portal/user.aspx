<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="border-top-width: thick; border-left-width: thick; border-left-color: brown;
            border-bottom-width: thick; border-bottom-color: brown; border-top-color: brown;
            border-collapse: separate; border-right-width: thick; border-right-color: brown">
            <tr>
                <td colspan="4" style="background-color: #990000">
                    <strong><span style="font-size: 24pt; color: #ffffcc">WELCOME </span></strong></td>
            </tr>
            <tr>
                <td style="font: menu; color: #ffffcc; background-color: #990000" colspan="4" align="right">
                        <asp:Label ID="lbluser" runat="server" Font-Size="9pt"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 99px; height: 21px">
                    <img src="img/GoaUniversity.jpg" style="width: 228px; height: 199px" alt="Goa University" /><br />
                    Goa University</td>
                <td style="width: 83px; height: 21px">
                    <img id="IMG1" src="img/Magadh%20University.bmp" style="width: 234px; height: 194px" alt="Magadh University" /><br />
                    Magadh University</td>
                <td style="height: 21px" colspan="2">
                    <img id="IMG2" src="img/Mantralaya%20University.jpg" style="width: 224px; height: 195px" alt="Mantralaya University" /><br />
                    Mantralaya University</td>
            </tr>
            <tr>
                <td style="width: 99px">
                    <img src="img/puttaparti_university.jpg" style="width: 226px; height: 207px" alt="puttaparti_university" /><br />
                    puttaparti_university</td>
                <td style="width: 83px">
                    <img src="img/Sayajirao%20University.bmp" style="width: 238px; height: 203px" alt="Sayajirao University" /><br />
                    Sayajirao University</td>
                <td colspan="2">
                    <img src="img/Vedanta-University.jpg" style="width: 220px; height: 206px" alt="Vedanta-University" /><br />
                    Vedanta-University</td>
            </tr>
        </table>
    </div>
</asp:Content>

