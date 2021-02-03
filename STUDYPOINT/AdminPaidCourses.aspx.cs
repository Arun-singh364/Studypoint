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
    public partial class AdminPaidCourses : System.Web.UI.Page
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
            Label PCOURSEID = GridView1.Rows[e.RowIndex].FindControl("Label6") as Label;
            TextBox PCOURSE = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox AMOUNT = GridView1.Rows[e.RowIndex].FindControl("TextBox8") as TextBox;
            string q = "update PaidCourseTable set PCOURSE='" + PCOURSE.Text + "' , AMOUNT='"+AMOUNT.Text+"' where PCOURSEID='" + PCOURSEID.Text + "'";
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
            TextBox PCOURSEID = GridView1.FooterRow.FindControl("TextBox2") as TextBox;
            TextBox PCOURSE = GridView1.FooterRow.FindControl("TextBox3") as TextBox;
            TextBox AMOUNT = GridView1.FooterRow.FindControl("TextBox9") as TextBox;
            

            try
            {
                string q = "insert into PaidCourseTable(PCOURSEID,PCOURSE,AMOUNT) values('" + PCOURSEID.Text + "','" + PCOURSE.Text + "','"+AMOUNT.Text+"')";
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
            Label PCOURSEID = GridView1.Rows[e.RowIndex].FindControl("Label4") as Label;
            string q = "delete from PaidCourseTable where PCOURSEID='" + PCOURSEID.Text + "'";
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
            TextBox PSUBID = GridView2.FooterRow.FindControl("TextBox10") as TextBox;
            TextBox PCOURSEID = GridView2.FooterRow.FindControl("TextBox11") as TextBox;
            TextBox PCOURSES = GridView2.FooterRow.FindControl("TextBox6") as TextBox;
            TextBox PSUBS = GridView2.FooterRow.FindControl("TextBox7") as TextBox;
            try
            {
                string q = "insert into PaidCourseSubTable(PSUBID,PSUB,PCOURSE,PCOURSEID) values('" + PSUBID.Text + "','" + PSUBS.Text + "','" + PCOURSES.Text + "','" + PCOURSEID.Text + "')";
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
            Label PSUBID = GridView2.Rows[e.RowIndex].FindControl("Label12") as Label;
            string q1 = "delete from PaidCourseSubTable where PSUBID='" + PSUBID.Text + "'";
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
            Label PSUBID = GridView2.Rows[e.RowIndex].FindControl("Label13") as Label;
            TextBox PCOURSES = GridView2.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
            TextBox PSUBS = GridView2.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
            string q1 = "update PaidCourseSubTable set PCOURSE='" + PCOURSES.Text + "', PSUB='"+PSUBS.Text+"' where PSUBID='" + PSUBID.Text + "'";
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