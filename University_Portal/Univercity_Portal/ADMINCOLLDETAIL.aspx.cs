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


public partial class ADMINCOLLDETAIL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
            con.Open();
            string str;
            str = "select * from sub_coll";
            SqlCommand cmd;
            cmd = new SqlCommand(str, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ddlcoll.Items.Add(dr.GetString(1));
            }
            dr.Close();
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string s = ddlcoll.SelectedItem.Text;
        string dn = TextBox2.Text;
        string ca = TextBox3.Text;
        string cmail = TextBox4.Text;
        string cfax = TextBox5.Text;
        string nofac = TextBox6.Text;
        string nostd = TextBox7.Text;
        string tcom = TextBox8.Text;
        string tbook = TextBox9.Text;

        string str1 = "select * from coll_detail where college='" + s + "'";
        SqlCommand cmd1 = new SqlCommand(str1, con);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            lbldis.Text = "college name already exist";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
        }
        else
        {
            dr.Close();
            string str = "insert into coll_detail values('" + s + "','" + dn + "','" + ca + "','" + cmail + "','" + cfax + "','" + nofac + "','" + nostd + "','" + tcom + "','" + tbook + "')";

            SqlCommand cmd = new SqlCommand(str, con);
            int i = cmd.ExecuteNonQuery();
            if (i != 0)
            {
                lbldis.Text = "college inserted successfully";
               
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
            
            }
            else
            {
                lbldis.Text = "error";
            }
        }
        con.Close();

    }
}
