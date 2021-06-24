using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KullaniciGirisi
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnsil_Click(object sender, EventArgs e)
        {
            txtadres.Text = "";
            txtfirmaad.Text = "";
            txtfirmakod.Text = "";
            txtposta.Text = "";
            txttelefon.Text = "";
            txtvergino.Text = "";
            txtyetkili.Text = "";
        }
        protected void btnekle_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=deneme;Integrated Security=True;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO firmatable (firmakod,firmaad ,vergino, yetkili,telefon,eposta,adres,kayittur ) values (@firmakod,@firmaad,@vergino,@yetkili,@telefon,@eposta,@adres,@kayittur)", conn);
            cmd.Parameters.AddWithValue("@firmakod", txtfirmakod.Text);
            cmd.Parameters.AddWithValue("@firmaad", txtfirmaad.Text);
            cmd.Parameters.AddWithValue("@vergino", txtvergino.Text);
            cmd.Parameters.AddWithValue("@yetkili", txtyetkili.Text);
            cmd.Parameters.AddWithValue("@telefon", txttelefon.Text);
            cmd.Parameters.AddWithValue("@eposta", txtposta.Text);
            cmd.Parameters.AddWithValue("@adres", txtadres.Text);
            cmd.Parameters.AddWithValue("@kayittur", RadioButtonList1.SelectedValue);
            cmd.ExecuteNonQuery();

            cmd.CommandText = "insert into kullanicitable (firmarefno) values (IDENT_CURRENT('firmatable'))";
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            conn.Close();

            cmd.CommandText = "insert into tickettable(firmarefno,kullanicirefno) values (IDENT_CURRENT('firmatable'),IDENT_CURRENT('kullanicitable'))";
            cmd.Connection = conn;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Anasayfa.aspx");
        }
    }
}