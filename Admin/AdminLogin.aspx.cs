using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String username=txtUsername.Text;
        String password=txtPassword.Text;
        if (username == "admin" && password == "super")
        {
            lblmsg.Text = "valid Username & Password";
            Response.Redirect("Default.aspx");
        }
        else
        {
            lblmsg.Text = "Invalid Username & Password";
        }   
    }
}
