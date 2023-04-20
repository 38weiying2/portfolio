<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prog5.aspx.cs" Inherits="prog5" %>

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
                    <asp:MenuItem NavigateUrl="prog10.aspx" Text="案件查尋" Value="案件查尋"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="prog11.aspx" Text="個人資訊" Value="個人資訊"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="prog5.aspx" Text="使用說明" Value="使用說明"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#999999" ForeColor="Black" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#507CD1" />
            </asp:Menu>
            </div>

                    <br />
                    <center><div style="width: 40%; position:absolute; top: 210px; left: 100px; background-color:mediumturquoise"><h3>使用說明</h3>
                        <br />
                        這是一個能讓大家發表自己物品遺失或是撿到貴重物品的專門場所<br />
                        如果哪一天您的東西不見，就上來刊登您的資訊，內容最多可寫150字<br />
                        勿發表不雅留言<br />
                        版主會定期檢查<br />
                        勿私藏非己之錢財<br />
                        舉頭三尺有神明<br />
                        <br /></div>
                        <div style="width: 35%; position:absolute; top: 210px; right: 120px; background-color:palegoldenrod"><h3>使用方法</h3></br>
                        <div style="color:red;">!!!登入後才可選擇身分去po案件!!!<br /></div>
                        東西不見或是撿到貴重物品，第一時間當然是先去附近找找、問問<br />
                        再來就是去警局問問囉!<br />
                        但若是長時間不再掉東西的地方居住，可以先上來搜尋<br />
                        或是上<asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="None" Font-Underline="True" ForeColor="#666666" PostBackUrl="https://eli.npa.gov.tw/NPA97-217Client/">內政部警政署</asp:LinkButton>
                        查找<br />
                        雖然說警政署的資料可能更新得比較快<br />
                        但是或許有人不想拿去警政署，而是直接po文等等<br />
                        <br />
                        當然!!!<br />
                        想查詢案件的話請按上方的<asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#FF33CC">所有案件</asp:LinkButton>
                        <br />
                        若有發現貴重物品無法馬上送走只能留在身邊，或是只能留在現場等等<br />
                        那就麻煩您登入來刊登案件!<br />
                        大家都會非常感謝您的!!!!!</div></center>
                   
            <div style="text-align:left; position:absolute; top:1100px; right:0px"> 
                        問題處理:<br />
                        電話:0912565823<br />
                        信箱:Amy_rko@gmail.com<br /></div><br />

            

        
    </form>
</body>
</html>
