<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lc_news.aspx.cs" Inherits="LC_lc_news" %>

 
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <dx:ASPxNewsControl ID="ASPxNewsControl1" runat="server" Width="100%" DataSourceID="Select_news" BackColor="#E9EDFE" EnableTheming="True" RowPerPage="10" Theme="MaterialCompact">
                <Items>
                    <dx:NewsItem Date="08/20/2018 15:03:09" Text="Тут будут вноситься изменения в программу.">
                    </dx:NewsItem>
                    <dx:NewsItem Date="08/20/2018 15:13:16" Text="Мы запустились, Всех с этим и поздравляем">
                    </dx:NewsItem>
                    <dx:NewsItem Date="08/20/2018 15:13:36" Text="Данная программа все еще находиться в стадии доработки, так что возможны неточноси.">
                    </dx:NewsItem>
                    <dx:NewsItem Date="08/20/2018 15:14:14" Text="По всем вопросам обращайтесь на емейл - info@kleo.in.ua">
                    </dx:NewsItem>
                </Items>
                <ItemSettings DateFormatString="{0}">
                </ItemSettings>
                <ItemDateStyle ForeColor="Red">
                </ItemDateStyle>
                <ItemStyle Font-Size="Larger" />
            </dx:ASPxNewsControl>

            <asp:SqlDataSource ID="Select_news" runat="server" ConnectionString="<%$ ConnectionStrings:xesko_data %>" ProviderName="<%$ ConnectionStrings:xesko_data.ProviderName %>" SelectCommand="SELECT * FROM [news] WHERE ([enable] = ?) ORDER BY [date] DESC">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="enable" Type="Object" />
                </SelectParameters>
            </asp:SqlDataSource>


        </div>
    </form>
</body>
</html>
