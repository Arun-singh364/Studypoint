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
    public partial class AdminAllCourses1 : System.Web.UI.Page
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
                GridView2.DataSource = SqlDataSource2;
                GridView2.DataBind();
            }
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            con.Open();
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
            Label COURSEID = GridView1.Rows[e.RowIndex].FindControl("Label6") as Label;
            TextBox COURSE = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            string q = "update AllCourseTable set COURSE='" + COURSE.Text + "' where COURSEID='" + COURSEID.Text + "'";
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
            TextBox COURSEID = GridView1.FooterRow.FindControl("TextBox2") as TextBox;
            TextBox COURSE = GridView1.FooterRow.FindControl("TextBox3") as TextBox;
            try
            {
                string q = "insert into AllCourseTable(COURSEID,COURSE) values('" + COURSEID.Text + "','" + COURSE.Text + "')";
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Duplicate Course ID is not allowed')</script>");
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
            Label COURSEID = GridView1.Rows[e.RowIndex].FindControl("Label4") as Label;
            string q = "delete from AllCourseTable where COURSEID='" + COURSEID.Text + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            Label7.Text = "Row data has been successfully deleted";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();



            
            con.Close();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            con.Open();
            TextBox COURSES= GridView2.FooterRow.FindControl("TextBox6") as TextBox;
            TextBox SUBS = GridView2.FooterRow.FindControl("TextBox7") as TextBox;
            TextBox COURSEIDS = GridView2.FooterRow.FindControl("TextBox8") as TextBox;
            TextBox SUBID = GridView2.FooterRow.FindControl("TextBox9") as TextBox;

            try
            {
                string q = "insert into CourseSubTable(COURSE,SUB,COURSEID,SUBID) values('" + COURSES.Text + "','" + SUBS.Text + "','" + COURSEIDS.Text + "','" + SUBID.Text + "')";
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Duplicate Subject id is not allowed')</script>");
            }
            Label10.Text = " New Row successfully Inserted";
            SqlDataSource2.DataBind();
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();
            con.Close();
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            con.Open();
            GridView2.EditIndex = e.NewEditIndex;
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();
            Label10.Text = "";
            GridView2.EditRowStyle.BackColor = System.Drawing.Color.Orange;
            con.Close();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            con.Open();
            Label SUBID = GridView2.Rows[e.RowIndex].FindControl("Label13") as Label;
            string q1 = "delete from CourseSubTable where SUBID='" + SUBID.Text + "'";
            SqlCommand cmd1 = new SqlCommand(q1, con);
            cmd1.ExecuteNonQuery();
            Label10.Text = "Row data has been successfully deleted";
            GridView2.EditIndex = -1;
            SqlDataSource2.DataBind();
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();
            con.Close();
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            con.Open();
            GridView2.EditIndex = -1;
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();
            Label10.Text = "";
            con.Close();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            con.Open();
            Label SUBID = GridView2.Rows[e.RowIndex].FindControl("Label14") as Label;
            TextBox COURSES = GridView2.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
            TextBox SUBS = GridView2.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
            string q1 = "update CourseSubTable set COURSE='" + COURSES.Text + "', SUB='"+SUBS.Text+"' where SUBID='" + SUBID.Text + "'";
            SqlCommand cmd1 = new SqlCommand(q1, con);
            cmd1.ExecuteNonQuery();
            Label10.Text = "Row data has been successfully updated";
            GridView2.EditIndex = -1;
            SqlDataSource2.DataBind();
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();
            con.Close();
        }
       
    }
}