using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Volunteer_Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand ="SELECT [id], [name], [mobile], [city], [bloodgroup], [photo] FROM [Registration] where bloodgroup='"+ ddlBloodGroup.Text + "'";
    }
}