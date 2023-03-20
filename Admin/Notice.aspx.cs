using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_Notice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Server=DESKTOP-DBH93CP\\SQLEXPRESS;Initial Catalog=NGO;Integrated Security=true";
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Insert into Notice (notice,ndate) values (@n,@d) ";
        cmd.Parameters.AddWithValue("@n", txtNotice.Text);
        cmd.Parameters.AddWithValue("@d", txtDate.Text);
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        lblmsg.Text = "Notice Insertion Successful !";
        con.Close();
    }
}