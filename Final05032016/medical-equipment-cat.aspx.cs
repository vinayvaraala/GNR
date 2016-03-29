using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class medical_equipment_cat : System.Web.UI.Page
{
    string connection = ConfigurationManager.ConnectionStrings["gnrConnectionSring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            heading.InnerHtml = Request.QueryString["name"];
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
            string query = "MEDICALEQUIPMENTSUBCAT";

            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@PK", Request.QueryString["id"]));
            cmd.CommandTimeout = 0;
            dr = cmd.ExecuteReader();

            sb.Append("<div class=\"row\">");
            while (dr.Read())
            {

               /* sb.Append("<div class=\"media\"><div class=\"media-left\">");
                sb.Append("<a href='img/images/large/" + dr[1].ToString()+"' target='_blank'><img class=\"media-object\" data-src=\"holder.js/64x64\" alt=\"64x64\" style=\"width: 64px; height: 64px;\" src=\"img/images/thumbs//" + dr[1].ToString() + "\" data-holder-rendered=\"true\"></a>");
                sb.Append("</div><a href=\"medical-equipment-subcat.aspx?id="+dr[2].ToString()+"&name="+dr[0].ToString()+"\"><div class=\"media-body\"><h4 class=\"media-heading\">"+dr[0].ToString()+"</h4></div></a></div>");
                */

                string img = (dr[1].ToString() == "NoImage" ? "no-image.png" : dr[1].ToString());
                string description = (dr[3].ToString() == "" ? "<div class='divide40'></div>" : dr[3].ToString());
                sb.Append("<div class=\"col-sm-4 margin30\" style='Height:300px'><div class=\"service-box\"><img  width='100%' style='height:200px;' src='img/images/thumbs/" + img + "' alt=\"\"></a>");
                sb.Append("<div class=\"caption\"><h4 style='text-align:center;word-wrap: break-word; Height:25px;'>" + dr[0].ToString() + "</h4><p><a href=\"medical-equipment-subcat.aspx?id=" + dr[2].ToString() + "&name=" + dr[0].ToString() + "&pk=" + Request.QueryString["id"] + "&pkname=" + Request.QueryString["name"] + "\" class=\"btn btn-theme-bg btn-lg\" role=\"button\"'>More Details</a></p>");
                sb.Append("</div></div></div>");
            }
            sb.Append("</div>");
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