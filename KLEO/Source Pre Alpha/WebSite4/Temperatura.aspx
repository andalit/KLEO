 <%@ Page EnableEventValidation="true" Title="Температура города Херсона за прошлые 30 дней" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Temperatura.aspx.cs" Inherits="Temperatura"  %>

<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.XtraCharts.v17.2.Web, Version=17.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.XtraCharts.v17.2, Version=17.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="dx" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


<h2 style="height: 30px"><%: Title %></h2>
 
      <p>&nbsp;</p>

<div align="center">
 
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="mySQL_qwery" EnableTheming="True" KeyFieldName="Дата" Theme="Office2010Black" Width="400px">
        <Settings ShowFilterRow="True" />
        <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
        <Columns>
            <dx:GridViewDataDateColumn FieldName="Дата" ReadOnly="True" VisibleIndex="0">
                <PropertiesDateEdit DisplayFormatInEditMode="True" DisplayFormatString="yyyy-MM-dd HH:mm:ss" EditFormat="DateTime">
                </PropertiesDateEdit>
                <Settings AllowAutoFilterTextInputTimer="True" />
                <SettingsHeaderFilter>
                    <DateRangePickerSettings DisplayFormatString="yyyy-M-d HH:mm:ss">
                    </DateRangePickerSettings>
                </SettingsHeaderFilter>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                </CellStyle>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Температура" VisibleIndex="1">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                </CellStyle>
            </dx:GridViewDataTextColumn>
        </Columns>
         </dx:ASPxGridView>
    <p>&nbsp;</p>
 
     <div align="center">
         <dx:WebChartControl ID="WebChartControl1" runat="server" CrosshairEnabled="True" DataSourceID="mySQL_qwery" Height="280px" Width="1000px">
             <DiagramSerializable>
                 <dx:XYDiagram>
                     <axisx visibleinpanesserializable="-1">
                     </axisx>
                     <axisy visibleinpanesserializable="-1">
                     </axisy>
                 </dx:XYDiagram>
             </DiagramSerializable>
<Legend Name="Default Legend"></Legend>
             <SeriesSerializable>
                 <dx:Series ArgumentDataMember="Дата" ColorDataMember="Температура" LegendName="Default Legend" Name="ХЕРСОН" ValueDataMembersSerializable="Температура">
                     <viewserializable>
                         <dx:SplineSeriesView>
                         </dx:SplineSeriesView>
                     </viewserializable>
                 </dx:Series>
             </SeriesSerializable>
             <SeriesTemplate>
                 <ViewSerializable>
                     <dx:SplineSeriesView>
                     </dx:SplineSeriesView>
                 </ViewSerializable>
             </SeriesTemplate>
         </dx:WebChartControl>
     </div>



     <asp:SqlDataSource ID="mySQL_qwery" runat="server" 
         ConnectionString="<%$ ConnectionStrings:xesko %>" 
         ProviderName="<%$ ConnectionStrings:xesko.ProviderName %>" 
         SelectCommand="SELECT `date` AS Дата, value AS Температура FROM wather WHERE (TO_DAYS(NOW()) - TO_DAYS(`date`) &lt;= 30)"></asp:SqlDataSource>
   

     <p>&nbsp;</p>
     </div>
 </asp:Content>

