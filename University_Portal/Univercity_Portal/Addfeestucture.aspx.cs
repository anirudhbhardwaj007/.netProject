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

public partial class Addfeestucture : System.Web.UI.Page
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
                ddluni.Items.Add(dr.GetString(1));
            }
            dr.Close();
            con.Close();

        }
    }
    protected void BTNADD_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string uni = ddluni.SelectedItem.Text;
        string cg = ddlcg.SelectedItem.Text;
        string c = ddlc.SelectedItem.Text;
        string fy = txtyear.Text;
        string bb = TextBox12.Text;
        string tp = TextBox11.Text;
        string reg = TextBox10.Text;
        string bus = TextBox9.Text;
        string medfee = TextBox8.Text;
        string cafee = TextBox7.Text;
        string idfe = TextBox6.Text;
        string ufee = TextBox5.Text;
        string hofee = TextBox4.Text; ;
        string mfee = TextBox3.Text;
        string ccm = TextBox2.Text;
        string hcm = TextBox1.Text;
        string str, str1;
        SqlCommand cmd, cmd1;
        str1 = "select * from fee_structure where univercity='" + uni + "' and college_group='" + cg + "' and college='" + c + "' and For_year='" + fy + "'";
        cmd1 = new SqlCommand(str1, con);
        SqlDataReader k;
        k = cmd1.ExecuteReader();
        if (k.Read())
        {
            lbldis.Text = "try for another year";
            TextBox1.Text = "";
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
        }
        else
        {
            k.Close();
            str = "insert into fee_structure values('" + uni + "','" + cg + "','" + c + "','" + fy + "','" + bb + "','" + tp + "','" + reg + "','" + bus + "','" + medfee + "','" + cafee + "','" + idfe + "','" + ufee + "','" + hofee + "','" + mfee + "','" + ccm + "','" + hcm + "')";
            cmd = new SqlCommand(str, con);
            int i;
            i = cmd.ExecuteNonQuery();
            if (i != 0)
            {
                lbldis.Text = ("fee insert successfully");
                txtyear.Text = "";
                TextBox1.Text = "";
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
            }
            else
            {
                lbldis.Text = ("error on add fee");
            }
        }
        con.Close();


    }
    protected void ddluni_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlCommand com;
        ddlcg.Items.Clear();
        string uni = ddluni.SelectedItem.Text;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string str;
        str = "select * from coll where uni='" + uni + "'";
        com = new SqlCommand(str, con);
        SqlDataReader dr;
        dr = com.ExecuteReader();
        while (dr.Read())
        {
            ddlcg.Items.Add(dr.GetString(1));
        }
        dr.Close();
        con.Close();
    }
    protected void ddlcg_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlCommand com;
        ddlc.Items.Clear();
        string cg = ddlcg.SelectedItem.Text;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string str;
        str = "select * from sub_coll where coll='" + cg + "'";
        com = new SqlCommand(str, con);
        SqlDataReader dr;
        dr = com.ExecuteReader();
        while (dr.Read())
        {
            ddlc.Items.Add(dr.GetString(1));
        }
        dr.Close();
        con.Close();
    }
}
