<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prog8.aspx.cs" Inherits="prog8" %>

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
                    &nbsp;<center><h3>註冊帳號:<br />
                    <br />
                    *姓名:<asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Height="24px" Width="251px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">不能空白</asp:RequiredFieldValidator>
                    <br />
                    <br />
                    *信箱:<asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Height="24px" TextMode="Email" Width="251px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">不能空白</asp:RequiredFieldValidator>
                <br />
                    <br />
                    *手機:<asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="24px" TextMode="Phone" Width="251px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator">不能空白</asp:RequiredFieldValidator><br />
                    <br />
                    *密碼:<asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" Height="24px" Width="251px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator">不能空白</asp:RequiredFieldValidator><br /></h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="送出" BackColor="#FF99FF" BorderStyle="Dotted" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large" Height="38px" OnClick="Button1_Click" Width="89px" />
                <br />
                <asp:Label ID="Label1" runat="server" Text="資料送出成功" Visible="False"></asp:Label>
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="prog1.aspx" Visible="False">回登入頁面</asp:LinkButton>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                        <asp:BoundField DataField="信箱" HeaderText="信箱" SortExpression="信箱" />
                        <asp:BoundField DataField="手機" HeaderText="手機" SortExpression="手機" />
                        <asp:BoundField DataField="密碼" HeaderText="密碼" SortExpression="密碼" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" SelectCommand="SELECT * FROM [s1061611Table4]"></asp:SqlDataSource>
                <br />
            </center>
            </br>
                        <div style="text-align:left; position:absolute; top:1100px; right:0px"> 
                        問題處理:</br>
                        電話:0912565823<br />
                        信箱:Amy_rko@gmail.com<br /></div><br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" SelectCommand="SELECT * FROM [s1061611Table4]" DeleteCommand="DELETE FROM [s1061611Table4] WHERE [Id] = @Id" InsertCommand="INSERT INTO [s1061611Table4] ([姓名], [信箱], [手機], [密碼]) VALUES (@姓名, @信箱, @手機, @密碼)" UpdateCommand="UPDATE [s1061611Table4] SET [姓名] = @姓名, [信箱] = @信箱, [手機] = @手機, [密碼] = @密碼 WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="姓名" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="信箱" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox3" Name="手機" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox4" Name="密碼" PropertyName="Text" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="姓名" Type="String" />
                            <asp:Parameter Name="信箱" Type="String" />
                            <asp:Parameter Name="手機" Type="String" />
                            <asp:Parameter Name="密碼" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
            </asp:SqlDataSource>
                    <br />
            

        
    </form>
</body>
</html>
