using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STUDYPOINT
{
    public partial class AdminHome : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void fdb_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminFeedback.aspx");
        }

        protected void Msub_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAllSubjects.aspx");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAllCourses.aspx");
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {

        }

       

        protected void PCourses_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPaidCourses.aspx");
        }

        protected void UploadPDF_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminUploadPdf.aspx");
        }

        protected void uploadvidio_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminUploadVidio.aspx");
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHomePage.aspx");
        }

        protected void logout_Click1(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("BeforeLoginHomePage.aspx");
        }

        protected void uprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminUserProfile.aspx");
        }

        
    }
}