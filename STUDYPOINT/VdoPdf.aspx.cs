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
    public partial class VdoPdf : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            con.ConnectionString = conn;

            SqlDataSource SqlDataSource1 = new SqlDataSource();
            SqlDataSource1.ID = "SqlDataSource1";
            this.Page.Controls.Add(SqlDataSource1);

            SqlDataSource1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["test"].ConnectionString;

            SqlDataSource1.SelectCommand = "SELECT SUBID,PDFNAME,PDF FROM [PdfTable] where SUBID='" + Request.QueryString["id"] + "'";
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

            SqlDataSource SqlDataSource2 = new SqlDataSource();
            SqlDataSource2.ID = "SqlDataSource2";
            this.Page.Controls.Add(SqlDataSource2);

            SqlDataSource2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["test"].ConnectionString;

            SqlDataSource2.SelectCommand = "SELECT SUBID,VDONAME,VDO FROM [VidioTable] where SUBID='" + Request.QueryString["id"] + "'";
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();

           

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
                   }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            }

        protected void pdf_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
        }

        protected void vdo_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            GridView1.Visible = false;
        }
    }
}