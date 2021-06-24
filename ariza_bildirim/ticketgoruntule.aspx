<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ticketgoruntule.aspx.cs" Inherits="KullaniciGirisi.ticketgoruntule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .geri {
        margin-top:600px;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style ="border-style:none; border-color: inherit; border-width: 0; width:1450px; height:670px; margin:0; padding:0; background-color:blueviolet; border-radius:20px">
    <div>
     <div style="margin-left:690px;margin-right:690px;width:64px;height:64px">
            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="geri" ImageUrl="buton.png" OnClick="ImageButton1_Click"/>
        </div>
    </div>
    </form>
</body>
</html>
