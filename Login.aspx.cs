using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Server=DESKTOP-DBH93CP\\SQLEXPRESS; Initial Catalog=NGO; Integrated Security=true ";
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select type from Registration where  username= @un AND password=@pwd and type=@type ";
      
        cmd.Parameters.AddWithValue("@un", txtusername.Text);
        cmd.Parameters.AddWithValue("@pwd", txtpassword.Text);
        cmd.Parameters.AddWithValue("@type", ddltype.SelectedItem.ToString());
        cmd.Connection = con;
        Object obj = cmd.ExecuteScalar();


        if (obj == null)
        {
            lblmsg.Text = "Invalid user";
        }
        else
        {
            if (ddltype.SelectedItem.ToString() == "Volunteer")
            {
                Session.Add("u", txtusername.Text);
                Session.Add("p", txtpassword.Text);
                Response.Redirect("Volunteer//Default.aspx");
            }
            else
            {
                Session.Add("u", txtusername.Text);
                Session.Add("p", txtpassword.Text);
                Response.Redirect("GeneralUser//Default.aspx");
            }
            
        }
        con.Close();


    }
}