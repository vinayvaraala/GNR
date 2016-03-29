using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    protected void SendMail()
    {
        // Recipient e-mail address.
        string From = "info@gnrexim.com";
        // Sender e-mail address.
        string To = "info@gnrexim.com";
        System.Net.Mail.MailMessage Msg = new System.Net.Mail.MailMessage(From,To);
        Msg.Subject = "Enquiry";
        Msg.Body = "Name : " + txtName.Text + "\n" + "Mobile : " + txtPhoneNumber.Text + "\n" + "User Email : " +txtEmail.Text+ "\n" + "Query : " + txtMsg.Text;
        // your remote SMTP server IP.
        System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient(); //your ip address
        client.Credentials = new System.Net.NetworkCredential("info@gnrexim.com", "info123");
        client.Host = "relay-hosting.secureserver.net";
        client.Port = 25;
        client.UseDefaultCredentials = true;
        client.EnableSsl = false;
        client.Send(Msg);
        Msg = null;
        ClientScript.RegisterStartupScript(this.GetType(),"UserMsg", "<script>alert('Mail sent thank you...');if(alert){ window.location='contact.aspx';}</script>");
        txtEmail.Text = "";
        txtName.Text = "";
        txtPhoneNumber.Text = "";
        txtMsg.Text = "";
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            SendMail();
        }
         catch (Exception ex)
        {
            txtEmail.Text = "";
            txtName.Text = "";
            txtPhoneNumber.Text = "";
            txtMsg.Text = "";
            ClientScript.RegisterStartupScript(this.GetType(), "UserMsg", "<script>alert('Mail not sent ');if(alert){ window.location='contact.aspx';}</script>"); 
                //("UserMsg", "<script>alert('Mail not sent ');if(alert){ window.location='page.aspx';}</script>");
        }
       
    }
}