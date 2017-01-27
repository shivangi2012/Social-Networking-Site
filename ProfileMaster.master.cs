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
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;

public partial class ProfileMaster : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database11.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select profilepic,name from register where emailid='" + Session["CurrentProfileId"] + "'", con);
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        while (dr.Read())
        {
            Image1.ImageUrl = "~/" + dr[0].ToString();
            Label3.Text += dr[1].ToString();
        }
        con.Close();


        Session["search"] = t1.Text;
        Session["CurrentProfileId"] = Session["UserId1"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/search.aspx");
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/ViewFriends.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/Default.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/FindFriends.aspx");
    }

    protected void Button4_Click1(object sender, EventArgs e)
    {
        {

            String filename1 = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/") + filename1);

            con.Open();
            SqlCommand cmd = new SqlCommand("update register set profilepic='" + filename1 + "' where emailid='" + Session["CurrentProfileId"] + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

        }

        con.Open();
        SqlCommand cmd1 = new SqlCommand("select profilepic from register where emailid='" + Session["CurrentProfileId"] + "'", con);
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        while (dr.Read())
        {
            Image1.ImageUrl = "~/" + dr[0].ToString();
        }
        con.Close();

        Response.Redirect("~/main.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/aboutme.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {

        Session["CurrentProfileId"] = Session["UserId1"];
        {
            string datetime = DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToLongTimeString().ToString();
            con.Open();
            SqlCommand cmd3 = new SqlCommand("insert into posts(postid,post,postdate) values('" + Session["CurrentProfileId"] + "','" + t2.Text + "','" + datetime + "')", con);
            cmd3.ExecuteNonQuery();
            t2.Text = "";
            Label2.Text = "posted successfully";
            con.Close();
        }
        Response.Redirect("~/main.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void t2_TextChanged(object sender, EventArgs e)
    {

    }
}
