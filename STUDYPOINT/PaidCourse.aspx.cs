using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace STUDYPOINT
{
    public partial class PaidCourse : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            con.ConnectionString = conn;

            con.Open();
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {

                Label5.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label5.Text = "0";
            }
            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
            con.Close();
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
            if(e.CommandName=="courseclick")
            {
                Response.Redirect("AddToCart.aspx?id=" + e.CommandArgument.ToString());
            }
            else if(e.CommandName=="pcourseclick")
            {
                Response.Redirect("PaidCourseSubject.aspx?id=" + e.CommandArgument.ToString());
            }


        }

        

       


    }
}