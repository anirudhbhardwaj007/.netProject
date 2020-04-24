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

public partial class ADDSUBCOLL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
            con.Open();
            string str;
            str = "select * from coll";
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
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string s = ddlcoll.SelectedItem.Text;
        string ci = txtsubcoll.Text;
        string str1 = "select * from sub_coll where sub_coll='" + ci + "'";
        SqlCommand cmd1 = new SqlCommand(str1, con);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            lbldis.Text = "sub-college already exist";
            txtsubcoll.Text = "";
        }
        else
        {
            dr.Close();
            string str = "insert into sub_coll values('" + s + "','" + ci + "')";

            SqlCommand cmd = new SqlCommand(str, con);
            int i = cmd.ExecuteNonQuery();
            if (i != 0)
            {
                lbldis.Text = "sub college inserted";
                txtsubcoll.Text = "";
            }
            else
            {
                lbldis.Text = "error";
            }
        }
        con.Close();
    }
}
