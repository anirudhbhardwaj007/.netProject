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
        if (!IsPostBack)
        {
           
            lbluser.Text = Context.Items["user"].ToString();
            Label1.Text = Context.Items["college"].ToString();
            string a = Label1.Text;
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
            con.Open();
            string str;
            str = "select * from coll_detail where college='" + a + "'";
            SqlCommand cmd;
            cmd = new SqlCommand(str, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox2.Text = dr.GetString(1);
                TextBox3.Text = dr.GetString(2);
                TextBox4.Text = dr.GetString(3);
                TextBox5.Text = dr.GetString(4);
                TextBox6.Text = dr.GetString(5);
                TextBox7.Text = dr.GetString(6);
                TextBox8.Text = dr.GetString(7);
                TextBox9.Text = dr.GetString(8);

            }
            else
            {
                Label10.Text = "error in college load";
            }
            dr.Close();
            con.Close();
        }
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Context.Items["user"]=lbluser.Text;
        Context.Items["college"] = Label1.Text;
        Server.Transfer("coll_course.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Context.Items["user"] = lbluser.Text;
        Context.Items["college"] = Label1.Text;
        Server.Transfer("COLLEGE_Details.aspx");
    }
    protected void lnkpro_Click(object sender, EventArgs e)
    {
        Context.Items["user"] = lbluser.Text;
        Context.Items["college"] = Label1.Text;
        Server.Transfer("prospactus.aspx");
    }
    protected void lnkfeestr_Click(object sender, EventArgs e)
    {
        Context.Items["user"] = lbluser.Text;
        Context.Items["college"] = Label1.Text;
        Server.Transfer("feestucture.aspx");
    }
    protected void lnkfcltylist_Click(object sender, EventArgs e)
    {
        Context.Items["user"] = lbluser.Text;
        Context.Items["college"] = Label1.Text;
        Server.Transfer("facultylist.aspx");
    }
    protected void lnkFeedback_Click(object sender, EventArgs e)
    {
        Context.Items["user"] = lbluser.Text;
        Context.Items["college"] = Label1.Text;
        Server.Transfer("result_search.aspx");
    }
}
