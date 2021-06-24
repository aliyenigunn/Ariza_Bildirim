using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KullaniciGirisi
{
    public partial class Uyegoruntule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

       /*protected void btngoruntule_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=deneme;Integrated Security=True;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select kulad as [Kullanıcı Adı],sifre as [Şifre],eposta as [E-Posta] from kullanicitable",conn);
            SqlDataReader reader = cmd.ExecuteReader();
            try
            {
                
                GridView1.DataSource = reader;
                GridView1.DataBind();
                reader.Close();
            }
            catch
            {
                Response.Write("Bir hata oluştu");
            }

            SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;

        }*/

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            GridView1.DataBind();
           
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminpaneli.aspx");
        }

        

       

       

        
       

        

       

       

        
       

       
    }
}