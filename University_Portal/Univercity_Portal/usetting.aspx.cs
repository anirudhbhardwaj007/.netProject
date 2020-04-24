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

public partial class usetting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbluser.Text = Context.Items["user"].ToString();
            string u = lbluser.Text;
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
            con.Open();
            string str;
            str = "select * from reg where email='" + u + "'";
            SqlCommand cmd;
            cmd = new SqlCommand(str, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtfname.Text = dr.GetString(0);
                txtlname.Text = dr.GetString(1);
                txtfathname.Text = dr.GetString(2);
                txtdob.Text = dr.GetString(3);
                txtcity.Text = dr.GetString(5);
                txtcollname.Text = dr.GetString(7);
                txt10.Text = dr.GetString(11);
                txt12.Text=dr.GetString(12);
                txtpadd.Text = dr.GetString(17);
                txtladd.Text = dr.GetString(18);
                txtmob.Text = dr.GetString(19);
                txthobby.Text = dr.GetString(20);
                txthtown.Text = dr.GetString(21);
                txtage.Text = dr.GetInt32(22).ToString();
            }
            else
            {
                lbldis.Text = "record not found";
            }
            dr.Close();
            con.Close();

        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string uname = lbluser.Text;
        string fn = txtfname.Text;
        string ln = txtlname.Text;
        string fathname = txtfathname.Text;
        string dob = txtdob.Text;
        string city = txtcity.Text;
        string collname = txtcollname.Text;
        string ten = txt10.Text;
        string twel = txt12.Text;
        string ot = txtother.Text;
        string padd = txtpadd.Text;
        string ladd = txtladd.Text;
        string mob = txtmob.Text;
        string hobby = txthobby.Text;
        string htown = txthtown.Text;
        int age = int.Parse(txtage.Text);
        string str;
        str = "update reg set fname='" + fn + "',lname='" + ln + "',fath_name='" + fathname + "',dob='" + dob + "',city='" + city + "',cname='" + collname + "',ten='" + ten + "',twel='" + twel + "',ot='" + ot + "',padd='" + padd + "',ladd='" + ladd + "',mono='" + mob + "',hobby='" + hobby + "',htown='" + htown + "',age=" + age + " where email='" + uname + "'";
        SqlCommand cmd;
        cmd = new SqlCommand(str, con);
        int i;
        i = cmd.ExecuteNonQuery();
        if (i != 0)
        {
            lbldis.Text = "update succeessfully";
        }
        else
        {
            lbldis.Text = "error";
        }
        con.Close();
    }
 
    
}
