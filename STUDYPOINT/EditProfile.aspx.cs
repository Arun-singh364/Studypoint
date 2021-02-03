using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


namespace STUDYPOINT
{
    public partial class EditProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        protected void Save_Click(object sender, EventArgs e)
        {
            var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            con.ConnectionString = conn;
            con.Open();
            if (Page.IsValid)
            {
            string q = "select * from RegTable where EML='" + Session["id1"].ToString() + "' and PWD='" + InputOPassword.Text + "'";

            SqlCommand cmd = new SqlCommand(q, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Close();
                con.Close();
                con.Open();
                if (InputNPassword.Text == InputCPassword.Text)
                {
                    string q1 = "update RegTable set PWD='" + InputNPassword.Text + "'  where EML='" + Session["id1"].ToString() + "'";
                    SqlCommand cmd1 = new SqlCommand(q1, con);
                    cmd1.ExecuteNonQuery();
                    Label1.Text = "Password Change Successfully...!";
                }
                else
                {
                    Label1.Text = "New password and Confirm Password is not matching...!";
                }
            }
            else
            {
                Label1.Text = "Your Old Password is                      incorrect...!";
            }
 
            con.Close();
            }
            
        }

    }
}