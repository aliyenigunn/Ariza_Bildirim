<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logsayfasi.aspx.cs" Inherits="KullaniciGirisi.logsayfasi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>

    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style ="border-style:none; border-color: inherit; border-width: 0; width:1450px; height:670px;margin:0 ; padding:0; background-color:blueviolet; border-radius:20px">
    <div style="height: 546px">
    <div style="margin-left:370px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="false" AutoGenerateColumns="false" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="236px" Width="747px">
             
        <Columns>
        <asp:BoundField DataField="logid" HeaderText = "LogID"  />
        <asp:BoundField DataField="firmarefno" HeaderText="FirmaID"  />
        <asp:BoundField DataField="kullanicirefno" HeaderText="KullanıcıID" />
        <asp:BoundField DataField="kulad" HeaderText="Kullanıcı Adı" />
        <asp:BoundField DataField="giris" HeaderText="Giriş Tarihi" />
        <asp:BoundField DataField="cikis" HeaderText="Çıkış Tarihi" />
        <asp:BoundField DataField="ipadres" HeaderText="IP Adresi" />
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
    </div>
        <div style="margin-left:690px;margin-right:690px;margin-top:80px;width:64px;height:64px">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/buton.png" OnClick="ImageButton1_Click" />
        </div>
    </div>
    </form>
</body>
</html>
