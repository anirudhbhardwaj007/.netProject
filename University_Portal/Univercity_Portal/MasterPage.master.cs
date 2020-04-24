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

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string mail = Login1.UserName;
        string p = Login1.Password;
        if(mail=="mragank" && p=="123")
        {
            Context.Items["admin"] = Login1.UserName;
            Server.Transfer("admin.aspx");
        }
        string str;
        str = "select * from login where email='" + mail + "' and pass='" + p + "'";
        SqlCommand cmd;
        cmd = new SqlCommand(str, con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Context.Items["user"] = Login1.UserName;
            Server.Transfer("user.aspx");
        }
        else
        {
            Login1.UserName = "";
        }
        dr.Close();
        con.Close();
    }
}
