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

public partial class result_search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack )

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
            while( dr.Read())
            {
             DropDownList1.Items.Add(dr.GetString(0));
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
         String st= DropDownList1.SelectedItem.Text;
         String br= DropDownList2.SelectedItem.Text;
         String sem= DropDownList3.SelectedItem.Text;
         String str;
        //if (sem == "I") 
        str = "select * from results where enroll='" + enroll + "' and st='" + st + "' and  br='" + br + "' and sem='" + sem + "'";
        SqlCommand cmd;
        cmd = new SqlCommand(str, con);
         SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox2.Text = dr.GetString(4);
            TextBox3.Text = dr.GetString(5);
            TextBox4.Text = dr.GetString(6);
            TextBox5.Text = dr.GetString(7);
            TextBox6.Text = dr.GetString(8);
            TextBox7.Text = dr.GetString(9);
            TextBox8.Text = dr.GetString(10);
            TextBox9.Text = dr.GetString(11);
            TextBox10.Text = dr.GetString(12);
            TextBox11.Text = dr.GetString(13);
            TextBox12.Text = dr.GetString(14);
            TextBox13.Text = dr.GetString(15);
            TextBox14.Text = dr.GetString(16);
            TextBox15.Text = dr.GetString(17);
            TextBox16.Text = dr.GetString(18);
            TextBox17.Text = dr.GetString(19);
            TextBox19.Text = dr.GetString(20);
            TXTTH.Text = dr.GetString(21);
            TXTPR.Text = dr.GetString(22);
            Txtmtotal.Text = dr.GetString(23);
            TXTSECTH.Text = dr.GetString(24);
            Txttotal.Text = dr.GetString(25);
            txtresult.Text = dr.GetString(26);
            Txtback.Text = dr.GetString(27);
        }
        else
        {
            Response.Write("enroll no. doesn't exist");
             TextBox2.Text = "";
             TextBox3.Text = "";
             TextBox4.Text = "";
            TextBox5.Text = "";
             TextBox6.Text = "";
             TextBox7.Text = "";
             TextBox8.Text = "";
             TextBox9.Text = "";
             TextBox10.Text = "";
            TextBox11.Text = "";
             TextBox12.Text = "";
            TextBox13.Text = "";
             TextBox14.Text = "";
             TextBox15.Text = "";
             TextBox16.Text = "";
             TextBox17.Text = "";
             TextBox19.Text = "";
           TXTTH.Text = "";
            TXTPR.Text = "";
            Txtmtotal.Text = "";
            TXTSECTH.Text = "";
            Txttotal.Text = "";
            txtresult.Text = "";
            Txtback.Text = "";

        }



        con.Close();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
            SqlConnection CON;
         SqlCommand cmd;
        SqlDataReader DR;
        CON = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        CON.Open();
         String str;
        String s= DropDownList1.SelectedItem.Text;
      String b= DropDownList2.SelectedItem.Text;
        String sem= DropDownList3.SelectedItem.Text;
        //Dim mt As String = Me.DropDownList4.SelectedItem.Text
        str = "select * from SUBJECT where st='" + s + "' and br='" + b + "' and sem='" + sem + "'";
        cmd = new SqlCommand(str, CON);
        DR = cmd.ExecuteReader();
        if (DR.Read())
            // If mt = "Final Exam" Then
            if (sem == "I" )
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
                TextBox2.Visible = true;
                TextBox3.Visible = true;
                TextBox4.Visible = true;
                TextBox5.Visible = true;
                TextBox6.Visible = true;
                TextBox7.Visible = true;
                TextBox8.Visible = true;
                TextBox9.Visible = true;
                TextBox10.Visible = true;
                TextBox11.Visible = true;
                TextBox12.Visible = true;
                TextBox13.Visible = true;
                TextBox14.Visible = true;
                TextBox15.Visible = true;
                TextBox16.Visible = true;
                TextBox17.Visible = true;
                TextBox19.Visible = true;
                Label19.Visible = true;
                Label20.Visible = true;
                Label21.Visible = true;
                Label22.Visible = true;
               Label23.Visible = true;
               Label26.Visible = true;
                TXTTH.Visible = true;
                TXTSECTH.Visible = true;
                TXTPR.Visible = true;
                LBLPR.Visible = true;
                LBLSESS.Visible = true;
                LBLTH.Visible = true;
                Label5.Text = DR.GetString (3);

                Label6.Text = DR.GetString (4);
                Label7.Text = DR.GetString (5);
                Label8.Text = DR.GetString (6);
                Label9.Text = DR.GetString (7);
                Label10.Text = DR.GetString (8);
                Label12.Text = DR.GetString (9);
                Label13.Text = DR.GetString (10);
                Label14.Text = DR.GetString (11);
                Label15.Text = DR.GetString (12);
                Label16.Text = DR.GetString (13);
                Label19.Text = DR.GetString (3);

                Label20.Text = DR.GetString (4);
                Label21.Text = DR.GetString (5);
                Label22.Text = DR.GetString (6);
                Label23.Text = DR.GetString (7);
                Label26.Text = DR.GetString (8);
            }
                else
                if( sem == "II")
                {
                    Label5.Visible = true;
                    Label6.Visible = true;
                    Label7.Visible = true;
                    Label8.Visible = true;
                    Label9.Visible = true;
                    Label10.Visible =  false;
                    Label12.Visible = true;
                    Label13.Visible = true;
                    Label14.Visible = true;
                    Label15.Visible = true;
                    Label16.Visible =  false;
                    TextBox2.Visible = true;
                    TextBox3.Visible = true;
                    TextBox4.Visible = true;
                    TextBox5.Visible = true;
                    TextBox6.Visible = true;
                    TextBox7.Visible =  false;
                    TextBox8.Visible = true;
                    TextBox9.Visible = true;
                    TextBox10.Visible = true;
                    TextBox11.Visible = true;
                    TextBox12.Visible =  false;
                    TXTTH.Visible = true;
                    TXTSECTH.Visible = true;
                    TXTPR.Visible = true;
                    LBLPR.Visible = true;
                    LBLSESS.Visible = true;
                    LBLTH.Visible = true;
                    TextBox13.Visible = true;
                    TextBox14.Visible = true;
                    TextBox15.Visible = true;
                    TextBox16.Visible = true;
                    TextBox17.Visible = true;
                    TextBox19.Visible =  false;
                    Label19.Visible = true;
                    Label20.Visible = true;
                    Label21.Visible = true;
                    Label22.Visible = true;
                    Label23.Visible = true;
                    Label26.Visible =  false;
                    Label5.Text = DR.GetString (3);
                
                    Label6.Text = DR.GetString (4);
                    Label7.Text = DR.GetString (5);
                    Label8.Text = DR.GetString (6);
                    Label9.Text = DR.GetString (7);
                    // Me.Label10.text = dr(8)
                    Label12.Text = DR.GetString (9);
                    Label13.Text = DR.GetString (10);
                    Label14.Text = DR.GetString (11);
                    Label15.Text = DR.GetString (12);
                    Label19.Text = DR.GetString (3);

                    Label20.Text = DR.GetString (4);
                    Label21.Text = DR.GetString (5);
                    Label22.Text = DR.GetString (6);
                    Label23.Text = DR.GetString (7);
                    //Me.Label26.Text = DR.GetString (8)
                    //Me.Label16.text = dr.GetString (13)
                }
                else

                    if( sem == "III")
                    {
                        Label5.Visible = true;
                        Label6.Visible = true;
                        Label7.Visible = true;
                        Label8.Visible = true;
                        Label9.Visible = true;
                        Label10.Visible =  false;
                        Label12.Visible = true;
                        Label13.Visible = true;
                        Label14.Visible = true;
                        Label15.Visible = true;
                        Label16.Visible =  false;
                        TextBox2.Visible = true;
                        TextBox3.Visible = true;
                        TextBox4.Visible = true;
                        TextBox5.Visible = true;
                        TextBox6.Visible = true;
                        TextBox7.Visible = false; 
                        TextBox8.Visible = true;
                        TextBox9.Visible = true;
                        TextBox10.Visible = true;
                        TextBox11.Visible = true;
                        TextBox12.Visible =  false;
                        TXTTH.Visible = true;
                        TXTSECTH.Visible = true;
                        TXTPR.Visible = true;
                        LBLPR.Visible = true;
                        LBLSESS.Visible = true;
                        LBLTH.Visible = true;

                        TextBox13.Visible = true;
                        TextBox14.Visible = true;
                        TextBox15.Visible = true;
                        TextBox16.Visible = true;
                        TextBox17.Visible = true;
                        TextBox19.Visible =  false;
                        Label19.Visible = true;
                        Label20.Visible = true;
                        Label21.Visible = true;
                        Label22.Visible = true;
                        Label23.Visible = true;
                        Label26.Visible =  false;
                        Label5.Text = DR.GetString (3);
                        Label6.Text = DR.GetString (4);
                        Label7.Text = DR.GetString (5);
                        Label8.Text = DR.GetString (6);
                        Label9.Text = DR.GetString (7);
                        // Me.Label10.text = dr(8)
                        Label12.Text = DR.GetString (9);
                        Label13.Text = DR.GetString (10);
                        Label14.Text = DR.GetString (11);
                        Label15.Text = DR.GetString (12);
                        Label19.Text = DR.GetString (3);
                
                        Label20.Text = DR.GetString (4);
                        Label21.Text = DR.GetString (5);
                        Label22.Text = DR.GetString (6);
                        Label23.Text = DR.GetString (7);
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
                            Label10.Visible =  false;
                            Label12.Visible = true;
                            Label13.Visible = true;
                            Label14.Visible = true;
                            Label15.Visible = true;
                            Label16.Visible =  false;
                            TextBox2.Visible = true;
                            TextBox3.Visible = true;
                            TextBox4.Visible = true;
                            TextBox5.Visible = true;
                            TextBox6.Visible = true;
                            TextBox7.Visible =  false;
                            TextBox8.Visible = true;
                            TextBox9.Visible = true;
                            TextBox10.Visible = true;
                            TextBox11.Visible = true;
                            TextBox12.Visible =  false;
                            TXTTH.Visible = true;
                            TXTSECTH.Visible = true;
                            TXTPR.Visible = true;
                            LBLPR.Visible = true;
                            LBLSESS.Visible = true;
                            LBLTH.Enabled = true;
                        TextBox13.Visible = true;
                        TextBox14.Visible = true;
                        TextBox15.Visible = true;
                        TextBox16.Visible = true;
                            TextBox17.Visible = true;
                            TextBox19.Visible =  false;
                            Label19.Visible = true;
                            Label20.Visible = true;
                            Label21.Visible = true;
                            Label22.Visible = true;
                            Label23.Visible = true;
                            Label26.Visible =  false;
                            Label5.Text = DR.GetString (3);
                        Label6.Text = DR.GetString (4);
                        Label7.Text = DR.GetString (5);
                        Label8.Text = DR.GetString (6);
                        Label9.Text = DR.GetString (7);
                        //Me.Label10.text = dr(8)
                          Label12.Text = DR.GetString (9);
                          Label13.Text = DR.GetString (10);
                          Label14.Text = DR.GetString (11);
                          Label15.Text = DR.GetString (12);
                           //Me.Label16.text = dr(13)
                          Label19.Text = DR.GetString (3);

                          Label20.Text = DR.GetString (4);
                            Label21.Text = DR.GetString (5);
                            Label22.Text = DR.GetString (6);
                            Label23.Text = DR.GetString (7);
                    }
                        else
                            if (sem == "V") 
                            {
                                Label5.Visible = true;
                                Label6.Visible = true;
                                Label7.Visible = true;
                                Label8.Visible = true;
                                Label9.Visible = true;
                                Label10.Visible =  false;
                                Label12.Visible = true;
                                Label13.Visible = true;
                                Label14.Visible = true;
                                Label15.Visible = true;
                                Label16.Visible =  false;
                                TextBox2.Visible = true;
                                TextBox3.Visible = true;
                                TextBox4.Visible = true;
                                TextBox5.Visible = true;
                                TextBox6.Visible = true;
                                TextBox7.Visible =  false;
                                TextBox8.Visible = true;
                                TextBox9.Visible = true;
                                TextBox10.Visible = true;
                                TextBox11.Visible = true;
                                TextBox12.Visible =  false;
                                TXTTH.Visible = true;
                                TXTSECTH.Visible = true;
                                TXTPR.Visible = true;
                                LBLPR.Visible = true;
                                LBLSESS.Visible = true;
                                LBLTH.Visible = true; 
                                TextBox13.Visible = true;
                                TextBox14.Visible = true;
                                TextBox15.Visible = true;
                                TextBox16.Visible = true;
                                TextBox17.Visible = true;
                                TextBox19.Visible =  false;
                                Label19.Visible = true;
                                Label20.Visible = true;
                                Label21.Visible = true;
                                Label22.Visible = true;
                                Label23.Visible = true;
                                Label26.Visible =  false;
                                Label5.Text = DR.GetString (3);
                
                                Label6.Text = DR.GetString (4);
                                Label7.Text = DR.GetString (5);
                                Label8.Text = DR.GetString (6);
                                Label9.Text = DR.GetString (7);
                                // Me.Label10.text = dr(8)
                                Label12.Text = DR.GetString (9);
                                Label13.Text = DR.GetString (10);
                                Label14.Text = DR.GetString (11);
                                Label15.Text = DR.GetString (12);
                                //Label16.text = dr(13)
                                Label19.Text = DR.GetString (3);

                                Label20.Text = DR.GetString (4);
                                Label21.Text = DR.GetString (5);
                                Label22.Text = DR.GetString (6);
                                Label23.Text = DR.GetString (7);
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
                                   Label16.Visible =  false;
                                   TextBox2.Visible = true;
                                   TextBox3.Visible = true;
                                   TextBox4.Visible = true;
                                   TextBox5.Visible = true;
                                   TextBox6.Visible = true;
                                   TextBox7.Visible =  false;
                                   TextBox8.Visible = true;
                                   TextBox9.Visible = true;
                                   TextBox10.Visible = true;
                                   TextBox11.Visible = true;
                                   TextBox12.Visible =  false;
                                   TXTTH.Visible = true;
                                   TXTSECTH.Visible = true;
                                   TXTPR.Visible = true;
                                   LBLPR.Visible = true;
                                   LBLSESS.Visible = true;
                                   LBLTH.Visible = true;
                                   TextBox13.Visible = true;
                                   TextBox14.Visible = true;
                                   TextBox15.Visible = true;
                                   TextBox16.Visible = true;
                                   TextBox17.Visible = true;
                                   TextBox19.Visible =  false;
                                   Label19.Visible = true;
                                   Label20.Visible = true;
                                   Label21.Visible = true;
                                   Label22.Visible = true;
                                   Label23.Visible = true;
                                   Label26.Visible =  false;

                                   Label5.Text = DR.GetString (3);
                                    Label6.Text = DR.GetString (4);
                                    Label7.Text = DR.GetString (5);
                                    Label8.Text = DR.GetString (6);
                                    Label9.Text = DR.GetString (7);
                                    // Me.Label10.text = dr(8)
                                    Label12.Text = DR.GetString (9);
                                    Label13.Text = DR.GetString (10);
                                    Label14.Text = DR.GetString (11);
                                    Label15.Text = DR.GetString (12);
                                    //Me.Label16.text = dr(13)
                                    Label19.Text = DR.GetString (3);
                                    Label20.Text = DR.GetString (4);
                                    Label21.Text = DR.GetString (5);
                                    Label22.Text = DR.GetString (6);
                                    Label23.Text = DR.GetString (7);
                                }
                                else
                                if (sem == "VII")
                                {
                                        Label5.Visible = true;
                                        Label6.Visible = true;
                                        Label7.Visible = true;
                                        Label8.Visible = true;
                                        Label9.Visible = true;
                                        Label10.Visible =  false;
                                        Label12.Visible = true;
                                        Label13.Visible = true;
                                        Label14.Visible = true;
                                        Label15.Visible = true;
                                        Label16.Visible =  false;
                                        TextBox2.Visible = true;
                                        TextBox3.Visible = true;
                                        TextBox4.Visible = true;
                                        TextBox5.Visible = true;
                                        TextBox6.Visible = true;
                                        TextBox7.Visible =  false;
                                        TextBox8.Visible = true;
                                        TextBox9.Visible = true;
                                        TextBox10.Visible = true;
                                        TextBox11.Visible = true;
                                        TextBox12.Visible =  false;
                                        TXTTH.Visible = true;
                                        TXTSECTH.Visible = true;
                                        TXTPR.Visible = true;
                                        LBLPR.Visible = true;
                                        LBLSESS.Visible = true;
                                        LBLTH.Visible = true;
                                       TextBox13.Visible = true;
                                    TextBox14.Visible = true;
                                    TextBox15.Visible = true;
                                        TextBox16.Visible = true;
                                        TextBox17.Visible = true;
                                        TextBox19.Visible =  false;
                                        Label19.Visible = true;
                                        Label20.Visible = true;
                                        Label21.Visible = true;
                                        Label22.Visible = true;
                                        Label23.Visible = true;
                                        Label26.Visible =  false;
                                        Label5.Text = DR.GetString (3);
                                    Label6.Text = DR.GetString (4);
                                        Label7.Text = DR.GetString (5);
                                        Label8.Text = DR.GetString (6);
                                        Label9.Text = DR.GetString (7);
                                        // Me.Label10.text = dr(8)
                                        Label12.Text = DR.GetString (9);
                                        Label13.Text = DR.GetString (10);
                                        Label11.Text = DR.GetString (11);
                                        Label15.Text = DR.GetString (12);
                                        //Me.Label16.text = dr(13)
                                        Label19.Text = DR.GetString (3);

                                        Label20.Text = DR.GetString (4);
                                        Label21.Text = DR.GetString (5);
                                        Label22.Text = DR.GetString (6);
                                        Label23.Text = DR.GetString (7);
                                }
                                    else
                                        Label5.Visible = true;
                                        Label6.Visible = true;
                                        Label7.Visible = true;
                                        Label8.Visible = true;
                                        Label9.Visible =  false;
                                        Label10.Visible =  false;
                                        Label12.Visible = true;
                                        Label13.Visible = true;
                                        Label14.Visible = true;
                                        Label15.Visible =  false;
                                        Label16.Visible =  false;
                                        TextBox2.Visible = true;
                                        TextBox3.Visible = true;
                                        TextBox4.Visible = true;
                                        TextBox5.Visible = true;
                                        TextBox6.Visible =  false;
                                        TextBox7.Visible =  false;
                                        TextBox8.Visible = true;
                                        TextBox9.Visible = true;
                                        TextBox10.Visible = true;
                                        TextBox11.Visible =  false;
                                        TextBox12.Visible =  false;
                                        TXTTH.Visible = true;
                                        TXTSECTH.Visible = true;
                                        TXTPR.Visible = true;
                                        LBLPR.Visible = true;
                                        LBLSESS.Visible = true;
                                        LBLTH.Visible = true;
                                        TextBox13.Visible = true;
                                        TextBox14.Visible = true;
                                        TextBox15.Visible = true;
                                        TextBox16.Visible = true;
                                        TextBox17.Visible =  false;
                                        TextBox19.Visible =  false;
                                        Label19.Visible = true;
                                        Label20.Visible = true;
                                        Label21.Visible = true;
                                        Label22.Visible = true;
                                        Label23.Visible =  false;
                                        Label26.Visible = false;
                                        Label5.Text = DR.GetString(3);
                                       Label6.Text = DR.GetString (4);
                                       Label7.Text = DR.GetString (5);
                                       Label8.Text = DR.GetString (6);
                                        Label9.Text = DR.GetString (7);
                                        // Me.Label10.text = dr(8)
                                        Label12.Text = DR.GetString (9);
                                        Label13.Text = DR.GetString (10);
                                        Label14.Text = DR.GetString (11);
                                        Label15.Text = DR.GetString (12);
                                        //Me.Label16.text = dr(13)
                                        Label19.Text = DR.GetString (3);

                                        Label20.Text = DR.GetString (4);
                                        Label21.Text = DR.GetString (5);
                                        Label22.Text = DR.GetString (6);
                                       //Me.Label23.Text = DR(7)
    }

                      
                    
                
          

      



             
    protected void  DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
{
        DropDownList2.Items.Clear();
        DropDownList3.Items.Clear();
         SqlConnection con;
         SqlCommand cmd,cmd1;
          SqlDataReader dr,dr1;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        String str,str1;
       String s= DropDownList1.SelectedItem.Text;
       str = "select * from branch where course='" + s + "'";
        cmd = new SqlCommand(str, con);
        dr = cmd.ExecuteReader();
        while(dr.Read())
        {
          DropDownList2.Items.Add(dr.GetString (1));
        }
        dr.Close();

        str1 = "select * from sem where course='" + s + "'";
        cmd1 = new SqlCommand(str1, con);
        dr1 = cmd1.ExecuteReader();
       while(dr1.Read())
        {
            DropDownList3.Items.Add(dr1.GetString (1));
        }
        dr1.Close();
        con.Close();
}
protected void  DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
{

}
}

