<%@ Page EnableEventValidation="true" Title="Здания" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="building.aspx.cs" Inherits="building"  %>
<%@ Import Namespace="MySql.Data.MySqlClient" %>
 

<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
 

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
     <h2 style="height: 30px"><%: Title %>
      
    </h2>
    <p>&nbsp;</p>
    <p>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="SqlDataSource1" Theme="BlackGlass" AutoGenerateColumns="False" KeyFieldName="id" Width="100%">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" VisibleIndex="0" Caption="№">
                <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="title" VisibleIndex="1" Caption="Здание">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="type" VisibleIndex="2" Caption="Тип">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="group" VisibleIndex="3" Caption="Группа">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="zone_temperatura" VisibleIndex="4" Caption="Температурная зона">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="floor" VisibleIndex="5" Caption="Этажей">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="year" VisibleIndex="6" Caption="Год постройки">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="region" VisibleIndex="7" Caption="Регион">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="city" VisibleIndex="8" Caption="Город">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="address" VisibleIndex="9" Caption="Адрес">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="area" VisibleIndex="10" Caption="Площадь">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:xesko_data %>" ProviderName="<%$ ConnectionStrings:xesko_data.ProviderName %>" 
            SelectCommand="SELECT id, title, type, `group`, zone_temperatura, floor, year, region, city, address, area FROM building WHERE (id IN (SELECT id_building FROM user_atributes WHERE (id_user = ?)))">

            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="id_user" Type="Int32" />
            </SelectParameters>

        </asp:SqlDataSource>
     </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

    <p></p>
</asp:Content>


