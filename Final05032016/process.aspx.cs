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

public partial class process : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    [WebMethod]
    public static string SendEmail(string subject,string name,string phone,string email,string message,string quantity)
    {
        string error = "0";
        StringBuilder sb = new StringBuilder();
        sb.Append("<table border='0' cellspacing='4' cellpadding='4' width='100%'>");
        try
        {
            sb.Append("<tr><td colspan='2'>Hey,<br /> You have receieved new Enquiry!<br /></td></tr>");

            sb.Append("<tr><td><strong>Name</strong></td><td>" + name + "</td></tr>");
            sb.Append("<tr><td><strong>Phone</strong></td><td>" + phone + "</td></tr>");
            sb.Append("<tr><td><strong>Email</strong></td><td>" + email + "</td></tr>");
            sb.Append("<tr><td><strong>Message</strong></td><td>" + message + "</td></tr>");
            sb.Append("<tr><td><strong>Quantity</strong></td><td>" + quantity + "</td></tr>");
            sb.Append("<tr><td colspan='2'></td></tr>");

            sb.Append("</table>");
            MailMessage m = new MailMessage();
            m.Body = sb.ToString();
            m.Subject ="Quote Enquiry for"+ subject;
            m.From = new MailAddress("no-reply@gnrexim.com");
            SmtpClient sp = new SmtpClient();
            sp.Credentials = new NetworkCredential("no-reply@gnrexim.com", "vinay123");
            m.IsBodyHtml = true;
           
            sp.Host = "relay-hosting.secureserver.net"; 
            sp.Port = 25;
            sp.EnableSsl = false;
            sp.UseDefaultCredentials = true;
            m.To.Add(new MailAddress("no-reply@gnrexim.com"));
            sp.Send(m);
            error = "Email Sent Successfully!";

            string mess = "Dear "+name+",<br /><br /> We have received your enquiry about the product. Someone will get back to you shortly.";
            mess += "<br /><br /> Thanks, <br /><br /><br />";
            mess += "GNR PHARMA PRIVATE LIMITED,<br /># 2-85/1/P-133, SY No. 412/AA,<br />Raganna guda, Hayathnagar (M), RR Dist,<br />Hyderabad – 501510, INDIA";

            m.To.Remove(new MailAddress("no-reply@gnrexim.com"));
            m.Body = mess;
            m.To.Add(new MailAddress(email));
            sp.Send(m);
        }
        catch
        {
            error = "An error occurred while sending email!";
        }


        return error;
    }
}