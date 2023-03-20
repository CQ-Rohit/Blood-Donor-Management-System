using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ShowVolunteer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnButton_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT [id], [type], [name],[bloodgroup] FROM [Registration] where type='Volunteer' and bloodgroup='" + ddlBloodGroup.Text + "'";

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        Response.Redirect("ShowDetails.aspx?a=" + GridView1.SelectedRow.Cells[0].Text);


    }
}