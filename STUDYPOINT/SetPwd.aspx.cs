using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;
namespace STUDYPOINT
{
    public partial class SetPwd : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void setpwd_Click(object sender, EventArgs e)
        {
            var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            con.ConnectionString = conn;
            con.Open();
            
            string q = "select PWD from RegTable where EML='" + InputEmail.Text + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                MailMessage email = new MailMessage();
                 email.From = new MailAddress("studypoint82@gmail.com"); 
                 email.To.Add(InputEmail.Text);                  email.Subject = "Your Forget Password:";                  email.Body = "Hi,Your Password is: " + dr["Pwd"] + "";
                 email.IsBodyHtml = true;
                 SmtpClient smtpc = new SmtpClient("smtp.gmail.com");
                 smtpc.Port = 587;
                 smtpc.UseDefaultCredentials = false;
                 smtpc.EnableSsl = true;
   
                    smtpc.Credentials = new   NetworkCredential("studypoint82@gmail.com","!@#$%^&*()1234567890");
                 smtpc.Send(email);
                 string script = @"<script language=""javascript""> alert('Password Has Been Sent.......!!!!!.');
                 </script>;";
                 Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
                }
              else
                {
                Response.Write("This email address is not exist in our Database try again");
                }
            }   
                
        }


        
    }