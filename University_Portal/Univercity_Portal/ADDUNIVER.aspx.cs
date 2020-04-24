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

public partial class ADDUNIVER : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
            con.Open();
            string str;
            str = "select * from city";
            SqlCommand cmd;
            cmd = new SqlCommand(str, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ddcity.Items.Add(dr.GetString(1));
            }

            dr.Close();
            con.Close();
        }
        
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string s = ddcity.SelectedItem.Text;
        string ci = txtuni.Text;
        string str1 = "select * from uni where uni='" + ci + "'";
        SqlCommand cmd1 = new SqlCommand(str1, con);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            lbldis.Text = "University already exist";
            txtuni.Text = "";
        }
        else
        {
            dr.Close();
            string str = "insert into uni values('" + s + "','" + ci + "')";

            SqlCommand cmd = new SqlCommand(str, con);
            int i = cmd.ExecuteNonQuery();
            if (i != 0)
            {
                lbldis.Text = "Univercity inserted";
                txtuni.Text = "";
            }
            else
            {
                lbldis.Text = "error";
            }
        }
        con.Close();
    }
}
