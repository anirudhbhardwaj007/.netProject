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

public partial class backsubst : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string sname = txtsname.Text;
        string srno = txtsrno.Text;
        int nob =int.Parse(txtnoback.Text);
        string bcode = txtbcode.Text;
        string str,str1;
        str1 = "select * from back where srno='" + srno + "'";
        SqlCommand cmd,cmd1;
        cmd1 = new SqlCommand(str1, con);
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            lbldis.Text = "student already exist";
            txtsname.Text = "";
            txtsrno.Text = "";
            txtnoback.Text = "";
            txtbcode.Text = "";
        }
        else
        {
            dr.Close();
            str = "insert into back values('" + sname + "','" + srno + "'," + nob + ",'" + bcode + "')";

            cmd = new SqlCommand(str, con);
            int i;
            i = cmd.ExecuteNonQuery();
            if (i!= 0)
            {
                lbldis.Text = "insert success";
                txtsname.Text = "";
                txtsrno.Text = "";
                txtnoback.Text = "";
                txtbcode.Text = "";
            }
            else
            {
                lbldis.Text = "error";
                txtsname.Text = "";
                txtsrno.Text = "";
                txtnoback.Text = "";
                txtbcode.Text = "";
            }
        }
        con.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string sname = txtsname.Text;
        string srno = txtsrno.Text;
        int nob =int.Parse(txtnoback.Text);
        string bcode = txtbcode.Text;
        string str;
        str = "update back set sname='" + sname + "',nback=" + nob + ",backcode='" + bcode + "' where srno='" + srno + "'";
        SqlCommand cmd;
        cmd = new SqlCommand(str, con);
        int i;
        i = cmd.ExecuteNonQuery();
        if (i != 0)
        {
            lbldis.Text = "update success";
            txtsname.Text = "";
            txtsrno.Text = "";
            txtnoback.Text = "";
            txtbcode.Text = "";
        }
        else
        {
            lbldis.Text = "error";
            txtsname.Text = "";
            txtsrno.Text = "";
            txtnoback.Text = "";
            txtbcode.Text = "";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string srno = txtsrno.Text;
        string str;
        str = "delete back where srno='" + srno + "'";
        SqlCommand cmd;
        cmd = new SqlCommand(str, con);
        int i;
        i = cmd.ExecuteNonQuery();
        if (i != 0)
        {
            lbldis.Text = "update success";
            txtsname.Text = "";
            txtsrno.Text = "";
            txtnoback.Text = "";
            txtbcode.Text = "";
        }
        else
        {
            lbldis.Text = "error";
            txtsname.Text = "";
            txtsrno.Text = "";
            txtnoback.Text = "";
            txtbcode.Text = "";
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string srno = txtsrno.Text;
        string str;
        str = "select * from back where srno='" + srno + "'";
        SqlCommand cmd;
        cmd = new SqlCommand(str, con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lbldis.Text = "student found success";
            txtsname.Text = dr.GetString(0);
            txtnoback.Text = dr.GetInt32(2).ToString();
            txtbcode.Text = dr.GetString(3);
        }
        else
        {
            lbldis.Text = "error";
            txtsname.Text = "";
            txtsrno.Text = "";
            txtnoback.Text = "";
            txtbcode.Text = "";
        }
        dr.Close();
        con.Close();
    }
}
