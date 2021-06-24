<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminuyekontrol.aspx.cs" Inherits="KullaniciGirisi.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
         .datagrid {
            margin-top:0px;
         margin-left:400px;
         
        }
        .auto-style1 {
            margin-left:400px;
            width: 741px;
            height: 248px;
        }
        .auto-style5 {
            width: 123px;
            font-weight:bold;
            height: 30px;
        }
        .auto-style6 {
            font-weight:bold;
            width: 24px;
            height: 30px;
        }
        .auto-style7 {
            width: 451px;
            font-weight:bold;
            height: 30px;
        }
        .auto-style8 {
            width: 123px;
            font-weight:bold;
            height: 45px;
        }
        .auto-style9 {
            font-weight:bold;
            width: 24px;
            height: 45px;
        }
        .auto-style10 {
            width: 451px;
            font-weight:bold;
            height: 45px;
        }
        .auto-style11 {
            width: 123px;
            font-weight:bold;
            height: 44px;
        }
        .auto-style12 {
            font-weight:bold;
            width: 24px;
            height: 44px;
        }
        .auto-style13 {
            font-weight:bold;
            width: 451px;
            height: 44px;
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
            top: 20px;
            width: 164px;
            margin-left:630px;
            }
        .auto-style14 {
            width: 123px;
            font-weight: bold;
            height: 40px;
        }
        .auto-style15 {
            font-weight: bold;
            width: 24px;
            height: 40px;
        }
        .auto-style16 {
            font-weight: bold;
            width: 451px;
            height: 40px;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style ="border-style:none; border-color: inherit; border-width: 0; width:1450px; height:670px; margin:0; padding:0; background-color:blueviolet; border-radius:20px">
    <div style="height: 256px">
    <div class="datagrid" >
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="kullanicirefno" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="684px" >
            <Columns>
                <asp:BoundField DataField="kullanicirefno" HeaderText="KullanıcıID" InsertVisible="False" ReadOnly="True" SortExpression="kullanicirefno" />
                <asp:BoundField DataField="firmarefno" HeaderText="FirmaID" SortExpression="firmarefno" />
                <asp:BoundField DataField="kulad" HeaderText="Kullanıcı Adı" SortExpression="kulad" />
                <asp:BoundField DataField="sifre" HeaderText="Şifre" SortExpression="sifre" />
                <asp:BoundField DataField="eposta" HeaderText="E-Posta" SortExpression="eposta" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:denemeConnectionString %>" SelectCommand="SELECT [kullanicirefno], [firmarefno], [kulad], [sifre], [eposta] FROM [kullanicitable] WHERE ([firmarefno] = @firmarefno)">
            <SelectParameters>
                <asp:QueryStringParameter Name="firmarefno" QueryStringField="firmarefno" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </div>
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style14">Kullanıcı Adı</td>
                    <td class="auto-style15">:</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtkulad" runat="server" Height="30px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Şifre</td>
                    <td class="auto-style9">:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtsifre" runat="server" Height="30px" Width="400px" style="margin-left: 0px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">E-posta</td>
                    <td class="auto-style12">:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtposta" runat="server" Height="30px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Kullanıcı Türü</td>
                    <td class="auto-style6">:</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddluser" runat="server" Height="32px" Width="400px">
                            <asp:ListItem Selected="True">Seçiniz</asp:ListItem>
                            <asp:ListItem>user</asp:ListItem>
                            <asp:ListItem>admin</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                                
            </table>
                <asp:Button ID="btnekle" runat="server" class="buton" Text="EKLE" OnClick="btnekle_Click" />
        </div>
        <div style="margin-left:690px;margin-right:690px;margin-top:50px;width:64px;height:64px">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="buton.png" OnClick="ImageButton1_Click"/>
        </div>
    </form>
</body>
</html>
