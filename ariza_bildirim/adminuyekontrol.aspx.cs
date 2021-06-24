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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataView dv = new DataView();
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            dt = dv.ToTable();
            ds.Tables.Add(dt);
            foreach (DataRow dr in dv.Table.Rows)
            {
                Session["frmid"] = dt.Rows[0]["firmarefno"].ToString().Trim();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("firmagoruntule.aspx");
        }

        protected void btnekle_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=deneme;Integrated Security=True;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into kullanicitable (firmarefno,kulad,sifre,eposta,usertype) values (@firmaref,@kuladi,@sifre,@eposta,@usertip)",conn);
            cmd.Parameters.AddWithValue("@firmaref", Session["frmid"]);
            cmd.Parameters.AddWithValue("@kuladi", txtkulad.Text);
            cmd.Parameters.AddWithValue("@sifre", txtsifre.Text);
            cmd.Parameters.AddWithValue("@eposta", txtposta.Text);
            cmd.Parameters.AddWithValue("@usertip", ddluser.SelectedValue);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("adminuyekontrol.aspx");
        }
    }
}