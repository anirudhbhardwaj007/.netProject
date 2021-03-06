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

public partial class COLLEGES_List : System.Web.UI.Page
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
            str = "select * from sub_coll where coll='" + c + "'";
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
        Context.Items["college"] = Label2.Text;
        Context.Items["user"] = lbluser.Text;
        Server.Transfer("COLLEGE_Details.aspx");
    }
}
