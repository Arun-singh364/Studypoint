using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace STUDYPOINT
{
    public partial class AdminUploadVidio : System.Web.UI.Page
    {
        static int videoid;
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
            String videolink;
            getvideoid();
            //string path = Path.GetFileName(FileUpload1.FileName);
            //path = path.Replace(" ", "");
            uploadvidio.SaveAs(Server.MapPath("Videos/") + videoid + ".mp4");
            String link = "Videos/" + videoid + ".mp4";
            videolink =  link;
            savevideodata(videoid, subid.Text,fname.Text, videolink);
            Label2.Text = "Video Uploaded Successfully";
        }

        private void savevideodata(int videoid1,String subid1, String videotitle1, String videolink1)
        {
            String query = "insert into VidioTable(VDOID,VDONAME,VDO,SUBID) values(" + videoid1 + ",'" + videotitle1 + "','" + videolink1 + "','" + subid1 + "')";
            SqlConnection con = new SqlConnection();
            var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            con.ConnectionString = conn;
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

        }


        public void getvideoid()
        {
            SqlConnection con = new SqlConnection();
            var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            con.ConnectionString = conn;
            String myquery = "select VDOID from VidioTable";
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
                videoid = 1001;

            }
            else
            {

                SqlConnection con1 = new SqlConnection();
                var conn1 = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
                con1.ConnectionString = conn1;
                String myquery1 = "select max(VDOID) from VidioTable";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = con1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                videoid = Convert.ToInt16(ds1.Tables[0].Rows[0][0].ToString()) + 1;

                con1.Close();
            }

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection();
            var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            con.ConnectionString = conn;

            con.Open();
            Label vdoid = GridView1.Rows[e.RowIndex].FindControl("Label4") as Label;
            string q = "delete from VidioTable where VDOID='" + vdoid.Text + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }



    }
}