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

public partial class formulations : System.Web.UI.Page
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
            string query = "FORMULATIONS";

            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandTimeout = 0;
            dr = cmd.ExecuteReader();
            //sb.Append("<ul class=\"list-group list\">");
            sb.Append("<div class=\"row\">");
            while (dr.Read())
            {

                string img = (dr[1].ToString() == "NoImage" ? "no-image.png" : dr[1].ToString());
                sb.Append("<div class=\"col-sm-4 margin30\"  style='Height:400px'><div class=\"service-box\"><a href='img/images/large" + img + "' target='_blank'><img  width='100%' style='height:200px;' src='img/images/thumbs/" + img + "' alt=\"\"></a>");
                sb.Append("<div class=\"caption\"><h4 style='text-align:centre;'>" + dr[0].ToString() + "</h4><p>Size: " + dr[2].ToString() + "</p><p><a href=\"#\" class=\"btn btn-theme-bg btn-lg\" role=\"button\" onclick='PopulateValue(\"" + dr[0].ToString() + "\");'>Get Quote</a></p>");
                sb.Append("</div></div></div>");

                /* sb.Append("<li class=\"list-group-item\"><div class='row'><div class='col-sm-10'>" + dr[0].ToString() + "</div>");
                 sb.Append("<div class='col-sm-2'><a href='img/images/large" + dr[1].ToString() + "' target='_blank'>");
                 sb.Append("<img width='125' height='125' class='img-thumbnail' src='img/images/thumbs/" + dr[1].ToString() + "' /></a><br /> <button class='btn btn-success' style='margin-left:15px;margin-top:5px;' type='button' onclick='PopulateValue(\"" + dr[0].ToString() + "\");'>Get Quote</button></div></div></li>");
                 * */

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