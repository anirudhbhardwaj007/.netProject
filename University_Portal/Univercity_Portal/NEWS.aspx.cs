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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con ;
        con= new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string str1 = "select * from NEWS where NEWS='" + txtnews.Text + "'";
        SqlCommand cmd1 = new SqlCommand(str1, con);
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            lbldis.Text = "News already exist";
            txtnews.Text = "";
        }
        else
        {
            dr.Close();
            string str = "insert into NEWS values('" + txtnews.Text + "')";

            SqlCommand cmd = new SqlCommand(str, con);
            int i = cmd.ExecuteNonQuery();
            if (i != 0)
            {
                lbldis.Text = "News inserted";
                txtnews.Text = "";
            }
            else
            {
                lbldis.Text = "error";
            }
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string str1 = "delete from news";
        SqlCommand cmd1 = new SqlCommand(str1, con);
        int i= cmd1.ExecuteNonQuery();
        if (i != 0)
        {
            lbldis.Text = "successfully deleted";
            txtnews.Text = "";
        }
        else
        {
            lbldis.Text = "error";
        }
        con.Close();
    }
}
