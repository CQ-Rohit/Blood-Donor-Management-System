using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        {
            if (fuphoto.HasFile == true)
            {


                fuphoto.SaveAs(Server.MapPath("Photo\\") + fuphoto.FileName);
                
            } 
                SqlConnection con = new SqlConnection();

                con.ConnectionString = "Server=DESKTOP-DBH93CP\\SQLEXPRESS;Initial Catalog=NGO;Integrated Security=true";

                con.Open();


                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "Insert into Registration (type,name,mobile,city,bloodgroup,gender,age,username,password,photo) values (@t,@n,@m,@c,@b,@g,@a,@u,@p,@photo)";


                cmd.Parameters.AddWithValue("@t", ddltype.Text);
                cmd.Parameters.AddWithValue("@n", txtname.Text);
                cmd.Parameters.AddWithValue("@m", txtmobile.Text);
                cmd.Parameters.AddWithValue("@c", txtcity.Text);
                cmd.Parameters.AddWithValue("@b", ddlbloodgroup.Text);
                cmd.Parameters.AddWithValue("@g", rblgender.Text);
                cmd.Parameters.AddWithValue("@a", txtage.Text);
                cmd.Parameters.AddWithValue("@u", txtusername.Text);
                cmd.Parameters.AddWithValue("@p", txtpassword.Text);
                cmd.Parameters.AddWithValue("@photo", fuphoto.FileName.ToString());
                cmd.Connection = con;

                cmd.ExecuteNonQuery();

             

                con.Close();

         
            txtname.Text = "";
            //ddltype.Text = "";
            txtname.Text = "";
            txtmobile.Text = "";
            txtcity.Text = "";
            ddlbloodgroup.Text = "";
            rblgender.Text = "";
            txtage.Text = "";
            txtusername.Text = "";
            txtpassword.Text = "";


            lblmsg.Text = "Registration Successful..";




        }
    }
    protected void ddltype_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}