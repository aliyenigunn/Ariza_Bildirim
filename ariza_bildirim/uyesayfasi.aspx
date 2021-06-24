<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uyesayfasi.aspx.cs" Inherits="KullaniciGirisi.uyegirisi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <style type="text/css">
        .datagrid {
            margin-top:100px;
         margin-left:0px;
         margin-right:0px;
        }
        .buton {
        backface-visibility: hidden;
        position: relative;
        cursor: pointer;
        display: inline-block;
        white-space: nowrap;
        background: #3d3838;
        border-radius: 020px;
        border: 0px solid #000000;
        padding: 010px 010px 010px 010px;
        color: #fff;
        font-size: 20px;
        font-family: Times New Roman;
        font-weight:900;
        font-style: normal;
        text-shadow: 0px -1px 0px rgba(0,0,0,0.4);
        top: 53px;
        left: 4px;
        width: 350px;
        height: 50px;
        }
       .cikis {
       margin-left:850px;
       }
       
     </style>
</head>
<body>
    <form id="form1" runat="server" style ="border-style:none; border-color: inherit; border-width: 0; width:1450px; height:650px;margin:0 ; padding:0; background-color:blueviolet; border-radius:20px">
    <div style="height: 550px">
        <div style="margin-top:10px ; margin-left:550px">
            <div  style=" border-radius:20px; text-align:center; width: 350px; height: 32px; font-family: 'Times New Roman'; font-size: 20px; font-weight: lighter;   color: #F0F0F0; text-align: center; background-color: #3D3838; ">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:ImageButton ID="ImageButton1" runat="server" class="cikis" ImageUrl="cancel.png" OnClick="ImageButton1_Click" />
            </div>
        <asp:Button ID="btnekle" runat="server"  class="buton" Text="BİLET EKLE" OnClick="btnekle_Click1"  />
        </div>
        <div style="margin-left:130px">
        <asp:GridView ID="GridView1" runat="server" class="datagrid" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="162px" Width="1200px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="2px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="#3D3838" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#3D3838" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>   
    </div>
    </form>
</body>
</html>
