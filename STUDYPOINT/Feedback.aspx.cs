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
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FdbSend_Click(object sender, EventArgs e)
        {
            var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            con.ConnectionString = conn;
            con.Open();
            if (Page.IsValid)
            {
                string q = "select * from RegTable where EML='" + InputEmail.Text + "'";
                SqlCommand cmd = new SqlCommand(q, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Close();
                    string q1 = "insert into FdbTable values('" + InputEmail.Text + "','" + fdb.Text + "')";
                    SqlCommand cd = new SqlCommand(q1, con);
                    cd.ExecuteNonQuery();

                    Response.Write("<script>alert('Feedback sent')</script>");

                    
                    con.Close();
                }
                
                else
                {
                    Response.Write("<script>alert('Email or password invalid')</script>");
                }
               
            }
                
            }

        }
    }
