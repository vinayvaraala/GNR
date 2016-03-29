using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    string connection = ConfigurationManager.ConnectionStrings["gnrConnectionSring"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Subscribe()
    {
        SqlConnection conn = new SqlConnection(connection);
       // string spName = ;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "INSERT_NEWSLETTERLIST";
        cmd.Connection = conn;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@EMAIL", SqlDbType.VarChar).Value = txtEmailSubcribe.Text;
        conn.Open();
        cmd.ExecuteNonQuery();

    }
    protected void btnSubscribe_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtEmailSubcribe.Text))
        {
            Subscribe();
            Response.Write("<script>alert('Subscribed successfully');</script>");
            txtEmailSubcribe.Text = string.Empty;
        }
        else
        {
           // ClientScript.RegisterStartupScript(this.GetType(), "UserMsg", "<script>alert('Please enter valid mail...');if(alert){ window.location='contactus.aspx';}</script>");
           // Response.Write("<script>alert('Please enter valid mail id');</script>");
        }

    }
    protected void btnQuickCotact_Click(object sender, EventArgs e)
    {
       if(!string.IsNullOrEmpty(txtQuickName.Value)&& !string.IsNullOrEmpty(txtQuickEmail.Value) && !string.IsNullOrEmpty(quickmessage.Value))
       {
           // Recipient e-mail address.
           string From = "info@gnrexim.com";
           // Sender e-mail address.
           string To = "info@gnrexim.com";
           System.Net.Mail.MailMessage Msg = new System.Net.Mail.MailMessage(From, To);
           Msg.Subject = "Enquiry";
           Msg.Body = "Name : " + txtQuickName.Value + "\n" + "User Email : " + txtQuickEmail.Value + "\n" + "Query : " + quickmessage.Value;
           // your remote SMTP server IP.
           System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient(); //your ip address
           client.Credentials = new System.Net.NetworkCredential("info@gnrexim.com", "info123");
           client.Host = "relay-hosting.secureserver.net";
           client.Port = 25;
           client.UseDefaultCredentials = true;
           client.EnableSsl = false;
           client.Send(Msg);
           Msg = null;
           Response.Write("<script>alert('Thanks for contacting us. We will contact shortly');</script>");
           txtQuickName.Value = "";
           txtQuickEmail.Value = "";
           quickmessage.Value = "";
       }
       else
       {
           

       }
    }
}
