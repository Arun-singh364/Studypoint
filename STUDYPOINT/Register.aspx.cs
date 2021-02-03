using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace STUDYPOINT
{

    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        static string otp;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void register_user_Click(object sender, EventArgs e)
        {
            var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            con.ConnectionString = conn;
            con.Open();
            try
            {
                string q = "insert into RegTable values('" + InputName.Text + "','" + InputEmail.Text + "','" + InputPwd.Text + "')";
                SqlCommand cmd = new SqlCommand(q, con);
                if (Page.IsValid)
                {
                    if (otp == InputOtp.Text)
                    {
                        Response.Write("<script>alert('Otp is verified')</script>");
                        cmd.ExecuteNonQuery();
                        Response.Write("<script>alert('Registered successfully')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid OTP')</script>");
                    }
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Duplicate Email is not allowed')</script>");
            }
            con.Close();
        }

        protected void SendOtp_Click(object sender, EventArgs e)
        {
            Random random = new Random();
            otp = random.Next(1001, 9999).ToString();

             MailMessage email = new MailMessage();
                 email.From = new MailAddress("studypoint82@gmail.com"); 
                 email.To.Add(InputEmail.Text);                  email.Subject = "Your OTP:";                   email.Body = "Hi "+InputName.Text+"Your OTP is: "+otp+"";
                 email.IsBodyHtml = true;
                 SmtpClient smtpc = new SmtpClient("smtp.gmail.com");
                 smtpc.Port = 587;
                 smtpc.UseDefaultCredentials = false;
                 smtpc.EnableSsl = true;
   
                    smtpc.Credentials = new   NetworkCredential("studypoint82@gmail.com","!@#$%^&*()1234567890");
                 smtpc.Send(email);
                 Response.Write("<script>alert('OTP has been sent to your email')</script>");
                         }

    }          
            
        
    }
