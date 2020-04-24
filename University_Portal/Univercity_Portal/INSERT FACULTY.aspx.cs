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

public partial class INSERT_FACULTY : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con;
            SqlCommand com;
            con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
            con.Open();
            string str;
            str = "select * from uni";
             com = new SqlCommand(str, con);
            SqlDataReader dr;
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                ddluname.Items.Add(dr.GetString(1));
            }
            dr.Close();
            con.Close();

        }
    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        String a = TextBox16.Text;
        SqlConnection con;
        SqlCommand com;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string sr;
        sr = "select * from faculty_info where fid='" + a + "'";
        com = new SqlCommand(sr, con);
        SqlDataReader dr;
        dr = com.ExecuteReader();
        if (dr.Read())
        {
            TextBox1.Text = dr.GetString(0);
            TextBox2.Text = dr.GetString(1);
            TextBox3.Text = dr.GetString(2);
            TextBox7.Text = dr.GetString(3);
            TextBox8.Text = dr.GetString(4);
            TextBox9.Text = dr.GetString(5);
            TextBox10.Text = dr.GetString(6);
            TextBox11.Text = dr.GetString(7);
            TextBox6.Text = dr.GetString(8);
            TextBox4.Text = dr.GetString(9);
            TextBox5.Text = dr.GetString(10);
            TextBox12.Text = dr.GetString(11);
            TextBox13.Text = dr.GetString(12);
            TextBox14.Text = dr.GetString(13);
            TextBox15.Text = dr.GetString(14);
        }

        else
        {
            Response.Write("record not found");
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            TextBox6.Text = " ";
            TextBox7.Text = " ";
            TextBox8.Text = " ";
            TextBox9.Text = " ";
            TextBox10.Text = " ";
            TextBox11.Text = " ";
            TextBox12.Text = " ";
            TextBox13.Text = " ";
            TextBox14.Text = " ";
            TextBox15.Text = " ";
        }
        dr.Close();
        con.Close();


    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlCommand com;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        String f_id = TextBox1.Text;
        String f_name = TextBox2.Text;
        String father_name = TextBox3.Text;
        String coll_name = ddlcname.SelectedItem.Text;
        String qualification = TextBox8.Text;
        String univ_name = ddluname.SelectedItem.Text;
        String e_mail = TextBox10.Text;
        String phone = TextBox11.Text;
        String dob = TextBox6.Text;
        String address = TextBox4.Text;
        String city = TextBox5.Text;
        String subject = TextBox12.Text;
        String persent = TextBox13.Text;
        String year_of_pass = TextBox14.Text;
        String sec_28 = TextBox15.Text;
        string sr;

        sr = "update faculty_info set fid='" + f_id + "',facul_name='" + f_name + "',father_name='" + father_name + "',coll_name='" + coll_name + "',qualification='" + qualification + "',univ_name='" + univ_name + "',e_mail='" + e_mail + "',phone='" + phone + "',dob='" + dob + "',address='" + address + "',city='" + city + "',subject='" + subject + "',  persent='" + persent + "', year_of_pass='" + year_of_pass + "', sec_28 ='" + sec_28 + "'where fid='" + f_id + "'";
        com = new SqlCommand(sr, con);

        int i;

        i = com.ExecuteNonQuery();
        if (i != 0)
        {
            Response.Write("record updated ");
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            TextBox6.Text = " ";
            TextBox7.Text = " ";
            TextBox8.Text = " ";
            TextBox9.Text = " ";
            TextBox10.Text = " ";
            TextBox11.Text = " ";
            TextBox12.Text = " ";
            TextBox13.Text = " ";
            TextBox14.Text = " ";
            TextBox15.Text = " ";
        }
        else
        {
            Response.Write("Supplier not found");
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            TextBox6.Text = " ";
            TextBox7.Text = " ";
            TextBox8.Text = " ";
            TextBox9.Text = " ";
            TextBox10.Text = " ";
            TextBox11.Text = " ";
            TextBox12.Text = " ";
            TextBox13.Text = " ";
            TextBox14.Text = " ";
            TextBox15.Text = " ";
        }
        con.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        String a = TextBox16.Text;
        string str;

        str = "delete from faculty_info where fid='" + a + "'";
        cmd = new SqlCommand(str, con);
        int i;


        i = cmd.ExecuteNonQuery();
        if (i != 0)
        {

            Response.Write("record delete successfully");
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            TextBox6.Text = " ";
            TextBox7.Text = " ";
            TextBox8.Text = " ";
            TextBox9.Text = " ";
            TextBox10.Text = " ";
            TextBox11.Text = " ";
            TextBox12.Text = " ";
            TextBox13.Text = " ";
            TextBox14.Text = " ";
            TextBox15.Text = " ";

        }
        else
        {
            Response.Write("Supplier Id not found");
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            TextBox6.Text = " ";
            TextBox7.Text = " ";
            TextBox8.Text = " ";
            TextBox9.Text = " ";
            TextBox10.Text = " ";
            TextBox11.Text = " ";
            TextBox12.Text = " ";
            TextBox13.Text = " ";
            TextBox14.Text = " ";
            TextBox15.Text = " ";
        }
        con.Close();


    }
    protected void ddluname_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlCommand com;
        ddlcname.Items.Clear();
        string uni = ddluname.SelectedItem.Text;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string str;
        str = "select * from coll where uni='" + uni + "'";
        com = new SqlCommand(str, con);
        SqlDataReader dr;
        dr = com.ExecuteReader();
        while (dr.Read())
        {
            ddlcname.Items.Add(dr.GetString(1));
        }
        dr.Close();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        String f_id = TextBox1.Text;
        String f_name = TextBox2.Text;
        String father_name = TextBox3.Text;
        String coll_name = ddlcname.SelectedItem.Text;
        String qualification = TextBox8.Text;
        String univ_name = ddluname.SelectedItem.Text;
        String e_mail = TextBox10.Text;
        String phone = TextBox11.Text;
        String dob = TextBox6.Text;
        String address = TextBox4.Text;
        String city = TextBox5.Text;
        String subject = TextBox12.Text;
        String persent = TextBox13.Text;
        String year_of_pass = TextBox14.Text;
        String sec_28 = TextBox15.Text;
        string str,str1;
        str1 = "select * from faculty_info where fid='" + f_id + "'";
        SqlCommand cmd1;
        cmd1 = new SqlCommand(str1, con);
        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            Response.Write("faculty id already exist");
        }
        else
        {
            dr1.Close();
            str = "insert into faculty_info values('" + f_id + "','" + f_name + "','" + father_name + "','" + coll_name + "','" + qualification + "','" + univ_name + "','" + e_mail + "','" + phone + "','" + dob + "','" + address + "','" + city + "','" + subject + "','" + persent + "','" + year_of_pass + "','" + sec_28 + "')";
            SqlCommand cmd;
            cmd = new SqlCommand(str, con);
            int i;
            i = cmd.ExecuteNonQuery();
            if (i != 0)
            {

                Response.Write("record inserted successfully");
                TextBox1.Text = " ";
                TextBox2.Text = " ";
                TextBox3.Text = " ";
                TextBox4.Text = " ";
                TextBox5.Text = " ";
                TextBox6.Text = " ";
                TextBox7.Text = " ";
                TextBox8.Text = " ";
                TextBox9.Text = " ";
                TextBox10.Text = " ";
                TextBox11.Text = " ";
                TextBox12.Text = " ";
                TextBox13.Text = " ";
                TextBox14.Text = " ";
                TextBox15.Text = " ";

            }
            else
            {
                Response.Write("Supplier Id not inserted");
                TextBox1.Text = " ";
                TextBox2.Text = " ";
                TextBox3.Text = " ";
                TextBox4.Text = " ";
                TextBox5.Text = " ";
                TextBox6.Text = " ";
                TextBox7.Text = " ";
                TextBox8.Text = " ";
                TextBox9.Text = " ";
                TextBox10.Text = " ";
                TextBox11.Text = " ";
                TextBox12.Text = " ";
                TextBox13.Text = " ";
                TextBox14.Text = " ";
                TextBox15.Text = " ";
            }
        }
        con.Close();
    }
}
