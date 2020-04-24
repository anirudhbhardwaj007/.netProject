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

public partial class user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbluser.Text = Context.Items["user"].ToString();
        }
    }
    protected void lnksetting_Click(object sender, EventArgs e)
    {
        Context.Items["user"] = lbluser.Text;
        Server.Transfer("usetting.aspx");
    }
    protected void lnkProfile_Click(object sender, EventArgs e)
    {
        Context.Items["user"] = lbluser.Text;
        Server.Transfer("security.aspx");
    }
    protected void lnksearch_Click(object sender, EventArgs e)
    {
        Context.Items["user"] = lbluser.Text;
        Server.Transfer("search.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Context.Items["user"] = lbluser.Text;
        Server.Transfer("UNIVERSITY.aspx");
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        //Context.Items["user"] = lbluser.Text;
        //Session["uni"] = "RAJIV GANDHI PROUDYOGIKI VISHWAVIDYALAYA";
        //Server.Transfer("COLLEGE.aspx");
    }
    protected void lnkbackres_Click(object sender, EventArgs e)
    {
        Context.Items["user"] = lbluser.Text;
        Server.Transfer("SEARCH BACK RESULT.aspx");
    }
}
