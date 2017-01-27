using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class FindFriends : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database11.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["CurrentProfileId"] = Session["UserId1"];

            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select profilepic,name from register where emailid!='" + Session["CurrentProfileId"] + "'", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int id, id1;

        if (e.CommandName.Equals("Add"))
        {
            id = Int32.Parse(e.CommandArgument.ToString());
            Label lbl = GridView1.Rows[id].FindControl("Label1") as Label;
            string s = lbl.Text;
            Session["name"] = lbl.Text;

            id1 = Int32.Parse(e.CommandArgument.ToString());
            Label lbl1 = GridView1.Rows[id1].FindControl("Label3") as Label;
            string s1 = lbl1.Text;

            // id1 = Int32.Parse(e.CommandArgument.ToString());
            // Label lbl1 = GridView1.Rows[id1].FindControl("Label2") as Label;
            // string s1 = Convert.ToString(lbl1);

            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database11.mdf;Integrated Security=True;User Instance=True");
            con.Open();


            SqlCommand cmd = new SqlCommand("insert into friends(fname,friendid,requestaccepted) values('" + s + "','" + Session["CurrentProfileId"] + "','" + false + "')", con);
            cmd.ExecuteNonQuery();
            GridView1.DataBind();

            con.Close();



            Response.Redirect("~/FindFriends.aspx");
            lbl1.Text = "You both are now friends";
            

        }

    }
    // protected void Button1_Click(object sender, EventArgs e)
    // {
    //    Button1.Enabled = false;
    // }
}

