<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="REGISTRATION.aspx.cs" Inherits="REGISTRATION" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#FFFFCC"
        BorderColor="#FFDFAD" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em"
        Height="279px" OnFinishButtonClick="Wizard1_FinishButtonClick" Width="647px">
        <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
        <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid"
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
        <WizardSteps>
            <asp:WizardStep ID="genaral" runat="server" Title="General" StepType="Start">
                <table style="width: 334px; height: 254px">
                    <tr>
                        <td colspan="2" style="background-color: #990000">
                            <span style="font-size: 12pt"><strong><span style="color: #ffff99">GENERAL INFORMATION</span></strong>&nbsp;</span></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                        </td>
                        <td style="width: 100px; height: 21px">
                            <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Label ID="Label2" runat="server" Text="Father's Name"></asp:Label>
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtfathname" runat="server" AutoPostBack="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Label ID="Label4" runat="server" Text="Date of Birth"></asp:Label>
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 54px;">
                            <asp:Label ID="Label5" runat="server" Text="Sex"></asp:Label>
                        </td>
                        <td style="width: 100px; height: 54px;" align="left">
                            <asp:RadioButton ID="rdomale" runat="server" Text="male" OnCheckedChanged="rdomale_CheckedChanged" AutoPostBack="True" />
                            <asp:RadioButton ID="rdofemale" runat="server" Text="female" OnCheckedChanged="rdofemale_CheckedChanged" AutoPostBack="True" />
                            <asp:Label ID="lblsex" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
                        </td>
                        <td style="width: 100px" align="left">
                            <asp:DropDownList ID="ddlcity" runat="server" Width="152px" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </asp:WizardStep>
            <asp:WizardStep ID="edgu" runat="server" Title="Educational" StepType="Step">
                <br />
                <br />
                <table style="width: 341px">
                    <tr>
                        <td colspan="2" style="height: 20px; background-color: #990000">
                            <strong><span style="font-size: 12pt; color: #ffff99">EDUCATIONAL INFORMATION</span></strong></td>
                    </tr>
                    <tr>
                        <td style="width: 50px">
                            <asp:Label ID="Label10" runat="server" Text="College Name" Width="93px"></asp:Label>
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtcollname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50px">
                            <asp:Label ID="Label16" runat="server" Text="Course"></asp:Label>
                        </td>
                        <td style="width: 100px">
                            <asp:DropDownList ID="ddlcourse" runat="server" Width="154px" AutoPostBack="True" OnSelectedIndexChanged="ddlcourse_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50px">
                            <asp:Label ID="Label11" runat="server" Text="Branch"></asp:Label>
                        </td>
                        <td style="width: 100px">
                            <asp:DropDownList ID="ddlbranch" runat="server" Width="157px" AutoPostBack="True" OnSelectedIndexChanged="ddlbranch_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50px">
                            <asp:Label ID="Label12" runat="server" Text="Semister"></asp:Label>
                        </td>
                        <td style="width: 100px">
                            <asp:DropDownList ID="ddlsem" runat="server" Width="156px" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50px">
                            <asp:Label ID="Label13" runat="server" Text="10th %"></asp:Label>
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txt10" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50px">
                            <asp:Label ID="Label14" runat="server" Text="12th %"></asp:Label>
                        </td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txt12" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50px">
                            <asp:Label ID="Label15" runat="server" Text="Qualification"></asp:Label>
                        </td>
                        <td style="width: 100px" align="left">
                            <asp:CheckBox ID="chkbe" runat="server" Text="BE" Width="40px" AutoPostBack="True" />
                            <asp:CheckBox ID="chkmca" runat="server" Text="MCA" Width="53px" AutoPostBack="True" />
                            <asp:CheckBox ID="chkmba" runat="server" Text="MBA" Width="52px" AutoPostBack="True" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50px">
                        </td>
                        <td style="width: 100px" align="left">
                            <asp:CheckBox ID="chkot" runat="server" Text="Other" AutoPostBack="True" />
                            <asp:TextBox ID="txtother" runat="server" Visible="False" Width="145px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </asp:WizardStep>
            <asp:WizardStep ID="personal" runat="server" Title="Personal" StepType="Step">
                <div style="text-align: center">
                    <table>
                        <tr>
                            <td colspan="2" style="background-color: #990000">
                                <strong><span style="color: #ffff99">PERSONAL INFORMATION</span></strong></td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 100px">
                                <asp:Label ID="Label17" runat="server" Text="Permanent Address" Width="138px"></asp:Label>
                            </td>
                            <td align="left" style="width: 100px">
                                <asp:TextBox ID="txtpadd" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 100px; height: 18px">
                                <asp:Label ID="Label18" runat="server" Text="Local Address"></asp:Label>
                            </td>
                            <td align="left" style="width: 100px; height: 18px">
                                <asp:TextBox ID="txtladd" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 100px; height: 18px">
                                <asp:Label ID="Label19" runat="server" Text="Mobile No"></asp:Label>
                            </td>
                            <td align="left" style="width: 100px; height: 18px">
                                <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 100px; height: 18px">
                                <asp:Label ID="Label20" runat="server" Text="Hobby"></asp:Label>
                            </td>
                            <td align="left" style="width: 100px; height: 18px">
                                <asp:TextBox ID="txthobby" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 100px; height: 18px">
                                <asp:Label ID="Label21" runat="server" Text="Home town"></asp:Label>
                            </td>
                            <td align="left" style="width: 100px; height: 18px">
                                <asp:TextBox ID="txthtown" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 100px; height: 18px">
                                <asp:Label ID="Label22" runat="server" Text="Age"></asp:Label>
                            </td>
                            <td align="left" style="width: 100px; height: 18px">
                                <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
            </asp:WizardStep>
            <asp:WizardStep ID="login" runat="server" Title="Login" StepType="Finish">
                <table>
                    <tr>
                        <td colspan="2" style="background-color: #990000">
                            <strong><span style="font-size: 12pt; color: #ffff99">LOGIN INFORMATION</span></strong></td>
                    </tr>
                    <tr>
                        <td style="width: 176px">
                            <asp:Label ID="Label7" runat="server" Font-Size="12pt" Text="E-mail" Width="172px"></asp:Label>
                        </td>
                        <td style="width: 201px">
                            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail"
                                ErrorMessage="must fill password">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                                ErrorMessage="email as example@example.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 176px">
                            <asp:Label ID="Label8" runat="server" Font-Size="12pt" Text="Password" Width="175px"></asp:Label>
                        </td>
                        <td style="width: 201px" align="left">
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpass"
                                ErrorMessage="must fill password">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtpass"
                                ErrorMessage="password must between 4 to 9" ValidationExpression="\w{4,9}">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 176px">
                            <asp:Label ID="Label9" runat="server" Font-Size="12pt" Text="Conferm Password" Width="175px"></asp:Label>
                        </td>
                        <td style="width: 201px" align="left">
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                            &nbsp;
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass"
                                ControlToValidate="TextBox1" ErrorMessage="must same as password">*</asp:CompareValidator>
                        </td>
                    </tr>
                </table>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                    ShowSummary="False" />
            </asp:WizardStep>
        </WizardSteps>
        <SideBarButtonStyle ForeColor="White" />
        <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px"
            Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />
        <HeaderTemplate>
            <strong><span style="font-size: 24pt; color: #996633">REGISTRATION</span></strong>
        </HeaderTemplate>
    </asp:Wizard>
                <asp:Label ID="lbldis" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>

