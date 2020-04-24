<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="USERHOME.aspx.cs" Inherits="USERHOME1" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="text-align: center">
        <table border="2" frame="border" width="100%">
            <tr>
                <td align="right" colspan="3" style="height: 28px">
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.google.com">Google Search</asp:HyperLink></td>
            </tr>
            <tr>
                <td style="width: 162px; height: 69px; text-align: left;">
                    <span style="font-size: 11pt">&nbsp;<strong><span style="font-size: 12pt; color: #3300ff;
                        text-decoration: underline">University:</span></strong><br />
                        A university is an institution of higher education and research,
                            which grants academic degrees at all levels (bachelor, master, and doctorate) in
                            a variety of subjects. A university provides both tertiary and quaternary education esearch,&nbsp;<br />
                    </span>
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://en.wikipedia.org/wiki/Portal:University" Font-Size="10pt">More about University>></asp:HyperLink></td>
                <td style="width: 211px; height: 69px; font-size: 12pt;">
                    <img src="img/Mantralaya University.jpg" style="width: 297px; height: 274px" id="IMG1" alt="Mantralaya University" /></td>
                <td style="width: 210px; height: 69px; font-size: 12pt; text-align: left;">
                    <p>
                        <strong><span style="color: #3300ff; text-decoration: underline">Oxford: </span>&nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong><span style="font-size: 11pt">
                                Degree Dceremony at TheUniversity ofOxford. ThePro-Vice-Chancellor in MA gown and hood, Proctor in official dress and new Doctors of Philosophy in scarlet full dress. Behind them, a bedel, a Doctor and Bachelors of Arts and Medicine graduate.Design to the University ofOxford<br />
                            </span><span style="font-size: 11pt"></span>
                    </p>
                    <p>
                        <span style="font-size: 11pt">&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="http://www.ox.ac.uk/admissions/postgraduate_courses/" Font-Size="10pt">University of Oxford>></asp:HyperLink>
                        </span>
                    </p>
                </td>
            </tr>
            <tr>
                <td style="width: 162px; height: 179px">
                    <img src="img/1_4457m.jpg" style="width: 142px; height: 150px" /></td>
                <td style="width: 211px; height: 179px">
                    <div align="left" style="width: 300px; float:right; height: 172px" dir="ltr">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Width="28%">Leatest News</asp:TextBox><br />
                        <asp:ListBox ID="news1" runat="server" BackColor="#FFFFC0" Height="131px" Width="298px" ForeColor="#990000" >
                        </asp:ListBox><br />
                    </div>
                    </td>
                <td style="width: 210px; height: 179px">
                    <img src="img/graduation.jpg" style="width: 142px; height: 136px" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

