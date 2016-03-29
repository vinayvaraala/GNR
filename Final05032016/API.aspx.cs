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
using System.Web.UI.HtmlControls;
public partial class API : System.Web.UI.Page
{
    string connection = ConfigurationManager.ConnectionStrings["gnrConnectionSring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    
    {
        this.grdProducts.Attributes.Add("bordercolor", "#32c5d2");
        if (!Page.IsPostBack || Request["__EVENTARGUMENT"] == "searchproduct")
        {
            LoadAPI();
        }
    }

   protected void LoadAPI()
    {
        SqlConnection conn = new SqlConnection(connection);
        SqlDataReader dr = null;
        StringBuilder sb = new StringBuilder();
        try
        {
            conn.Open();
            string query = "API";
            if(!IsPostBack)
                ViewState["ProdctName"] = txtProduct.Text;
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandTimeout = 0;
            dr = cmd.ExecuteReader();
            sb.Append("<ul class=\"list-group list\">");
            List<Product> lstData = new List<Product>();
            Product prod = null;
            if (Session["Data"] == null || Convert.ToString(ViewState["ProdctName"]) != txtProduct.Text)
            { 
            while (dr.Read())
            {
                prod = new Product();
                prod.ProductName = dr[1].ToString();
                sb.Append("<li class=\"list-group-item  service-box\" style='margin-bottom: 0px;'><div class='row' style='text-align: left;'><div class='col-lg-10'><div class='name'>" + dr[1].ToString() + "</div></div><div width='100'></div><div class='col-lg-2'><button  class='btn btn-theme-bg' type='button' style='float: right; vertical-align:top; padding: 10px 10px 10px 10px; margin-bottom: 2px;' onclick='PopulateValue(\"" + dr[1].ToString() + "\");'>Get Quote</button></div></div></li>");
                lstData.Add(prod);
            }
            if (txtProduct.Text != "")
                lstData = lstData.Where(k => k.ProductName.Contains(txtProduct.Text)).ToList();
            ViewState["ProdctName"] = txtProduct.Text;
            Session["Data"] = lstData;
            }
            sb.Append("</ul>");
            ltProducts.Text = sb.ToString();
            grdProducts.DataSource = Session["Data"] as List<Product>;
            grdProducts.DataBind();

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

   public class Product
   {
       public string ProductName { get; set; }
   }
   protected void grdProducts_PageIndexChanging(object sender, GridViewPageEventArgs e)
   {
       grdProducts.PageIndex = e.NewPageIndex;
       LoadAPI();
   }
   protected void txtProduct_TextChanged(object sender, EventArgs e)
   {
       LoadAPI();
   }
   protected void btnSearch_Click(object sender, EventArgs e)
   {
       LoadAPI();
   }
}