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

public partial class medical_equipment : System.Web.UI.Page
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
            string query = "MEDICALEQUIPMENT";

            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandTimeout = 0;
            dr = cmd.ExecuteReader();
            sb.Append("<ul class=\"list-group list\">");
            while (dr.Read())
            {

                sb.Append("<li class=\"list-group-item service-box\" style='margin-bottom: 0px;'><div class='row' style='text-align: left;'><div class='col-sm-10'><a href='medical-equipment-cat.aspx?id=" + dr[1].ToString() + "&name=" + dr[0].ToString() + "'>" + dr[0].ToString() + "</a></div></div></li>");

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