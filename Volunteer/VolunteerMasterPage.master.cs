using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Volunteer_VolunteerMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblname.Text = Session["u"].ToString();
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Server=DESKTOP-DBH93CP\\SQLEXPRESS;Initial Catalog=NGO;Integrated Security=true";
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select photo from Registration where username=@un";
        cmd.Parameters.AddWithValue("un", Session["u"].ToString());
        cmd.Connection = con;
        Object obj = cmd.ExecuteScalar();
        imgup.ImageUrl = "../Photo/" + obj.ToString();
        con.Close();
     }
        
       

    
}
