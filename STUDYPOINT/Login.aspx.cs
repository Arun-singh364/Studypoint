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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_user_Click(object sender, EventArgs e)
        {
            var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            con.ConnectionString = conn;
            con.Open();
            if (RadioButton1.Checked)
            {
                string q = "select * from RegTable where EML='" + InputEmail.Text + "' and PWD='" + InputPwd.Text + "'";
                
                SqlCommand cmd = new SqlCommand(q, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (Page.IsValid)
                    {

                        Session["id"] = dr["UNAME"].ToString();
                        Session["id1"] = dr["EML"].ToString();
                        Response.Redirect("Home.aspx");
                        Session.RemoveAll();

                    }
                }
                else
                {
                    Response.Write("<script>alert('Email or password invalid')</script>");
                }
                dr.Close();
                con.Close();
            }

            else if(RadioButton2.Checked)
            {
                string q = "select * from AdminTable where ADMINNAME='" + InputEmail.Text + "' and ADMINPWD='" + InputPwd.Text + "'";
                SqlCommand cmd = new SqlCommand(q, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    if (Page.IsValid)
                    {
                        Session["id"] = " Welcome Admin";
                        Response.Redirect("AdminHomePage.aspx");
                        Session.RemoveAll();

                    }
                }
                else
                {
                    Response.Write("<script>alert('Email or password invalid')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Select the type')</script>");
            }
        }
    }
}