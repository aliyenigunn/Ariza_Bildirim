<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="firmakayit.aspx.cs" Inherits="KullaniciGirisi.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top:70px;
         margin-left: 450px;
        }
        .auto-style4 {
            font-weight:bold;
            width: 114px;
            height: 40px;
        }
        .auto-style5 {
            font-weight:bold;
            width: 9px;
            height: 40px;
        }
        .auto-style6 {
            height: 40px;
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
   color: #c7bcba;
  font-size: 20px;
  font-family: Times New Roman;
  font-weight: 900;
  font-style: normal;
  text-shadow: 0px -1px 0px rgba(0,0,0,0.4);
            top: 14px;
            left: 543px;
            width: 200px;
            height: 42px;
           
  
        }
            
        .auto-style10 {
           font-weight:bold;
             width: 114px;
            height: 37px;
        }
        .auto-style11 {
            font-weight:bold;
            width: 9px;
            height: 37px;
        }
        .auto-style12 {
            height: 37px;
        }
        .rdbold {
        font-weight:bold;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server" style ="border-style:none; border-color: inherit; border-width: 0; width:1450px; height:650px;margin:0 ; padding:0; background-color:blueviolet; border-radius:20px">
    <div>
        <h1 style="text-align:center">Kayıt Sayfası</h1>
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">Firma Kodu</td>
                <td class="auto-style11">:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtfirmakod" runat="server" Height="22px" Width="442px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Firma Adı</td>
                <td class="auto-style11">:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtfirmaad" runat="server" Height="22px" Width="442px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Vergi Daire No</td>
                <td class="auto-style11">:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtvergino" runat="server" Height="22px" Width="442px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Yetkili Kişi</td>
                <td class="auto-style11">:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtyetkili" runat="server" Height="22px" Width="442px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Telefon</td>
                <td class="auto-style11">:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txttelefon" runat="server" Height="22px" Width="442px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">E-Posta</td>
                <td class="auto-style11">:</td>
                <td style="margin-left: 40px" class="auto-style12">
                    <asp:TextBox ID="txtposta" runat="server" Height="22px" Width="442px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Adres</td>
                <td class="auto-style11">:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtadres" runat="server" Height="22px" Width="442px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Kayıt Türü</td>
                <td class="auto-style5">:</td>
                <td class="auto-style6">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="rdbold" Height="48px"  Width="171px" >
                        <asp:ListItem Selected="True">Firma</asp:ListItem>
                        <asp:ListItem>Bireysel</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnekle" runat="server" class="buton" OnClick="btnekle_Click" Text="EKLE" />
        <asp:Button ID="btnsil" runat="server" class="buton" OnClick="btnsil_Click" Text="TEMİZLE" />
    <div style="margin-left:690px;margin-right:690px;margin-top:90px;width:64px;height:64px">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="buton.png" OnClick="ImageButton1_Click" />
    </div>
    
    </form>
</body>
</html>
