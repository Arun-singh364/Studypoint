using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using paytm;



namespace STUDYPOINT
{
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                 dt.Columns.Add("srno");
                dt.Columns.Add("PCOURSEID");
                dt.Columns.Add("PCOURSE");
                dt.Columns.Add("AMOUNT");
                dt.Columns.Add("TotalPrice");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        SqlConnection con = new SqlConnection();
                        var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
                        con.ConnectionString = conn;

                        dr = dt.NewRow();
                        
                  String myquery = "select * from PaidCourseTable where PCOURSEID='" + Request.QueryString["id"]+"'";
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["srno"] = 1;
                        dr["PCOURSEID"] = ds.Tables[0].Rows[0]["PCOURSEID"].ToString();
                        dr["PCOURSE"] = ds.Tables[0].Rows[0]["PCOURSE"].ToString();
                        dr["AMOUNT"] = ds.Tables[0].Rows[0]["AMOUNT"].ToString();
                        int AMOUNT = Convert.ToInt16(ds.Tables[0].Rows[0]["AMOUNT"].ToString());
                        
                        int TotalPrice = AMOUNT;
                        dr["TotalPrice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[3].Text = "Total Amount";
                        GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");



                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                       int sr;
                    sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection();
                        var conn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
                        con.ConnectionString = conn;

                        String myquery = "select * from PaidCourseTable where PCOURSEID='" + Request.QueryString["id"]+"'";
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["srno"] = sr+1;
                        dr["PCOURSEID"] = ds.Tables[0].Rows[0]["PCOURSEID"].ToString();
                        dr["PCOURSE"] = ds.Tables[0].Rows[0]["PCOURSE"].ToString();
                        dr["AMOUNT"] = ds.Tables[0].Rows[0]["AMOUNT"].ToString();
                        int AMOUNT = Convert.ToInt16(ds.Tables[0].Rows[0]["AMOUNT"].ToString());
                         int TotalPrice = AMOUNT;
                        dr["TotalPrice"] = TotalPrice;



                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;

                        GridView1.FooterRow.Cells[3].Text = "Total Amount";
                        GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[3].Text = "Total Amount";
                        GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();

                    }

            }
        }
        }

             public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while(i<nrow)
        {
            gtotal =gtotal+ Convert.ToInt32(dt.Rows[i]["TotalPrice"].ToString());

            i = i + 1;
        }
        return gtotal;
    }

             protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
             {

             }

             protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
             {
                  DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];


        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            sr = Convert.ToInt32(dt.Rows[i]["srno"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text ;
            dtdata = sr.ToString();
            sr1 = Convert.ToInt32(qdata);

            if (sr == sr1)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();
                //Label1.Text = "Item Has Been Deleted From Shopping Cart";
                break;

            }
        }

        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["srno"] = i;
            dt.AcceptChanges();
        }

        Session["buyitems"] = dt;
        Response.Redirect("AddToCart.aspx");
    }

             protected void LinkButton1_Click(object sender, EventArgs e)
             {

                
             }
        public void paytm_payment()
             {


                 String merchantKey = "FxTPSZgXhhwsVXhd";
Dictionary<string, string> parameters = new Dictionary<string, string>();
parameters.Add("MID", "eLYJEc27730646912112");
parameters.Add("CHANNEL_ID", "WEB");
parameters.Add("INDUSTRY_TYPE_ID","Retail");
parameters.Add("WEBSITE", "WEBSTAGING");
parameters.Add("EMAIL", "sramesh.singh74@gmail.com");
parameters.Add("MOBILE_NO", "7054036620");
parameters.Add("CUST_ID", "123");
parameters.Add("ORDER_ID", "311");
parameters.Add("TXN_AMOUNT","234");
//parameters.Add("CALLBACK_URL", "url"); //This parameter is not mandatory. Use this to pass the callback url dynamically.

string checksum = CheckSum.generateCheckSum(merchantKey, parameters);
            string paytmURL = "https://securegw-stage.paytm.in/theia/processTransaction?orderid=" + "311";



                 string outputHTML = "<html>";
outputHTML += "<head>";
outputHTML += "<title>Merchant Check Out Page</title>";
outputHTML += "</head>";
outputHTML += "<body>";
outputHTML += "<center><h1>Please do not refresh this page...</h1></center>";
outputHTML += "<form method='post' action='" + paytmURL + "' name='f1'>";
outputHTML += "<table border='1'>";
outputHTML += "<tbody>";
foreach (string key in parameters.Keys)
{
    outputHTML += "<input type='hidden' name='" + key + "' value='" + parameters[key] + "'>";
}
outputHTML += "<input type='hidden' name='CHECKSUMHASH' value='" + checksum + "'>";
outputHTML += "</tbody>";
outputHTML += "</table>";
outputHTML += "<script type='text/javascript'>";
outputHTML += "document.f1.submit();";
outputHTML += "</script>";
outputHTML += "</form>";
outputHTML += "</body>";
outputHTML += "</html>";
Response.Write(outputHTML);


             }

        protected void pay_Click(object sender, EventArgs e)
        {
            paytm_payment();
        }



             }

        }
    