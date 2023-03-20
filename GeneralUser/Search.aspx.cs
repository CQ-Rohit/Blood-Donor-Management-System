using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GeneralUser_Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT [id], [name], [mobile], [city] ,[photo] FROM [Registration] where bloodgroup='"+ ddlBloodGroup.Text + "'";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {


        Response.Redirect("GeneralUser//ShowDetails.aspx?a=1");

    }
}