using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class insertresult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con;
            SqlCommand cmd, cmd1;
            SqlDataReader dr;
            // Me.DropDownList4.Items.Add("I Mid Term")
            //Me.DropDownList4.Items.Add("II Mid Term")
            //Me.DropDownList4.Items.Add("Final Exam")
            con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
            con.Open();
            String str;
            str = "select * from course";
            cmd = new SqlCommand(str, con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
               ddlstream.Items.Add(dr.GetString(0));
            }
            dr.Close();
        }
    }
    protected void Btnsearch_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        String enroll = TextBox1.Text;
        string s1, s2, s3, s4, s5, s6;
        string p1, p2, p3, p4, p5;
        string m1, m2, m3, m4, m5, m6;
        s1 = Txts1.Text;
        s2 = Txts2.Text;
        s3 = Txts3.Text;
        s4 = Txts4.Text;
        s5 = Txts5.Text;
        s6 = Txts6.Text;
        m1 = txtm1.Text;
        m2 = Txtm2.Text;
        m3 = Txtm3.Text;
        m4 = txtm4.Text;
        m5 = Txtm5.Text;
        m6 = txtm6.Text;
        p1 = Txtp1.Text;
        p2 = Txtp2.Text;
        p3 = Txtp3.Text;
        p4 = txtp4.Text;
        p5 = txtp5.Text;
        String tth = TXTTH.Text;
        String prth = TXTPR.Text;
        String mtot = Txtmtotal.Text;
        String stot = TXTSECTH.Text;
        String tot = Txttotal.Text;
        String res = txtresult.Text;
        String bsub = Txtback.Text;
        String s = ddlstream.SelectedItem.Text;
        String b = ddlbr.SelectedItem.Text;
        String sem = ddlsem.SelectedItem.Text;
        String str;
        str = "insert into results values('" + enroll + "','" + s + "','" + b + "','" + sem + "','" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "','" + s5 + "','" + s6 + "','" + p1 + "','" + p2 + "','" + p3 + "','" + p4 + "','" + p5 + "','-','" + m1 + "','" + m2 + "','" + m3 + "','" + m4 + "','" + m5 + "','" + m6 + "','-','" + tth + "','" + prth + "','" + stot + "','" + tot + "','" + res + "','" + bsub + "')";
        SqlCommand cmd;
        cmd = new SqlCommand(str, con);
        int i;
        i = cmd.ExecuteNonQuery();
        if (i != 0)
        {
            Response.Write("record insert successfully");
            txtm1.Text = " ";
            Txtm2.Text = " ";
            Txtm3.Text = " ";
            //txtm4.Text = " ";
            Txtm5.Text = " ";
            txtm6.Text = " ";
            Txtmtotal.Text = " ";
            Txtp1.Text = " ";
            Txtp2.Text = " ";
            Txtp3.Text = " ";
            txtp4.Text = " ";
            txtp5.Text = " ";
            TXTPR.Text = " ";
            txtresult.Text = " ";
            Txts1.Text = " ";
            Txts2.Text = " ";
            Txts3.Text = " ";
            Txts4.Text = " ";
            Txts5.Text = " ";
            Txts6.Text = " ";
            TXTSECTH.Text = " ";
            TXTTH.Text = " ";
            Txttotal.Text = " ";
            TextBox1.Text = " ";
            Txtback.Text = " ";
        }
        else
        {
            Response.Write("Error");
        }
        con.Close();

    }
    protected void ddlstream_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlsem.Items.Clear();
        ddlbr.Items.Clear();
        SqlConnection con;
        SqlCommand cmd, cmd1;
        SqlDataReader dr, dr1;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        String str, str1;
        String s = ddlstream.SelectedItem.Text;
        str = "select * from branch where course='" + s + "'";
        cmd = new SqlCommand(str, con);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddlbr.Items.Add(dr.GetString(1));
        }
        dr.Close();

        str1 = "select * from sem where course='" + s + "'";
        cmd1 = new SqlCommand(str1, con);
        dr1 = cmd1.ExecuteReader();
        while (dr1.Read())
        {
            ddlsem.Items.Add(dr1.GetString(1));
        }
        dr1.Close();
        con.Close();
    }
    protected void ddlsem_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection CON;
        SqlCommand cmd;
        SqlDataReader DR;
        CON = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        CON.Open();
        String str;
        String s = ddlstream.SelectedItem.Text;
        String b = ddlbr.SelectedItem.Text;
        String sem = ddlsem.SelectedItem.Text;
        //Dim mt As String = Me.DropDownList4.SelectedItem.Text
        str = "select * from SUBJECT where st='" + s + "' and br='" + b + "' and sem='" + sem + "'";
        cmd = new SqlCommand(str, CON);
        DR = cmd.ExecuteReader();
        if (DR.Read())
            // If mt = "Final Exam" Then
            if (sem == "I")
            {
                Label5.Visible = true;
                Label6.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                Label9.Visible = true;
                Label10.Visible = true;
                Label12.Visible = true;
                Label13.Visible = true;
                Label14.Visible = true;
                Label15.Visible = true;
                Label16.Visible = true;
                Txts1.Visible = true;
                Txts2.Visible = true;
                Txts3.Visible = true;
                Txts4.Visible = true;
                Txts5.Visible = true;
                Txts6.Visible = false;
                Txtp1.Visible = true;
                Txtp2.Visible = true;
                Txtp3.Visible = true;
                txtp4.Visible = true;
                txtp5.Visible = false;
                TXTTH.Visible = true;
                TXTSECTH.Visible = true;
                TXTPR.Visible = true;
                LBLPR.Visible = true;
                LBLSESS.Visible = true;
                LBLTH.Visible = true;
                Label5.Text = DR.GetString(3);

                Label6.Text = DR.GetString(4);
                Label7.Text = DR.GetString(5);
                Label8.Text = DR.GetString(6);
                Label9.Text = DR.GetString(7);
                Label10.Text = DR.GetString(8);
                Label12.Text = DR.GetString(9);
                Label13.Text = DR.GetString(10);
                Label14.Text = DR.GetString(11);
                Label15.Text = DR.GetString(12);
                Label16.Text = DR.GetString(13);
                Label19.Text = DR.GetString(3);

                Label20.Text = DR.GetString(4);
                Label21.Text = DR.GetString(5);
                Label22.Text = DR.GetString(6);
                Label23.Text = DR.GetString(7);
                Label26.Text = DR.GetString(8);
            }
            else
                if (sem == "II")
                {
                    Label5.Visible = true;
                    Label6.Visible = true;
                    Label7.Visible = true;
                    Label8.Visible = true;
                    Label9.Visible = true;
                    Label10.Visible = false;
                    Label12.Visible = true;
                    Label13.Visible = true;
                    Label14.Visible = true;
                    Label15.Visible = true;
                    Label16.Visible = false;
                    //TextBox2.Visible = true;
                    //TextBox3.Visible = true;
                    //TextBox4.Visible = true;
                    //TextBox5.Visible = true;
                    //TextBox6.Visible = true;
                    //TextBox7.Visible = false;
                    //TextBox8.Visible = true;
                    //TextBox9.Visible = true;
                    //TextBox10.Visible = true;
                    //TextBox11.Visible = true;
                    //TextBox12.Visible = false;
                    //TXTTH.Visible = true;
                    TXTSECTH.Visible = true;
                    TXTPR.Visible = true;
                    LBLPR.Visible = true;
                    LBLSESS.Visible = true;
                    LBLTH.Visible = true;
                    txtm1.Visible = true;
                    Txtm2.Visible = true;
                    Txtm3.Visible = true;
                    //Txtm4.Visible = true;
                    Txtm5.Visible = true;
                    txtm6.Visible = false;
                    Label19.Visible = true;
                    Label20.Visible = true;
                    Label21.Visible = true;
                    Label22.Visible = true;
                    Label23.Visible = true;
                    Label26.Visible = false;
                    Label5.Text = DR.GetString(3);

                    Label6.Text = DR.GetString(4);
                    Label7.Text = DR.GetString(5);
                    Label8.Text = DR.GetString(6);
                    Label9.Text = DR.GetString(7);
                    // Me.Label10.text = dr(8)
                    Label12.Text = DR.GetString(9);
                    Label13.Text = DR.GetString(10);
                    Label14.Text = DR.GetString(11);
                    Label15.Text = DR.GetString(12);
                    Label19.Text = DR.GetString(3);

                    Label20.Text = DR.GetString(4);
                    Label21.Text = DR.GetString(5);
                    Label22.Text = DR.GetString(6);
                    Label23.Text = DR.GetString(7);
                    //Me.Label26.Text = DR.GetString (8)
                    //Me.Label16.text = dr.GetString (13)
                }
                else

                    if (sem == "III")
                    {
                        Label5.Visible = true;
                        Label6.Visible = true;
                        Label7.Visible = true;
                        Label8.Visible = true;
                        Label9.Visible = true;
                        Label10.Visible = false;
                        Label12.Visible = true;
                        Label13.Visible = true;
                        Label14.Visible = true;
                        Label15.Visible = true;
                        Label16.Visible = false;
                        Txts1.Visible = true;
                        Txts2.Visible = true;
                        Txts3.Visible = true;
                        Txts4.Visible = true;
                        Txts5.Visible = true;
                        Txts6.Visible = false;
                        Txtp1.Visible = true;
                        Txtp2.Visible = true;
                        Txtp3.Visible = true;
                        txtp4.Visible = true;
                        txtp5.Visible = false;
                        TXTTH.Visible = true;
                        TXTSECTH.Visible = true;
                        TXTPR.Visible = true;
                        LBLPR.Visible = true;
                        LBLSESS.Visible = true;
                        LBLTH.Visible = true;

                        //TextBox13.Visible = true;
                        //TextBox14.Visible = true;
                        //TextBox15.Visible = true;
                        //TextBox16.Visible = true;
                        //TextBox17.Visible = true;
                        //TextBox19.Visible = false;
                        Label19.Visible = true;
                        Label20.Visible = true;
                        Label21.Visible = true;
                        Label22.Visible = true;
                        Label23.Visible = true;
                        Label26.Visible = false;
                        Label5.Text = DR.GetString(3);
                        Label6.Text = DR.GetString(4);
                        Label7.Text = DR.GetString(5);
                        Label8.Text = DR.GetString(6);
                        Label9.Text = DR.GetString(7);
                        // Me.Label10.text = dr(8)
                        Label12.Text = DR.GetString(9);
                        Label13.Text = DR.GetString(10);
                        Label14.Text = DR.GetString(11);
                        Label15.Text = DR.GetString(12);
                        Label19.Text = DR.GetString(3);

                        Label20.Text = DR.GetString(4);
                        Label21.Text = DR.GetString(5);
                        Label22.Text = DR.GetString(6);
                        Label23.Text = DR.GetString(7);
                        //Me.Label16.text = dr(13)
                    }
                    else
                    {
                        if (sem == "IV")
                            Label5.Visible = true;
                        Label6.Visible = true;
                        Label7.Visible = true;
                        Label8.Visible = true;
                        Label9.Visible = true;
                        Label10.Visible = false;
                        Label12.Visible = true;
                        Label13.Visible = true;
                        Label14.Visible = true;
                        Label15.Visible = true;
                        Label16.Visible = false;
                        Txts1.Visible = true;
                        Txts2.Visible = true;
                        Txts3.Visible = true;
                        Txts4.Visible = true;
                        Txts5.Visible = true;
                        Txts6.Visible = false;
                        Txtp1.Visible = true;
                        Txtp2.Visible = true;
                        Txtp3.Visible = true;
                        txtp4.Visible = true;
                        txtp5.Visible = false;
                        TXTTH.Visible = true;
                        TXTSECTH.Visible = true;
                        TXTPR.Visible = true;
                        LBLPR.Visible = true;
                        LBLSESS.Visible = true;
                        LBLTH.Enabled = true;
                        txtm1.Visible = true;
                        Txtm2.Visible = true;
                        Txtm3.Visible = true;
                        //Txtm4.Visible = true;
                        Txtm5.Visible = true;
                        txtm6.Visible = false;
                        Label19.Visible = true;
                        Label20.Visible = true;
                        Label21.Visible = true;
                        Label22.Visible = true;
                        Label23.Visible = true;
                        Label26.Visible = false;
                        Label5.Text = DR.GetString(3);
                        Label6.Text = DR.GetString(4);
                        Label7.Text = DR.GetString(5);
                        Label8.Text = DR.GetString(6);
                        Label9.Text = DR.GetString(7);
                        //Me.Label10.text = dr(8)
                        Label12.Text = DR.GetString(9);
                        Label13.Text = DR.GetString(10);
                        Label14.Text = DR.GetString(11);
                        Label15.Text = DR.GetString(12);
                        //Me.Label16.text = dr(13)
                        Label19.Text = DR.GetString(3);

                        Label20.Text = DR.GetString(4);
                        Label21.Text = DR.GetString(5);
                        Label22.Text = DR.GetString(6);
                        Label23.Text = DR.GetString(7);
                    }
        else
            if (sem == "V")
            {
                Label5.Visible = true;
                Label6.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                Label9.Visible = true;
                Label10.Visible = false;
                Label12.Visible = true;
                Label13.Visible = true;
                Label14.Visible = true;
                Label15.Visible = true;
                Label16.Visible = false;
                Txts1.Visible = true;
                Txts2.Visible = true;
                Txts3.Visible = true;
                Txts4.Visible = true;
                Txts5.Visible = true;
                Txts6.Visible = false;
                Txtp1.Visible = true;
                Txtp2.Visible = true;
                Txtp3.Visible = true;
                txtp4.Visible = true;
                txtp5.Visible = false;
                TXTTH.Visible = true;
                TXTSECTH.Visible = true;
                TXTPR.Visible = true;
                LBLPR.Visible = true;
                LBLSESS.Visible = true;
                LBLTH.Visible = true;
                //TextBox13.Visible = true;
                //TextBox14.Visible = true;
                //TextBox15.Visible = true;
                //TextBox16.Visible = true;
                //TextBox17.Visible = true;
                //TextBox19.Visible = false;
                Label19.Visible = true;
                Label20.Visible = true;
                Label21.Visible = true;
                Label22.Visible = true;
                Label23.Visible = true;
                Label26.Visible = false;
                Label5.Text = DR.GetString(3);

                Label6.Text = DR.GetString(4);
                Label7.Text = DR.GetString(5);
                Label8.Text = DR.GetString(6);
                Label9.Text = DR.GetString(7);
                // Me.Label10.text = dr(8)
                Label12.Text = DR.GetString(9);
                Label13.Text = DR.GetString(10);
                Label14.Text = DR.GetString(11);
                Label15.Text = DR.GetString(12);
                //Label16.text = dr(13)
                Label19.Text = DR.GetString(3);

                Label20.Text = DR.GetString(4);
                Label21.Text = DR.GetString(5);
                Label22.Text = DR.GetString(6);
                Label23.Text = DR.GetString(7);
            }
            else
                if (sem == "VI")
                {
                    Label5.Visible = true;
                    Label6.Visible = true;
                    Label7.Visible = true;
                    Label8.Visible = true;
                    Label9.Visible = true;
                    Label10.Visible = true;
                    Label12.Visible = true;
                    Label13.Visible = true;
                    Label14.Visible = true;
                    Label15.Visible = true;
                    Label16.Visible = false;
                    Txts1.Visible = true;
                    Txts2.Visible = true;
                    Txts3.Visible = true;
                    Txts4.Visible = true;
                    Txts5.Visible = true;
                    Txts6.Visible = false;
                    Txtp1.Visible = true;
                    Txtp2.Visible = true;
                    Txtp3.Visible = true;
                    txtp4.Visible = true;
                    txtp5.Visible = false;
                    TXTTH.Visible = true;
                    TXTSECTH.Visible = true;
                    TXTPR.Visible = true;
                    LBLPR.Visible = true;
                    LBLSESS.Visible = true;
                    LBLTH.Visible = true;
                    //TextBox13.Visible = true;
                    //TextBox14.Visible = true;
                    //TextBox15.Visible = true;
                    //TextBox16.Visible = true;
                    //TextBox17.Visible = true;
                    //TextBox19.Visible = false;
                    Label19.Visible = true;
                    Label20.Visible = true;
                    Label21.Visible = true;
                    Label22.Visible = true;
                    Label23.Visible = true;
                    Label26.Visible = false;

                    Label5.Text = DR.GetString(3);
                    Label6.Text = DR.GetString(4);
                    Label7.Text = DR.GetString(5);
                    Label8.Text = DR.GetString(6);
                    Label9.Text = DR.GetString(7);
                    // Me.Label10.text = dr(8)
                    Label12.Text = DR.GetString(9);
                    Label13.Text = DR.GetString(10);
                    Label14.Text = DR.GetString(11);
                    Label15.Text = DR.GetString(12);
                    //Me.Label16.text = dr(13)
                    Label19.Text = DR.GetString(3);
                    Label20.Text = DR.GetString(4);
                    Label21.Text = DR.GetString(5);
                    Label22.Text = DR.GetString(6);
                    Label23.Text = DR.GetString(7);
                }
                else
                    if (sem == "VII")
                    {
                        Label5.Visible = true;
                        Label6.Visible = true;
                        Label7.Visible = true;
                        Label8.Visible = true;
                        Label9.Visible = true;
                        Label10.Visible = false;
                        Label12.Visible = true;
                        Label13.Visible = true;
                        Label14.Visible = true;
                        Label15.Visible = true;
                        Label16.Visible = false;
                        Txts1.Visible = true;
                        Txts2.Visible = true;
                        Txts3.Visible = true;
                        Txts4.Visible = true;
                        Txts5.Visible = true;
                        Txts6.Visible = false;
                        Txtp1.Visible = true;
                        Txtp2.Visible = true;
                        Txtp3.Visible = true;
                        txtp4.Visible = true;
                        txtp5.Visible = false;
                        TXTTH.Visible = true;
                        TXTSECTH.Visible = true;
                        TXTPR.Visible = true;
                        LBLPR.Visible = true;
                        LBLSESS.Visible = true;
                        LBLTH.Visible = true;
                        //TextBox13.Visible = true;
                        //TextBox14.Visible = true;
                        //TextBox15.Visible = true;
                        //TextBox16.Visible = true;
                        //TextBox17.Visible = true;
                        //TextBox19.Visible = false;
                        Label19.Visible = true;
                        Label20.Visible = true;
                        Label21.Visible = true;
                        Label22.Visible = true;
                        Label23.Visible = true;
                        Label26.Visible = false;
                        Label5.Text = DR.GetString(3);
                        Label6.Text = DR.GetString(4);
                        Label7.Text = DR.GetString(5);
                        Label8.Text = DR.GetString(6);
                        Label9.Text = DR.GetString(7);
                        // Me.Label10.text = dr(8)
                        Label12.Text = DR.GetString(9);
                        Label13.Text = DR.GetString(10);
                        Label11.Text = DR.GetString(11);
                        Label15.Text = DR.GetString(12);
                        //Me.Label16.text = dr(13)
                        Label19.Text = DR.GetString(3);

                        Label20.Text = DR.GetString(4);
                        Label21.Text = DR.GetString(5);
                        Label22.Text = DR.GetString(6);
                        Label23.Text = DR.GetString(7);
                    }
                    else
                        Label5.Visible = true;
        Label6.Visible = true;
        Label7.Visible = true;
        Label8.Visible = true;
        Label9.Visible = false;
        Label10.Visible = false;
        Label12.Visible = true;
        Label13.Visible = true;
        Label14.Visible = true;
        Label15.Visible = false;
        Label16.Visible = false;
        Txts1.Visible = true;
        Txts2.Visible = true;
        Txts3.Visible = true;
        Txts4.Visible = true;
        Txts5.Visible = true;
        Txts6.Visible = false;
        Txtp1.Visible = true;
        Txtp2.Visible = true;
        Txtp3.Visible = true;
        txtp4.Visible = true;
        txtp5.Visible = false;
        TXTTH.Visible = true;
        TXTSECTH.Visible = true;
        TXTPR.Visible = true;
        LBLPR.Visible = true;
        LBLSESS.Visible = true;
        LBLTH.Visible = true;
        //TextBox13.Visible = true;
        //TextBox14.Visible = true;
        //TextBox15.Visible = true;
        //TextBox16.Visible = true;
        //TextBox17.Visible = false;
        //TextBox19.Visible = false;
        Label19.Visible = true;
        Label20.Visible = true;
        Label21.Visible = true;
        Label22.Visible = true;
        Label23.Visible = false;
        Label26.Visible = false;
        Label5.Text = DR.GetString(3);
        Label6.Text = DR.GetString(4);
        Label7.Text = DR.GetString(5);
        Label8.Text = DR.GetString(6);
        Label9.Text = DR.GetString(7);
        // Me.Label10.text = dr(8)
        Label12.Text = DR.GetString(9);
        Label13.Text = DR.GetString(10);
        Label14.Text = DR.GetString(11);
        Label15.Text = DR.GetString(12);
        //Me.Label16.text = dr(13)
        Label19.Text = DR.GetString(3);

        Label20.Text = DR.GetString(4);
        Label21.Text = DR.GetString(5);
        Label22.Text = DR.GetString(6);
        //Me.Label23.Text = DR(7)

    }
}
