using System;
using System.Data;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace KullaniciGirisi
{
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
               
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Anasayfa.aspx");
        }

        

        protected void btngiris_Click(object sender, EventArgs e)
        {
            Session["firmakodu"] = txtfirmakod.Text;
            Session["kulad"] = txtkulad.Text;
            Session["sifre"] = txtsifre.Text;
           
            SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=deneme;Integrated Security=True;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from kullanicitable inner join firmatable on kullanicitable.firmarefno=firmatable.firmarefno where kulad='" + txtkulad.Text + "' and sifre='" + txtsifre.Text + "' and firmakod='"+txtfirmakod.Text+"' ", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["kullanicid"]=dt.Rows[0]["kullanicirefno"].ToString().Trim();
                Session["firmaid"] = dt.Rows[0]["firmarefno"].ToString().Trim();
                Session["utype"]=dt.Rows[0]["usertype"].ToString().Trim();
                string utype = dt.Rows[0]["usertype"].ToString().Trim();
                if (utype == "user" || utype == "admin")
                {
                    DateTime tarih = DateTime.Now;
                    Session["giris"] = tarih;
                   /* SqlCommand cmd1 = new SqlCommand("Insert into logtable (firmarefno,kullanicirefno,giris,cikis,ipadres,kulad) values (@firmaref,@kullaniciref,@giris,@cikis,@ipadres,@kulad)", conn);
                    cmd1.Parameters.AddWithValue("@firmaref", Session["firmaid"]);
                    cmd1.Parameters.AddWithValue("@kullaniciref", Session["kullanicid"]);
                    cmd1.Parameters.AddWithValue("@giris",tarih.ToString() );
                    cmd1.Parameters.AddWithValue("@cikis","Çıkış Yapılmadı");
                    cmd1.Parameters.AddWithValue("@ipadres", ipadresi);
                    cmd1.Parameters.AddWithValue("@kulad",Session["kulad"]);
                    cmd1.ExecuteNonQuery();
                    conn.Close();*/
                    Response.Redirect("uyesayfasi.aspx");
                    
                }

                if (utype == "superadmin")
                {
                    Response.Redirect("adminpaneli.aspx");
                }
            }
            else { }
        }
    }
}