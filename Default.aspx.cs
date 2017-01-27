using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database11.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["UserId1"] = t0.Text;
        Session["CurrentProfileId"] = Session["UserId1"];

        Session["uid"] = t1.Text;
    }
    protected void t0_TextChanged(object sender, EventArgs e)
    {
        Session["UserId1"] = t0.Text;
        Session["CurrentProfileId"] = Session["UserId1"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["UserId1"] = t0.Text;
        Session["CurrentProfileId"] = Session["UserId1"];


        Response.Redirect("~/main.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        String filename = Path.GetFileName(t6.PostedFile.FileName);
        t6.SaveAs(Server.MapPath("~/") + filename);

        con.Open();
        SqlCommand cmd = new SqlCommand("insert into register(name,emailid,pwd,gender,dob,profilepic,aboutme,country) values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.SelectedValue + "','" + t5.Text + "','" + filename + "','" + t7.Text + "','" + t8.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        t1.Focus();
        l1.Text = "You have registered successfully";
        clearControls();

    }

    

    private void clearControls()
    {
        t1.Text = "";
        t2.Text = "";
        t3.Text = "";
        t5.Text = "";
        t7.Text = "";
        t8.Text = "";
        t4.SelectedIndex = 0;
       
    }
    protected void t7_TextChanged(object sender, EventArgs e)
    {

    }
}
