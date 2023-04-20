<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prog6.aspx.cs" Inherits="prog6" %>

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
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登出" />
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
                    <asp:MenuItem NavigateUrl="prog10.aspx" Text="案件查尋" Value="案件查尋">
                        </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="prog11.aspx" Text="個人資訊" Value="個人資訊"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="prog5.aspx" Text="使用說明" Value="使用說明"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#999999" ForeColor="Black" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#507CD1" />
            </asp:Menu>
            <br />
            <div style="color:red;">您是拾獲者身分!!!</div>
                    
                    <div style="color:black;"><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 搜尋:<asp:TextBox ID="TextBox1" runat="server" BorderStyle="Dashed" Height="24px" Width="251px" AutoPostBack="True" Font-Names="微軟正黑體" OnTextChanged="TextBox1_TextChanged">您所加入的&quot;內容&quot;部分</asp:TextBox></h3>
                    </div>
                    <center><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="85%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
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
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" AllowSorting="True" Width="85%" AllowPaging="True">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
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
                    共<asp:Label ID="Label3" runat="server" Text="0"></asp:Label>
                    筆資料<br />
                        <br />

                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="prog2.aspx">加入您的拾得案件!!!</asp:LinkButton>
                        </center></br>
                            <div style="text-align:left; position:absolute; top:1100px; right:0px"> 
                        問題處理:</br>
                        電話:0912565823<br />
                        信箱:Amy_rko@gmail.com<br /></div><br />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" SelectCommand="SELECT * FROM [s1061611Table6] WHERE ([內容] LIKE '%' + @內容 + '%')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="內容" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>

        </div>
        </div>
    </form>
</body>
</html>
