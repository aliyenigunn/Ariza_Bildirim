<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminpaneli.aspx.cs" Inherits="KullaniciGirisi._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 474px;
            height: 77px;
            margin-left:250px;
        }
        .auto-style6 {
            width: 149px;
        }
        .auto-style7 {
            width: 122px;
        }
        .auto-style8 {
            width: 131px;
        }
        .datagrid {
            margin-top:100px;
         margin-left:22px;
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
            font-weight: 900;
            font-style: normal;
            text-shadow: 0px -1px 0px rgba(0,0,0,0.4);
            top: 53px;
            left: 4px;
            width: 300px;
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style ="border-style:none; border-color: inherit; border-width: 0; width:1450px; height:670px;margin:0 ; padding:0; background-color:blueviolet; border-radius:20px">
    <div style="margin-left:1400px">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/cancel.png" OnClick="ImageButton1_Click" />
    </div>
        <div>
    <h1 style="text-align:center">Admin Sayfası</h1>
    </div>
       
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="btnuyegor" runat="server" class="buton" Text="Firma Görüntüle"  OnClick="btnuyegor_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="btnticketgor0" runat="server" class="buton" Text="Ticket Görüntüle"  OnClick="btnticketgor0_Click" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="btnloggor" runat="server" class="buton" Text="Log Görüntüle"  OnClick="btnloggor_Click" />
                </td>
            </tr>
        </table>
        <p>
            <asp:GridView ID="GridView1" runat="server" class="datagrid" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="200px" Width="1400px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="2px">
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
        </p>
       
    </form>
</body>
</html>
