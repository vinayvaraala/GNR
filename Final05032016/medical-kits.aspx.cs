using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;

public partial class medical_kits : System.Web.UI.Page
{
    string connection = ConfigurationManager.ConnectionStrings["gnrConnectionSring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadMenuModules();
        }

    }
    protected void LoadMenuModules()
    {
        SqlConnection conn = new SqlConnection(connection);
        SqlDataReader dr = null;
        StringBuilder sb = new StringBuilder();
        try
        {
            conn.Open();
            string query = "MEDICALKITS";

            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandTimeout = 0;
            dr = cmd.ExecuteReader();
            //sb.Append("<ul class=\"list-group list\">");
            sb.Append("<div class=\"row\">");
            while (dr.Read())
            {

                string img = (dr[1].ToString() == "NoImage" ? "no-image.png" : dr[1].ToString());
                string description = (dr[3].ToString() == "" ? "<div class='divide40'></div>" : dr[3].ToString());
                sb.Append("<div class=\"col-sm-4 margin30\" style='Height:450px'><div class=\"service-box\"><img  width='100%' height='200' style='height:200px;' src='img/images/thumbs//" + img + "' alt=\"\"></a>");
                sb.Append("<div class=\"caption\"><h4 style='text-align:center;word-wrap: break-word; width: 300px;Height:25px;'>" + dr[0].ToString() + "</h4><p>" + description + "</p><p style='Height:20px; Margin-top:5px;'>Size: " + dr[2].ToString() + "</p><p><a href=\"#\" class=\"btn btn-theme-bg btn-lg\" role=\"button\" onclick='PopulateValue(\"" + dr[0].ToString() + "\");'>Get Quote</a></p>");
                sb.Append("</div></div></div>");

              
            }
            sb.Append("</div>");
            //sb.Append("</ul>");
            ltProducts.Text = sb.ToString();
        }
        catch
        {

        }
        finally
        {
            if (conn != null)
            {
                conn.Close();
            } if (dr != null)
            {
                dr.Close();
            }

        }
    }
    
}