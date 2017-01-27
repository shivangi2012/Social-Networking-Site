using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class aboutme : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database11.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["CurrentProfileId"] = Session["UserId1"];
        con.Open();
        SqlCommand cmd = new SqlCommand("select name,emailid,gender,dob,aboutme,country from register where emailid='" + Session["CurrentProfileId"] + "'", con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            Label1.Text += dr[0].ToString();
            Label2.Text += dr[1].ToString();
            Label3.Text += dr[2].ToString();
            Label4.Text += dr[3].ToString();
            Label5.Text += dr[4].ToString();
            Label6.Text += dr[5].ToString();
        }
        con.Close();


    }
}



