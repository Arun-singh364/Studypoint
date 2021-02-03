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
    public partial class Search : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
             var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            con.ConnectionString = conn;
          
       
        
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            con.Open();
 
                if (RadioButton1.Checked)
                {
                   
                    SqlDataSource SqlDataSource2 = new SqlDataSource();
                    SqlDataSource2.ID = "SqlDataSource2";
                    this.Page.Controls.Add(SqlDataSource2);
                    SqlDataSource2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["test"].ConnectionString;
                    SqlDataSource2.SelectCommand = "SELECT COURSE FROM [AllCourseTable] where COURSE='" + TextBox1.Text + "'";
                   
                    GridView1.DataSource = SqlDataSource2;
                    GridView1.DataBind();
                    GridView1.Visible = true;
                }

                else if(RadioButton2.Checked)
                {
                    SqlDataSource SqlDataSource1 = new SqlDataSource();
                    SqlDataSource1.ID = "SqlDataSource1";
                    this.Page.Controls.Add(SqlDataSource1);
                    SqlDataSource1.ConnectionString=System.Configuration.ConfigurationManager.ConnectionStrings["test"].ConnectionString;
                    SqlDataSource1.SelectCommand = "SELECT SUB FROM [ALLSubTable] where SUB='" + TextBox1.Text + "'";
                    GridView1.DataSource = SqlDataSource1;
                    GridView1.DataBind();
                    GridView1.Visible = true;
                }

                else
                {
                    Response.Write("<script>alert('Select the type')</script>");
                }
            con.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            if (RadioButton1.Checked)
            {
                Response.Redirect("AllSubject.aspx");
               
            }

            else
            {
                Response.Redirect("VdoPdf.aspx");
            }
        }

       

       
    }
}