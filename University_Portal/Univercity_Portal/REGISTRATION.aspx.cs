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

public partial class REGISTRATION : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
            con.Open();
            string str;
            str = "select * from city";
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
        if (!IsPostBack)
        {
            SqlConnection con;
            con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
            con.Open();
            string str;
            str = "select * from course";
            SqlCommand cmd;
            cmd = new SqlCommand(str, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ddlcourse.Items.Add(dr.GetString(0));
            }
            dr.Close();
            con.Close();
        }

    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        string p = txtpass.Text;
        string fname = txtfname.Text;
        string lname = txtlname.Text;
        string fatname = txtfathname.Text;
        string dob = txtdob.Text;
        string sex = lblsex.Text;
        string cty = ddlcity.SelectedItem.Text;
        string mail = txtemail.Text;
        string collname = txtcollname.Text;
        string course = ddlcourse.SelectedItem.Text;
        string branch=ddlbranch.SelectedItem.Text;
        string sem=ddlsem.SelectedItem.Text;
        string ten = txt10.Text;
        string twe = txt12.Text;
        string padd = txtpadd.Text;
        string ladd = txtladd.Text;
        string mono = txtmob.Text;
        string hobby = txthobby.Text;
        string town = txthtown.Text;
        int age = int.Parse(txtage.Text);
        string ot = txtother.Text;
        string q1, q2, q3;
        if (chkbe.Checked == true)
        {
            q1 = "BE";
        }
        else
        {
            q1 = "";
        }
        if (chkmba.Checked == true)
        {
            q2 = "mba";
        }
        else
        {
            q2 = "";
        }
        if (chkmca.Checked == true)
        {
            q3 = "mca";
        }
        else
        {
            q3 = "";
        }
        if (chkot.Checked == true)
        {
            txtother.Visible = true;
        }
        else
        {
            txtother.Visible = false;
            txtother.Text = "";
        }
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string str,str1,str2;
        str1 = "select * from login where email='" + mail + "'";
        SqlCommand cmd,cmd1,cmd2;
        cmd1 = new SqlCommand(str1, con);
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            lbldis.Text = "user already exist plese change email address";
            txtemail.Text = "";
        }
        else
        {
            dr.Close();
            str2 = "insert into login values('" + txtemail.Text + "','" + p + "')";
            str = "insert into reg values('" + fname + "','" + lname + "','" + fatname + "','" + dob + "','" + sex + "','" + cty + "','" + mail + "','" + collname + "','" + course + "','" + branch + "','" + sem + "','" + ten + "','" + twe + "','" + q1 + "','" + q2 + "','" + q3 + "','" + ot + "','" + padd + "','" + ladd + "','" + mono + "','" + hobby + "','" + town + "'," + age + ")";
            cmd2 = new SqlCommand(str2, con);
            cmd = new SqlCommand(str, con);
            int i, j;
            j = cmd2.ExecuteNonQuery();
            i = cmd.ExecuteNonQuery();
            if (i != 0 && j != 0)
            {
                Context.Items["user"]=txtemail.Text;;
                Server.Transfer("user.aspx");
            }
            else
            {
                lbldis.Text = "try again";
            }
        }
        con.Close();

    }
    protected void rdomale_CheckedChanged(object sender, EventArgs e)
    {
        if (rdomale.Checked == true)
        {
            rdofemale.Checked = false;
            lblsex.Text = "Male";
        }
    }
    protected void rdofemale_CheckedChanged(object sender, EventArgs e)
    {
        if (rdofemale.Checked == true)
        {
            rdomale.Checked = false;
            lblsex.Text = "FeMale";
        }
    }
    protected void ddlcourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        string co = ddlcourse.SelectedItem.Text;
        ddlbranch.Items.Clear();
        ddlsem.Items.Clear();
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.AppSettings["mss"]);
        con.Open();
        string str;
        str = "select * from branch where course='" + co + "'";
        SqlCommand cmd;
        cmd = new SqlCommand(str, con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        string str1;
        str1 = "select * from sem where course='" + co + "'";
        SqlCommand cmd1;
        cmd1 = new SqlCommand(str1, con);

        while (dr.Read())
        {
            ddlbranch.Items.Add(dr.GetString(1));
        }
        dr.Close();
        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();
        while (dr1.Read())
        {
            ddlsem.Items.Add(dr1.GetString(1));
        }
        dr1.Close();
        con.Close();
    }
    protected void ddlbranch_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
