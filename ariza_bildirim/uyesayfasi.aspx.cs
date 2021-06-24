using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;

namespace KullaniciGirisi
{
    public partial class uyegirisi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["kulad"]!=null)
            {
                Label1.Text = "Hoşgeldin    " +" ' "+ Session["kulad"].ToString()+" ' ";
            }
            if(Session["utype"].ToString()=="user"){
                SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=deneme;Integrated Security=True;");
                conn.Open();
            
                SqlCommand cmd = new SqlCommand("select b.ticketid as[Bilet Numarası],f.firmarefno as[Firma ID],f.firmakod as [Firma Kodu],b.departman as [Departman], b.yetkilikisi as [Yetkili Kişi],b.aciklama as [Açıklama],b.evethayir as [Durum] from firmatable f , kullanicitable k , tickettable b where b.firmarefno=f.firmarefno and b.kullanicirefno=k.kullanicirefno and b.firmakod='" + Session["firmakodu"] + "' and k.kulad='" + Session["kulad"] + "' and k.usertype='user' ", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                dr.Close();
                conn.Close();   
            } 
            if(Session["utype"].ToString()=="admin")
            {
                SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=deneme;Integrated Security=True;");
                conn.Open();

                SqlCommand cmd = new SqlCommand("select b.ticketid as[Bilet Numarası],f.firmarefno as[Firma ID],f.firmakod as [Firma Kodu],b.departman as [Departman], b.yetkilikisi as [Yetkili Kişi],b.aciklama as [Açıklama],b.evethayir as [Durum] from firmatable f , kullanicitable k , tickettable b where b.firmarefno=f.firmarefno and b.firmakod='" + Session["firmakodu"] + "' and k.kulad='" + Session["kulad"] + "' and k.usertype='admin' ", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                dr.Close();
                conn.Close();   
            }
        }
        protected void btnekle_Click1(object sender, EventArgs e)
        {
            Response.Redirect("uyeticketekle.aspx");
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
            DateTime tarih = DateTime.Now;
            SqlConnection conn1 = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=deneme;Integrated Security=True;");
            conn1.Open();
           // SqlCommand cmd1 = new SqlCommand("update logtable set cikis='"+tarih+"' from kullanicitable inner join logtable on kullanicitable.kullanicirefno=logtable.kullanicirefno ",conn1);
            String pcadi = Dns.GetHostName();
            String ipadresi = Dns.GetHostByName(pcadi).AddressList[0].ToString();
            SqlCommand cmd1 = new SqlCommand("Insert into logtable (firmarefno,kullanicirefno,giris,cikis,ipadres,kulad) values (@firmaref,@kullaniciref,@giris,@cikis,@ipadres,@kulad)", conn1);
            cmd1.Parameters.AddWithValue("@firmaref", Session["firmaid"]);
            cmd1.Parameters.AddWithValue("@kullaniciref", Session["kullanicid"]);
            cmd1.Parameters.AddWithValue("@giris", Session["giris"].ToString());
            cmd1.Parameters.AddWithValue("@cikis", tarih.ToString());
            cmd1.Parameters.AddWithValue("@ipadres", ipadresi);
            cmd1.Parameters.AddWithValue("@kulad", Session["kulad"]);
            cmd1.ExecuteNonQuery();
            conn1.Close();
            Response.Redirect("giris.aspx");
            
            
        }
        

        

        
    }
}