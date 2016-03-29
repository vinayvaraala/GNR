using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

public partial class Medical_Equip_Specifications : System.Web.UI.Page
{
    string connection = "Data Source=182.50.133.109;Initial Catalog=GNREXIM;Timeout=600;Persist Security Info=True;User ID=vinay;Password=vinay123";
    protected void Page_Load(object sender, EventArgs e)
    {
        ltBack.Text = " <a href=\"medical-equipment-subcat.aspx?id=" + Request.QueryString["id"] + "&name=" + Request.QueryString["Name"] + "&pk=" + Request.QueryString["pk"] + "&pkname=" + Request.QueryString["pkname"] + "\" class=\"btn btn-theme-bg\">Back</a>";
        btnquote.Attributes.Add("onclick", "PopulateValue('" + Request.QueryString["Name"] + "');return false;");
        string img=Request.QueryString["Image"]; 
        deviceImage.Src = "img/Images/Thumbs/"+img ;
        lblDeviceName.Text = Request.QueryString["Name"];
        txtspec.Focus();
        LoadMenuModules();
    }
    protected void LoadMenuModules()
    {
        SqlConnection conn = new SqlConnection(connection);
        SqlDataReader dr = null;
        StringBuilder sb = new StringBuilder();
        string sData=string.Empty;
        try
        {
            conn.Open();
            string query = "vinay.MEDICALEQUIPMENTSUBCATSPEC";

            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@PK", Request.QueryString["id"])); //
            cmd.CommandTimeout = 0;
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                sData=dr[0].ToString();
            }
            if (!string.IsNullOrEmpty(sData))
            {
                string[] specdata = sData.Split('~');
                for (int i = 0; i <= specdata.Length - 1; i++)
                {
                    //sb.Append(". ");
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