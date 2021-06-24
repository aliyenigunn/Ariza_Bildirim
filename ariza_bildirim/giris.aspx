<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="KullaniciGirisi.giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-weight:bold;
            width: 98px;
        }
        .auto-style3 {
            font-weight:bold;
            width: 7px;
        }
    </style>
    <style type = "text/css" >
    .ortala {
         margin-top:40px;
         margin-left: 550px;
         text-align:left;
        
        }
        .logo {
        width:128px;
        height:128px;
        background-image:url(user.png);
        margin-left:660px;
        margin-top:50px;
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
        top: 9px;
        left: 0px;
        width: 164px;
        height: 42px;
        }
            
        
         </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style ="border-style:none; border-color: inherit; border-width: 0; width:1450px; height:650px;margin:0 ; padding:0; background-color:blueviolet; border-radius:20px">
        <h1>&nbsp;</h1>
        <h1 style="text-align:center">&nbsp;&nbsp; Kullanıcı Giriş Sayfası</h1>
        <div class="logo"  >

        </div>
        
    <table class="ortala">
            <tr>
                <td class="auto-style2">Kullanıcı Adı</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="txtkulad" runat="server" Width="220px" Height="24px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Şifre</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="txtsifre" runat="server" Width="220px" style="margin-left: 0px" Height="24px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Firma Kodu</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="txtfirmakod" runat="server" Width="220px" Height="24px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="btngiris" class="buton" runat="server" OnClick="btngiris_Click" Text="Giriş" />
                </td>
            </tr>
        </table>
        <div  style="margin-left:690px;margin-right:690px;margin-top:90px;width:64px;height:64px">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="buton.png" OnClick="ImageButton1_Click" />
        </div>
    </div>
        
        
    </form>
</body>
</html>
