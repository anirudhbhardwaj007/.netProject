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

public partial class coll_course : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbluser.Text = Context.Items["user"].ToString();
            Label1.Text = Context.Items["college"].ToString();
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
            con.Open();
            string c = Label1.Text;
            string str;
            str = "select * from coll_branch where college='" + c + "'";
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Context.Items["user"] = lbluser.Text;
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
        Server.Transfer("feedback.aspx");
    }
}
