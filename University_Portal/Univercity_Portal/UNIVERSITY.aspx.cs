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

public partial class UNIVERSITY : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbluser.Text = Context.Items["user"].ToString();
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
            con.Open();
            string str;
            str = "select * from state";
            SqlCommand cmd;
            cmd = new SqlCommand(str, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ddlstate.Items.Add(dr.GetString(0));
            }
            dr.Close();
            con.Close();
        }
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlcity.Items.Clear();
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        String S = ddlstate.SelectedItem.Text;
        string str;
        str = "select * from city where state='" + S + "'";
        SqlCommand cmd;
        cmd = new SqlCommand(str, con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddlcity.Items.Add(dr.GetString(1));
        }
        dr.Close();
        con.Close();
    }
    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        String S = ddlcity.SelectedItem.Text;
        string str;
        str = "select uni from uni where city='" + S + "'";
        SqlCommand cmd;
        cmd = new SqlCommand(str, con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        dr.Close();
        con.Close();
    }

    protected void DataList1_ItemCommand(object s1, DataListCommandEventArgs e)
    {
        Label1.Text = DataList1.DataKeys[e.Item.ItemIndex].ToString();
        Context.Items["uni"] = Label1.Text;
        Context.Items["user"] = lbluser.Text;
        Server.Transfer("COLLEGE.aspx");
    }
}
