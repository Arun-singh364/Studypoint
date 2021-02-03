using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace STUDYPOINT
{
    public partial class AdminUploadPdf : System.Web.UI.Page
    {
        static string pdflink;
        static Int32 pdfid;

        protected void Page_Load(object sender, EventArgs e)
        {
      
            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
                
            }
        }

        protected void Upload_Click(object sender, EventArgs e)
        {
            if (uploadresume() == true)
            {
                String query = "insert into PdfTable(PDFID,PDFNAME,SUBID,PDF) values(" + pdfid + ",'" + fname.Text + "','" + subid.Text + "','" + pdflink + "')";
                Upload.Text = query;
                SqlConnection con = new SqlConnection();
                var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
                con.ConnectionString = conn;
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label2.Text = "Pdf is successfully uploaded";
                subid.Text = "";
                fname.Text = "";
                 }

        }

        private Boolean uploadresume()
        {
            Boolean resumesaved = false;
            if (uploadpdf.HasFile == true)
            {

                String contenttype = uploadpdf.PostedFile.ContentType;

                if (contenttype == "application/pdf")
                {
                    int filesize;
                    filesize = uploadpdf.PostedFile.ContentLength;

                    getpdfid();
                    uploadpdf.SaveAs(Server.MapPath("~/UploadedPdf/") + pdfid + ".pdf");

                    pdflink = "UploadedPdf/" + pdfid + ".pdf";
                    resumesaved = true;
                    Label1.Text = "";
                }
                else
                {
                    Label1.Text = "Upload file in PDF Format Only";
                }

            }
            else
            {
                Label1.Text = "Kindly Upload file Before Apply in PDF Format";
            }


            return resumesaved;
        }
        public void getpdfid()
        {
            SqlConnection con = new SqlConnection();

            var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            con.ConnectionString = conn;

           

            con.Open();
            String myquery = "select PDFID from PdfTable";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                pdfid = 1001;

            }
            else
            {

                SqlConnection con1 = new SqlConnection();

                var conn1 = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
                con1.ConnectionString = conn1;

                con1.Open();
                String myquery1 = "select max(PDFID) from PdfTable";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = con1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                pdfid = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());
                pdfid = pdfid + 1;
                con1.Close();
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection();
            var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            con.ConnectionString = conn;

            con.Open();
            Label pdfid = GridView1.Rows[e.RowIndex].FindControl("Label4") as Label;
            string q = "delete from PdfTable where PDFID='" +pdfid.Text + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }






    }
}