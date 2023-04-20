<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeFile="prog9.aspx.cs" Inherits="prog9" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
        background-position:center;
        background-repeat:no-repeat;
        background-attachment:scroll;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: inherit; font-family: 微軟正黑體; font-weight: 600; height:1260px; position:absolute; left:50px; right:0px">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="登出" />
            <br/>
            <center><font size="6">全國失物招領中心</font><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" DeleteCommand="DELETE FROM [s1061611Table5] WHERE [Id] = @Id" InsertCommand="INSERT INTO [s1061611Table5] ([日期], [遺失地點], [內容], [聯絡方式], [信箱]) VALUES (@日期, @遺失地點, @內容, @聯絡方式, @信箱)" SelectCommand="SELECT * FROM [s1061611Table5]" UpdateCommand="UPDATE [s1061611Table5] SET [日期] = @日期, [遺失地點] = @遺失地點, [內容] = @內容, [聯絡方式] = @聯絡方式, [信箱] = @信箱 WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="日期" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="遺失地點" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox4" Name="內容" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox5" Name="聯絡方式" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Label6" Name="信箱" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="日期" Type="String" />
                    <asp:Parameter Name="遺失地點" Type="String" />
                    <asp:Parameter Name="內容" Type="String" />
                    <asp:Parameter Name="聯絡方式" Type="String" />
                    <asp:Parameter Name="信箱" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
                </asp:SqlDataSource>
                   </center>
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
                </br>
                <div style="color:red;"><h3>加入遺失物之案子專區!!!</h3></div>
                    <div style="color:black;"><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;搜尋:<asp:TextBox ID="TextBox1" runat="server" BorderStyle="Dashed" Height="24px" Width="251px" AutoPostBack="True" Font-Names="微軟正黑體" OnTextChanged="TextBox1_TextChanged">您所加入的&quot;內容&quot;部分</asp:TextBox></h3>
                    </div>
               <center> <div style="width: 437px">日期&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                   <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Height="24px" Width="251px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="不能空白"></asp:RequiredFieldValidator>
                   <br />
                   <br />
                   遺失地點 
                   <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="24px" Width="251px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="不能空白"></asp:RequiredFieldValidator>
                   <br />
                   <br />
                   內容&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                   <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" Height="24px" Width="251px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="不能空白"></asp:RequiredFieldValidator>
                   <br />
                   <br />
                   聯絡方式 <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" Height="24px" Width="251px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="不能空白"></asp:RequiredFieldValidator>
                   <br />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Height="28px" Text="送出" Width="68px" OnClick="Button1_Click" />
                   <br />
                   <asp:Label ID="Label1" runat="server" Text="新增成功!!" Visible="False"></asp:Label>
                   <br />
                   <asp:Label ID="Label4" runat="server" Text="請在上方搜尋看看您所加入的&quot;內容&quot;喔!" Visible="False"></asp:Label>
                   </div>
                <br />
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:1071netdbConnectionString %>" SelectCommand="SELECT * FROM [s1061611Table5] WHERE ([內容] LIKE '%' + @內容2 + '%')" DeleteCommand="DELETE FROM [s1061611Table5] WHERE [Id] = @Id" InsertCommand="INSERT INTO [s1061611Table5] ([日期], [遺失地點], [內容], [聯絡方式]) VALUES (@日期, @遺失地點, @內容, @聯絡方式)" UpdateCommand="UPDATE [s1061611Table5] SET [日期] = @日期, [遺失地點] = @遺失地點, [內容] = @內容, [聯絡方式] = @聯絡方式 WHERE [Id] = @Id">
                       <DeleteParameters>
                           <asp:Parameter Name="Id" Type="Int32" />
                       </DeleteParameters>
                       <InsertParameters>
                           <asp:Parameter Name="日期" Type="String" />
                           <asp:Parameter Name="遺失地點" Type="String" />
                           <asp:Parameter Name="內容" Type="String" />
                           <asp:Parameter Name="聯絡方式" Type="String" />
                       </InsertParameters>
                       <SelectParameters>
                           <asp:ControlParameter ControlID="TextBox1" Name="內容2" PropertyName="Text" Type="String" />
                       </SelectParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="日期" Type="String" />
                           <asp:Parameter Name="遺失地點" Type="String" />
                           <asp:Parameter Name="內容" Type="String" />
                           <asp:Parameter Name="聯絡方式" Type="String" />
                           <asp:Parameter Name="Id" Type="Int32" />
                       </UpdateParameters>
                   </asp:SqlDataSource>
                   <br />
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Width="85%" AllowPaging="True" AllowSorting="True" BorderColor="White" BorderWidth="0px">
                       <AlternatingRowStyle BackColor="White" BorderStyle="None" />
                       <Columns>
                           <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                           <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                           <asp:BoundField DataField="日期" HeaderText="日期" SortExpression="日期" />
                           <asp:BoundField DataField="遺失地點" HeaderText="遺失地點" SortExpression="遺失地點" />
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
                    </center>
                <br />
                    共<asp:Label ID="Label5" runat="server" Text="0"></asp:Label>
                    筆資料<br />
                <br />
                <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
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
        </div>
    </form>
</body>
</html>
