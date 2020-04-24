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
public partial class feestucture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbluser.Text = Context.Items["user"].ToString();
            Label1.Text = Context.Items["college"].ToString();
        }
        if (!IsPostBack)
        {
            SqlConnection con;
            SqlCommand com;
            con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
            con.Open();
            string str;
            str = "select * from uni";
            com = new SqlCommand(str, con);
            SqlDataReader dr;
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                ddluni.Items.Add(dr.GetString(1));
            }
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
        Context.Items["user"] = lbluser.Text;
        Context.Items["college"] = Label1.Text;
        Server.Transfer("result_search.aspx");
    }
    protected void ddluni_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlCommand com;
        ddlcg.Items.Clear();
        string uni = ddluni.SelectedItem.Text;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string str;
        str = "select * from coll where uni='" + uni + "'";
        com = new SqlCommand(str, con);
        SqlDataReader dr;
        dr = com.ExecuteReader();
        while (dr.Read())
        {
            ddlcg.Items.Add(dr.GetString(1));
        }
        dr.Close();
        con.Close();
    }
    protected void ddlcg_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlCommand com;
        ddlc.Items.Clear();
        string cg = ddlcg.SelectedItem.Text;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string str;
        str = "select * from sub_coll where coll='" + cg + "'";
        com = new SqlCommand(str, con);
        SqlDataReader dr;
        dr = com.ExecuteReader();
        while (dr.Read())
        {
            ddlc.Items.Add(dr.GetString(1));
        }
        dr.Close();
        con.Close();
    }
    protected void ddlc_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        SqlConnection con;
        SqlCommand com;
        string uni = ddluni.SelectedItem.Text;
        string cg = ddlcg.SelectedItem.Text;
        string c = ddlc.SelectedItem.Text;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string str;
        str = "select * from fee_structure where univercity='" + uni + "' and college_group='" + cg + "' and college='" + c + "'";
        com = new SqlCommand(str, con);
        SqlDataReader dr;
        dr = com.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        dr.Close();
        con.Close();

    }
}
