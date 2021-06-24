using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KullaniciGirisi
{
    public partial class uyeticketekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("uyesayfasi.aspx");
        }

        protected void btnekle_Click(object sender, EventArgs e)
        {
            DateTime tarih = DateTime.Now;
            SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=deneme;Integrated Security=True;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO tickettable (yetkilikisi,departman,aciklama,aciliyet,firmakod,kullanicirefno ,firmarefno,evethayir,tbaslama) values (@yetkilikisi,@departman,@aciklama,@aciliyet,@firmakod,@kullanicirefno,@firmarefno,@evethayir,@tbaslama)", conn);
            cmd.Parameters.AddWithValue("@yetkilikisi", txtyetkili.Text);
            cmd.Parameters.AddWithValue("@departman", txtdepart.Text);
            cmd.Parameters.AddWithValue("@aciklama", areaaciklama.Value);
            cmd.Parameters.AddWithValue("@aciliyet", ddldurum.SelectedValue);
            cmd.Parameters.AddWithValue("@firmakod",Session["firmakodu"].ToString());
            cmd.Parameters.AddWithValue("@kullanicirefno", Session["kullanicid"]);
            cmd.Parameters.AddWithValue("@firmarefno", Session["firmaid"]);
            cmd.Parameters.AddWithValue("@evethayir", "Tamamlanmadı");
            cmd.Parameters.AddWithValue("@tbaslama",tarih);

            
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("uyegirisi.aspx");
        }

       
    }
}