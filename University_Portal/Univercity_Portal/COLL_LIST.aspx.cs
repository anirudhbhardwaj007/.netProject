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

public partial class COLL_LIST : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
        DataList1.DataSource = dr;
        DataList1.DataBind();
        dr.Close();
        con.Close();
    }
}
