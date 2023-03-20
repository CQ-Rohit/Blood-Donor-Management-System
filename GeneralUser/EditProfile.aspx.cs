using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class GeneralUser_EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Server=DESKTOP-DBH93CP\\SQLEXPRESS;Initial Catalog=NGO;Integrated Security=true";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select name,mobile,city,bloodgroup,gender,age from Registration where username=@username";
            cmd.Parameters.AddWithValue("@username", Session["u"].ToString());

            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read() == true)
            {
                txtname.Text = dr.GetString(0);
                txtmobile.Text = dr.GetString(1);
                txtcity.Text = dr.GetString(2);
                ddlbloodgroup.Text = dr.GetString(3);
                rblgender.Text = dr.GetString(4);
                txtage.Text = dr.GetString(5);

            }
            con.Close();

        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Server=DESKTOP-DBH93CP\\SQLEXPRESS;Initial Catalog=NGO;Integrated Security=true";
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update Registration set name=@n,mobile=@m,city=@c,bloodgroup=@bg,gender=@g,age=@a where username=@un";
        cmd.Parameters.AddWithValue("@n", txtname.Text);
        cmd.Parameters.AddWithValue("@m", txtmobile.Text);
        cmd.Parameters.AddWithValue("@c", txtcity.Text);
        cmd.Parameters.AddWithValue("@bg", ddlbloodgroup.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@g", rblgender.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@a", txtage.Text);
        cmd.Parameters.AddWithValue("@un", Session["u"].ToString());
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        lblmsg.Text = "Update Successfully..";
        con.Close();
    }
}