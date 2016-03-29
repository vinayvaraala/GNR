using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Ortho_Rehab_Cat : System.Web.UI.Page
{
    string connection = ConfigurationManager.ConnectionStrings["gnrConnectionSring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        ltBack.Text = "<a href=\"ortho-rehab.aspx" + "\" class=\"btn btn-primary\">Back</a>";
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
        string sData = string.Empty;
        try
        {
            conn.Open();
            string query = "vinay.ORTHOREHAB";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@PK", Request.QueryString["id"]));
            cmd.CommandTimeout = 0;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lblDeviceName.Text = dr[0].ToString();
                sData = dr[5].ToString();
            }
            if (!string.IsNullOrEmpty(sData))
            {
                string[] specdata = sData.Split('~');
                for (int i = 0; i <= specdata.Length - 1; i++)
                {
                    sb.Append(". ");
                    sb.Append(specdata[i]);
                    sb.Append(Environment.NewLine);
                }
                txtspec.Text = sb.ToString();

            }
            else
                txtspec.Text = string.Empty;
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