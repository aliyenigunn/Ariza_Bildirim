<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uyeticketekle.aspx.cs" Inherits="KullaniciGirisi.uyeticketekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top:70px;
         margin-left: 450px;
        }
        .auto-style2 {
            width: 109px;
        }
        .auto-style3 {
            width: 8px;
        }
        #TextArea1 {
            width: 400px;
            height: 131px;
        }
        .auto-style4 {
            font-weight:bold;
            width: 109px;
            height: 153px;
        }
        .auto-style5 {
            font-weight:bold;
            width: 8px;
            height: 153px;
        }
        .auto-style6 {
            height: 153px;
        }
        .auto-style7 {
            font-weight:bold;
            width: 109px;
            height: 58px;
        }
        .auto-style8 {
            font-weight:bold;
            width: 8px;
            height: 58px;
        }
        .auto-style9 {
            height: 58px;
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
            top: -7px;
            left: 538px;
            width: 164px;
            }
        .auto-style10 {
            font-weight:bold;
            width: 109px;
            height: 46px;
        }
        .auto-style11 {
            font-weight:bold;
            width: 8px;
            height: 46px;
        }
        .auto-style12 {
            height: 46px;
        }
        #areaaciklama {
            height: 120px;
            width: 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server"  style ="border-style:none; border-color: inherit; border-width: 0; width:1450px; height:650px;margin:0 ; padding:0; background-color:blueviolet; border-radius:20px">
    <div >
        <h1 style="text-align:center">Ticket Ekle</h1>
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">Yetkili Kişi</td>
                <td class="auto-style11">:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtyetkili" runat="server" Height="30px" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Departman</td>
                <td class="auto-style11">:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtdepart" runat="server" Height="30px" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Aciliyet Durumu</td>
                <td class="auto-style8">:</td>
                <td class="auto-style9">
                    <asp:DropDownList ID="ddldurum" runat="server" Height="30px" Width="400px">
                        <asp:ListItem>Seçiniz</asp:ListItem>
                        <asp:ListItem>Acil</asp:ListItem>
                        <asp:ListItem>Normal</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Açıklama</td>
                <td class="auto-style5">:</td>
                <td class="auto-style6">
                    <textarea id="areaaciklama" name="areaaciklama" runat="server" ></textarea></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
        <br />
        <br />
        <asp:Button ID="btnekle" runat="server" class="buton" Text="EKLE" OnClick="btnekle_Click" />
        <asp:Button ID="btntemizle" runat="server" class="buton" Text="TEMİZLE" />
        
        <div style="margin-left:690px;margin-right:690px;margin-top:40px;width:64px;height:64px">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/buton.png" OnClick="ImageButton1_Click" />
        </div>
    </div>
    </form>
</body>
</html>
