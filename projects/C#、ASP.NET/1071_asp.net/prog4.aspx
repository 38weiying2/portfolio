<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prog4.aspx.cs" Inherits="prog4" %>

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
            <br />
                    <div style="color:red;">注意 : 未註冊、登入者僅能查看!!!</div><br />
                    <center><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="85%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                            <asp:BoundField DataField="受理單位" HeaderText="受理單位" SortExpression="受理單位" />
                            <asp:BoundField DataField="日期" HeaderText="日期" SortExpression="日期" />
                            <asp:BoundField DataField="拾獲地點" HeaderText="拾獲地點" SortExpression="拾獲地點" />
                            <asp:BoundField DataField="內容" HeaderText="內容" SortExpression="內容" />
                            <asp:BoundField DataField="聯絡方式" HeaderText="聯絡方式" SortExpression="聯絡方式" />
                        </Columns>
                        <FooterStyle BackColor="#009999" />
                        <HeaderStyle BackColor="#DA4614" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                        <br />
                    共<asp:Label ID="Label3" runat="server" Text="0"></asp:Label>
                    筆資料</center>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    </br>
            <div style="text-align:left; position:absolute; top:1100px; right:0px"> 
                        問題處理:</br>
                        電話:0912565823<br />
                        信箱:Amy_rko@gmail.com<br /></div><br /><br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" DeleteCommand="DELETE FROM [s1061611Table6] WHERE [Id] = @Id" InsertCommand="INSERT INTO [s1061611Table6] ([受理單位], [日期], [拾獲地點], [內容], [聯絡方式]) VALUES (@受理單位, @日期, @拾獲地點, @內容, @聯絡方式)" SelectCommand="SELECT * FROM [s1061611Table6]" UpdateCommand="UPDATE [s1061611Table6] SET [受理單位] = @受理單位, [日期] = @日期, [拾獲地點] = @拾獲地點, [內容] = @內容, [聯絡方式] = @聯絡方式 WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="受理單位" Type="String" />
                            <asp:Parameter Name="日期" Type="String" />
                            <asp:Parameter Name="拾獲地點" Type="String" />
                            <asp:Parameter Name="內容" Type="String" />
                            <asp:Parameter Name="聯絡方式" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="受理單位" Type="String" />
                            <asp:Parameter Name="日期" Type="String" />
                            <asp:Parameter Name="拾獲地點" Type="String" />
                            <asp:Parameter Name="內容" Type="String" />
                            <asp:Parameter Name="聯絡方式" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
