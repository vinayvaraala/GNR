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

public partial class ortho_rehab : System.Web.UI.Page
{
    string connection = ConfigurationManager.ConnectionStrings["gnrConnectionSring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadOrtho();
        }
    }

    protected void LoadOrtho()
    {
        SqlConnection conn = new SqlConnection(connection);
        SqlDataReader dr = null;
        StringBuilder sb = new StringBuilder();
        try
        {
            conn.Open();
            string query = "vinay.ORTHOREHAB";

            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@PK",null));
            cmd.CommandTimeout = 0;
            dr = cmd.ExecuteReader();
            sb.Append("<ul class=\"list-group list\">");
            while (dr.Read())
            {

                string img = (dr[2].ToString() == "NoImage" ? "no-image.png" : dr[2].ToString());
                sb.Append("<div class=\"col-sm-4 margin30\" style='Height:450px'><div class=\"service-box\"><img  width='100%' style='height:200px;' src='img/images/thumbs/" + img + "' alt=\"\"></a>");
                sb.Append("<div class=\"caption\"><h4 style='text-align:center;word-wrap: break-word; Height:25px;'>" + dr[0].ToString() + "</h4><div class='divide20'></div><p style='text-align:left;Margin-left:20px;Height:20px; Margin-top:5px;'>ItemCode: " + dr[1].ToString() + "</p><p style='text-align:left;Margin-left:20px;Height:20px; Margin-top:5px;'>Size: " + dr[3].ToString() + "</p><p><a href=\"Ortho-Rehab-Cat.aspx?id=" + dr[4].ToString() + "\" class=\"btn btn-theme-bg btn-lg\" role=\"button\"'>More Details</a></p>");
                sb.Append("</div></div></div>");

            }
            sb.Append("</ul>");
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