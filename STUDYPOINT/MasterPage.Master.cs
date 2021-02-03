using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STUDYPOINT
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if(Session["id"]!=null)
        {
            Label1.Text = Session["id"].ToString();
        }
        else
        {
            Response.Redirect("BeforeLoginHomePage.aspx");
        }
   
                   }


        protected void logout_Click(object sender, EventArgs e)
        {
         
        }

        protected void logout_Click1(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("BeforeLoginHomePage.aspx");
        
        }

        protected void EditProfile_Click(object sender, EventArgs e)
        {
                   Response.Redirect("EditProfile.aspx");
                  
                 }
    }
}