<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="KullaniciGirisi.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
           margin-top:150px;
         margin-left: auto;
        margin-right: auto;
        }
        .auto-style2 {
             font-weight:bold;
             height: 50px;
        }
        .auto-style3 {
            font-weight:bold;
            height: 50px;
            width: 331px;
        }
        .logo {
           height:128px;
           width:128px;
           background-image:url(logo.png);
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
         font-size: 15px;
         font-family: Arial;
         font-weight: 700;
         font-style: normal;
         text-shadow: 0px -1px 0px rgba(0,0,0,0.4);
         top: 9px;
         left: 0px;
         width: 173px;
         height: 42px;
        }
            
    </style>
</head>
<body >
    <form id="form1" runat="server" style ="border-style:none; border-color: inherit; border-width: 0; width:1450px; height:650px;margin:0 ; padding:0; background-color:blueviolet; border-radius:20px">
    
        <div >

            <h1 style="text-align:center;color:#000000">SİSTEME GİRİŞ EKRANI</h1>
            <div class="logo" style="margin-top:100px;margin-left:660px">
               
            </div>
    <table class="auto-style1">
                <tr>
                    <td ><asp:Button ID="btnuyegiris" runat="server" class="buton" Height="35px" OnClick="btnuyegiris_Click" Text="ÜYE GİRİŞİ" Width="200px" />
                    </td>
                    <td ><asp:Button ID="btnkayit" runat="server" class="buton" Height="35px" OnClick="btnkayit_Click" Text="KAYIT OL" Width="200px" />
                    </td>
                </tr>
            </table>
    </div >  
    </form>
</body>
</html>
