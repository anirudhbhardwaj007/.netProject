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

public partial class security : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbluser.Text = Context.Items["user"].ToString();
        }
    }
    protected void ChangePasswordPushButton_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string op = CurrentPassword.Text;
        string np = NewPassword.Text;
        string cnp = ConfirmNewPassword.Text;
        string str;
        str = "select * from login where email='" + lbluser.Text + "' and pass='" + op + "'";
        SqlCommand cmd;
        cmd = new SqlCommand(str,con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            dr.Close();
            string str1;
            str1 = "update login set pass='" + np + "'";
            SqlCommand cmd1;
            cmd1 = new SqlCommand(str1, con);
            int i;
            i = cmd1.ExecuteNonQuery();
            if (i != 0)
            {
                lbldis.Text="successfully change your password ";
                CurrentPassword.Text = "";
                NewPassword.Text = "";
                ConfirmNewPassword.Text="";
            }
            else
            {
                lbldis.Text="error";
                NewPassword.Text = "";
                ConfirmNewPassword.Text = "";
            }
        }
        else
        {
            lbldis.Text = "user id & password dose not match";
            CurrentPassword.Text = "";
        }
    }
}
