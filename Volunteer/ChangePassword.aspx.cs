using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Volunteer_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string spassword = Session["p"].ToString();
        if (spassword == txtoldpassword.Text)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Server=DESKTOP-DBH93CP\\SQLEXPRESS;Initial Catalog=NGO;Integrated Security=true";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update Registration set password=@pass where username=@u";
            cmd.Parameters.AddWithValue("@pass", txtnewpassword.Text);
            cmd.Parameters.AddWithValue("@u", Session["u"].ToString());
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Password Change Successfully!";
        }
        else
        {
            lblmsg.Text = "Invalid Old Password";
        }
    }
}