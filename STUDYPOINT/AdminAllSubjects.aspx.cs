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
    public partial class AdminAllCourses : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            con.ConnectionString = conn;

            con.Open();
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

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label7.Text = "";
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;
            con.Close();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            con.Open();
            GridView1.EditIndex = -1;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label7.Text = "";
            con.Close();


        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            con.Open();
            Label SUBID = GridView1.Rows[e.RowIndex].FindControl("Label6") as Label;
            TextBox SUB = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            string q="update ALLSubTable set SUB='"+SUB.Text+"' where SUBID='"+SUBID.Text+"'";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            Label7.Text = "Row data has been successfully updated";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            con.Close();
  
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            con.Open();
            TextBox SUBID = GridView1.FooterRow.FindControl("TextBox2") as TextBox;
            TextBox SUB = GridView1.FooterRow.FindControl("TextBox3") as TextBox;
            try
            {
                string q = "insert into ALLSubTable(SUBID,SUB) values('" + SUBID.Text + "','" + SUB.Text + "')";
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Duplicate Subject ID is not allowed')</script>");
            }
            Label7.Text = " New Row successfully Inserted";
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            con.Open();
            Label SUBID = GridView1.Rows[e.RowIndex].FindControl("Label4") as Label;
            string q = "delete from ALLSubTable where SUBID='"+SUBID.Text+"'" ;
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            Label7.Text = "Row data has been successfully deleted";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            con.Close();
        }
        
    }
}