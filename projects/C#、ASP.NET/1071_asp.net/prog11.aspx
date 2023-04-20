<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeFile="prog11.aspx.cs" Inherits="prog11" %>

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
        <div style="padding: inherit; font-family: 微軟正黑體; font-weight: 600; height:1260px; position:absolute; left:50px; right:50px">
            <br/>
            <center><font size="6">全國失物招領中心</font></center>
            <br />
            <br/>
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" SelectCommand="SELECT * FROM [s1061611Table5] WHERE ([信箱] = @信箱)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label2" Name="信箱" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" SelectCommand="SELECT * FROM [s1061611Table6] WHERE ([信箱] = @信箱)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label2" Name="信箱" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            <br />
            <br />
                        <center><h2>個人頁面</h2>
                            <br />
                            <div style="border-style: dashed; border-color: inherit; border-width: medium; height: 1000px; width: 620px; text-align:center">
                                <h3>        (1)個人資訊</h3>
                                <h3>        姓名:<asp:Label ID="Label1" runat="server"></asp:Label>
                    
                    
                    </h3>
                            <h3>信箱:<asp:Label ID="Label2" runat="server"></asp:Label>
                    
                    
                    </h3>
                            <h3>手機:<asp:Label ID="Label3" runat="server"></asp:Label>
                            </br>
                    </h3>
                                <h3>&nbsp;</h3>
                                <h3>(2)我的檔案</h3>
                                <p>遺失案件</p>
                                <p>
                                    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="Id">
                                        <Columns>
                                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                                            <asp:BoundField DataField="日期" HeaderText="日期" SortExpression="日期" />
                                            <asp:BoundField DataField="遺失地點" HeaderText="遺失地點" SortExpression="遺失地點" />
                                            <asp:BoundField DataField="內容" HeaderText="內容" SortExpression="內容" />
                                            <asp:BoundField DataField="聯絡方式" HeaderText="聯絡方式" SortExpression="聯絡方式" />
                                            <asp:BoundField DataField="信箱" HeaderText="信箱" SortExpression="信箱" Visible="False" />
                                        </Columns>
                                    </asp:GridView>
                                </p>
                                <p>
                                    拾得案件</p>
                                    <asp:GridView ID="GridView3" runat="server" DataSourceID="SqlDataSource3" AutoGenerateColumns="False" DataKeyNames="Id">
                                        <Columns>
                                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                                            <asp:BoundField DataField="受理單位" HeaderText="受理單位" SortExpression="受理單位" />
                                            <asp:BoundField DataField="日期" HeaderText="日期" SortExpression="日期" />
                                            <asp:BoundField DataField="拾獲地點" HeaderText="拾獲地點" SortExpression="拾獲地點" />
                                            <asp:BoundField DataField="內容" HeaderText="內容" SortExpression="內容" />
                                            <asp:BoundField DataField="聯絡方式" HeaderText="聯絡方式" SortExpression="聯絡方式" />
                                            <asp:BoundField DataField="信箱" HeaderText="信箱" SortExpression="信箱" Visible="False" />
                                        </Columns>
                                    </asp:GridView>
                    </div>
                            <h3>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Visible="False">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                        <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                                        <asp:BoundField DataField="信箱" HeaderText="信箱" SortExpression="信箱" />
                                        <asp:BoundField DataField="手機" HeaderText="手機" SortExpression="手機" />
                                        <asp:BoundField DataField="密碼" HeaderText="密碼" SortExpression="密碼" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" SelectCommand="SELECT * FROM [s1061611Table4] WHERE ([信箱] = @信箱2)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label4" Name="信箱2" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                    </h3>
                </center>
                <br />
            <br />
            <br />
            <br />
            <br />
            <div style="text-align:left; position:absolute; top:1100px; right:0px"> 
            問題處理:</br>
            電話:0912565823<br />
            信箱:Amy_rko@gmail.com<br /></div><br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
