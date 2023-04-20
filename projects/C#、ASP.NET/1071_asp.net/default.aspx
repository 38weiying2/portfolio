<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prog1.aspx.cs" Inherits="prog1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .tablinks {
            height: 82px;
            width: 363px;
        }
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
            <br />
                <br />
                <br />
            <br />
                        <center><h3>登入:<br />
                        <br />
                            信箱:<asp:TextBox ID="TextBox1" runat="server" BorderStyle="Dashed" Height="24px" Width="251px" TextMode="Email"></asp:TextBox>
                        <br />
                        <br />
                        密碼:<asp:TextBox ID="TextBox2" runat="server" BorderStyle="Dashed" Height="24px" Width="251px" TextMode="Password"></asp:TextBox>
                                </br><asp:Button ID="Button1" runat="server" Text="送出" OnClick="Button1_Click" />
                    </h3>
                            <h3>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                    </h3>
                            <h3>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" SelectCommand="SELECT * FROM [s1061611Table4] WHERE (([信箱] = @信箱) AND ([密碼] = @密碼))">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TextBox1" Name="信箱" PropertyName="Text" Type="String" />
                                        <asp:ControlParameter ControlID="TextBox2" Name="密碼" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Visible="False">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                                    <asp:BoundField DataField="信箱" HeaderText="信箱" SortExpression="信箱" />
                                    <asp:BoundField DataField="手機" HeaderText="手機" SortExpression="手機" />
                                    <asp:BoundField DataField="密碼" HeaderText="密碼" SortExpression="密碼" />
                                </Columns>
                            </asp:GridView>
                    </h3>
                </center>
                <br />
                沒有帳號嗎?<a href="prog8.aspx">按我註冊</a><br />
            <br />
            <br />
            <br />
            <br />
                <br />
            <br />
            <br />
            <br />
            <br />
            </div>
                <div style="text-align:left; position:absolute; top:1100px; right:0px"> 
                問題處理:</br>
                電話:0912565823<br />
                信箱:Amy_rko@gmail.com<br />
                </div>
        
    </form>
</body>
</html>
