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

public partial class SEARCH_BACK_RESULT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
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
