<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="firmagoruntule.aspx.cs" Inherits="KullaniciGirisi.Uyegoruntule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .datagrid {
            margin-top:100px;
         margin-left:0px;
         margin-right:0px;
        }
        #form1 {
            height: 852px;
            width: 814px;
        }
        .buton {
        backface-visibility: hidden;
        position: relative;
        cursor: pointer;
        display: inline-block;
        white-space: nowrap;
        background: #3d3838;
        border-radius: 20px;
        border: 0px solid #000000;
        padding: 010px 010px 010px 010px;
        color: #fff;
        font-size: 13px;
        font-family: Times New Roman;
        font-weight:900;
        font-style: normal;
        text-shadow: 0px -1px 0px rgba(0,0,0,0.4);
        left: -6px;
        
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style ="border-style:none; border-color: inherit; border-width: 0; width:1600px; height:700px; margin:0; padding:0; background-color:blueviolet; border-radius:20px">
    <div>
    
    </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:denemeConnectionString %>" SelectCommand="SELECT [firmarefno], [firmakod], [firmaad], [vergino], [yetkili], [telefon], [eposta], [adres], [kayittur] FROM [firmatable]" DeleteCommand="delete from firmatable where firmarefno=@firmarefno
" UpdateCommand="Update tickettable set firmarefno=@firmarefno,kullanicirefno=@kullanicirefno,firmakod=@firmakod,yetkilikisi@yetkilikisi,departman=@departman,aciklama=@aciklama,aciliyet=@aciliyet where ticketid=@ticketid"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="firmarefno" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" >
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="firmarefno" HeaderText="FirmaID" InsertVisible="False" ReadOnly="True" SortExpression="firmarefno" />
                <asp:BoundField DataField="firmakod" HeaderText="Firma Kod" SortExpression="firmakod" />
                <asp:BoundField DataField="firmaad" HeaderText="Firma Adı" SortExpression="firmaad" />
                <asp:BoundField DataField="vergino" HeaderText="Vergi No" SortExpression="vergino" />
                <asp:BoundField DataField="yetkili" HeaderText="Yetkili" SortExpression="yetkili" />
                <asp:BoundField DataField="telefon" HeaderText="Telefon" SortExpression="telefon" />
                <asp:BoundField DataField="eposta" HeaderText="E-Posta" SortExpression="eposta" />
                <asp:BoundField DataField="adres" HeaderText="Adres" SortExpression="adres" />
                <asp:BoundField DataField="kayittur" HeaderText="Tür" SortExpression="kayittur" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" DeleteText="SİL" EditText="GÜNCELLE" />
                <asp:HyperLinkField DataNavigateUrlFields="firmarefno" DataNavigateUrlFormatString="adminuyekontrol.aspx?firmarefno={0}" Text="KULLANICILAR" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="#3D3838" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#3D3838" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#3D3838" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#3D3838" />
        </asp:GridView>
        <br />
        <div style="margin-left:690px;margin-right:690px;margin-top:90px;width:64px;height:64px">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="buton.png" OnClick="ImageButton1_Click"/>
        </div>
    </form>
</body>
</html>
