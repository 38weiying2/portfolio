<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prog7.aspx.cs" Inherits="prog7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style>
            body{
        background-image:url('image/dakota-corbin-243775-unsplash4.jpg');
        background-position:top;
        background-repeat:no-repeat;
        background-attachment:scroll;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: 微軟正黑體; font-weight: 600; height:1260px; position:absolute; left:50px; right:50px">
            <font size="6">
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="登出" />
            </font>
            <br />
            <center><font size="6">全國失物招領中心</font></center><br/>
            <br />
                <div style="text-align:center"><asp:Menu ID="Menu1" runat="server" BackColor="Black" DynamicHorizontalOffset="2" Font-Names="微軟正黑體" Font-Size="Large" ForeColor="White" Height="48px" Orientation="Horizontal" RenderingMode="Table" StaticSubMenuIndent="10px" Width="100%" Font-Bold="True">
                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="White" />
                <DynamicSelectedStyle BackColor="#666666" ForeColor="Black" />
                <DynamicItemTemplate>
                    <%# Eval("Text") %>
                </DynamicItemTemplate>
                <Items>
                    <asp:MenuItem NavigateUrl="prog1.aspx" Text="登入/註冊" Value="登入/註冊"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="prog6.aspx" Text="拾得案件" Value="拾得案件"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="prog3.aspx" Text="遺失案件" Value="遺失案件"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="prog2.aspx" Text="我發現了" Value="我發現了"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="prog9.aspx" Text="幫我尋找" Value="幫我尋找"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="prog7.aspx" Text="案件查尋" Value="案件查尋"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="prog5.aspx" Text="使用說明" Value="使用說明"></asp:MenuItem>
<asp:MenuItem NavigateUrl="prog11.aspx" Text="個人資訊" Value="個人資訊"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#999999" ForeColor="Black" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#507CD1" />
            </asp:Menu>
                    </div>
                    <br /><br /><br />
                  <center>請選擇您的身分來進入案件:</center>
                <br /><br />
                <center><asp:Button ID="Button1" runat="server" Height="82px" Text="拾獲者" Width="140px" BackColor="#C5C5E2" BorderColor="#666666" BorderStyle="Dotted" Font-Bold="True" Font-Size="X-Large"  PostBackUrl="prog2.aspx" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="82px" Text="失主" Width="140px" BackColor="#C5C5E2" BorderColor="#666666" BorderStyle="Dotted" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" ForeColor="Black" PostBackUrl="prog3.aspx" /></center>
            <br />
            <br />
            <br />
            <br />
            <br />
                    <br />
                    <br />
                    <div style="text-align:left; position:absolute; top:1100px; right:0px"> 
                        問題處理:</br>
                        電話:0912565823<br />
                        信箱:Amy_rko@gmail.com<br /></div>
                    <br />
                    <br />
                    <br />
                    <br />
            

        
    </form>
</body>
</html>
