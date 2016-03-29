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

public partial class medical_equipment_subcat : System.Web.UI.Page
{
    string connection = ConfigurationManager.ConnectionStrings["gnrConnectionSring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ltBack.Text = " <a href=\"medical-equipment-cat.aspx?id=" + Request.QueryString["pk"] + "&name=" + Request.QueryString["pkname"] + "\" class=\"btn btn-primary\">Back</a>";
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
            string query = "MEDICALEQUIPMENTSUBCATLIST";

            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@PK", Request.QueryString["id"]));
            cmd.CommandTimeout = 0;
            dr = cmd.ExecuteReader();

            sb.Append("<div class=\"row\">");
            while (dr.Read())
            { 
                //sb.Append("<li class=\"list-group-item\"><div class='row'><div class='col-lg-8'><div class='name'>" + dr[1].ToString() + "</div></div><div class='col-lg-4'>
                //<button class='btn btn-success pull-right' type='button' onclick='PopulateValue(\"" + dr[1].ToString() + "\");'>Get Quote</button></div></div></li>");

                /*sb.Append("<div class=\"media\"><div class=\"media-left\">");
                sb.Append("<a href='img/images/large/" + dr[1].ToString() + "' target='_blank'><img class=\"media-object\" data-src=\"holder.js/64x64\" alt=\"64x64\" style=\"width: 64px; height: 64px;\" src=\"img/images/thumbs//" + dr[1].ToString() + "\" data-holder-rendered=\"true\"></a>");
                sb.Append("</div><a href=\"#\"><div class=\"media-body\"><h4 class=\"media-heading\">" + dr[0].ToString() + "</h4><button class='btn btn-success pull-right' type='button' onclick='PopulateValue(\"" + dr[0].ToString() + "\");'>Get Quote</button></div></a></div>");
                */



                string img = (dr[1].ToString() == "NoImage" ? "no-image.png" : dr[1].ToString());
                sb.Append("<div class=\"col-sm-4 margin30\" style='Height:400px'><div class=\"service-box\"><a href='Medical-Equip-Specifications.aspx?id=" + Request.QueryString["id"] + " &Name="+dr[0].ToString()+ "&pk=" + Request.QueryString["pk"] + "&pkname="+Request.QueryString["pkname"]+ " &Image=" + img + "' title='Click for Specifications'><img  width='100%' style='height:200px' src='img/images/thumbs/" + img + "' alt=\"\"></a>");
                sb.Append("<div class=\"caption\"><h4 style='text-align:center;word-wrap: break-word; Height:25px;'>" + dr[0].ToString() + "</h4></br><p style='text-align:left;Margin-left:20px;Height:20px; Margin-top:5px;'>Size: " + dr[3].ToString() + "</p><p><a href=\"#\" class=\"btn btn-theme-bg btn-lg\" role=\"button\" onclick='PopulateValue(\"" + dr[0].ToString() + "\");'>Get Quote</a></p>");
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