using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KullaniciGirisi
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=deneme;Integrated Security=True;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select ticketid as [BiletID],firmakod as [Firma Kodu], yetkilikisi as [Yetkili Kişi],departman as[Departman],aciklama as [Açıklama],aciliyet as [Süre Durumu],evethayir as [Tamamlanma Durumu] from tickettable where  evethayir='Tamamlanmadı' order by aciliyet ASC", conn);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
            conn.Close();
        }

        protected void btnuyegor_Click(object sender, EventArgs e)
        {
            Response.Redirect("firmagoruntule.aspx");
        }

        protected void btnticketgor0_Click(object sender, EventArgs e)
        {
            Response.Redirect("ticketgoruntule.aspx");
        }

        protected void btnloggor_Click(object sender, EventArgs e)
        {
            Response.Redirect("logsayfasi.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("giris.aspx");
        }

        

       
    }
}