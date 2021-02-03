using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace STUDYPOINT
{
    public partial class PaidCourseSubject : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            con.ConnectionString = conn;
            if (!IsPostBack)
            {
                SqlDataSource SqlDataSource1 = new SqlDataSource();
                SqlDataSource1.ID = "SqlDataSource1";
                this.Page.Controls.Add(SqlDataSource1);

                SqlDataSource1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["test"].ConnectionString;

                SqlDataSource1.SelectCommand = "SELECT PSUBID,PSUB FROM [PaidCourseSubTable] where PCOURSEID='" + Request.QueryString["id"]+"'";
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
                GridView1.Visible = true;

            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }


        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "psubclick")
            {
                Response.Redirect("VdoPdf.aspx?id=" + e.CommandArgument.ToString());
            }
        }



    }
}