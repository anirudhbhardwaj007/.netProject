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

public partial class COLLEGE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Label1.Text = Session["uni"].ToString();
            lbluser.Text = Context.Items["user"].ToString();
            Label1.Text = Context.Items["uni"].ToString();
            
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
            con.Open();
            string c = Label1.Text;
            string str;
            str = "select * from coll where uni='" + c + "'";
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
    protected void DataList1_ItemCommand(object s1, DataListCommandEventArgs e)
    {
        Label2.Text = DataList1.DataKeys[e.Item.ItemIndex].ToString();
        Context.Items["user"] = lbluser.Text;
        Context.Items["college"] = Label2.Text;
        Server.Transfer("COLLEGES_List.aspx");
    }
}
