 
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lc_tarif_postavhika.aspx.cs"  Inherits="tarif_postavhika"%>
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
    <p>Здесь Вы можете пронаблюдать тарифы постпавщиков энергоресурсов по дате их изменения. </p>
            <br>

            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="mySQL_userTarif" Theme="SoftOrange"  Width="100%" EnableTheming="True" KeyFieldName="id" CssClass="auto-style1">
                 <SettingsBehavior ConfirmDelete="True" />  
                <SettingsPager AlwaysShowPager="True" ShowEmptyDataRows="True" Mode="ShowAllRecords">
                </SettingsPager>
                <Settings ShowGroupPanel="True" VerticalScrollableHeight="50" />
                <SettingsBehavior AllowFocusedRow="True" />
  
 
                <Columns>
                   
                    <dx:GridViewDataTextColumn FieldName="id" VisibleIndex="1" ReadOnly="True" Caption="#" Width="30px" ShowInCustomizationForm="True">
                        <EditFormSettings Visible="False" />
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Type" VisibleIndex="3" Caption="Ресурс" Width="80px" ShowInCustomizationForm="True" GroupIndex="0" SortIndex="0" SortOrder="Ascending">
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Organization" VisibleIndex="5" Caption="Поставщик" Width="140px" ShowInCustomizationForm="True">
                         <HeaderStyle HorizontalAlign="Left" />
                        <CellStyle HorizontalAlign="Left">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Tarif" VisibleIndex="6" Caption="Цена за ед" Width="70px" ShowInCustomizationForm="True">
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EdIzmereniya" VisibleIndex="7" Caption="Ед. Изм" Width="20px" ShowInCustomizationForm="True">
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="DateStart" VisibleIndex="8" Caption="Действие тарифа" Width="80">
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="Comment" VisibleIndex="9" Caption="Комментарий" Width="140px" ShowInCustomizationForm="True">
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>

                    <dx:GridViewDataTextColumn FieldName="Postanova" VisibleIndex="10" Caption="Постановление" Width="140px" ShowInCustomizationForm="True" >
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>

                    <dx:GridViewDataHyperLinkColumn FieldName="Link" Caption="Ссылка" VisibleIndex="11" Width="70px">
                        <PropertiesHyperLinkEdit ImageUrl="~/Images/link.png" ImageWidth="60px">
                        </PropertiesHyperLinkEdit>
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataHyperLinkColumn>
                 
                </Columns>

                <Styles>
                    <GroupPanel HorizontalAlign="Left">
                    </GroupPanel>
                </Styles>
            </dx:ASPxGridView>

            <asp:SqlDataSource ID="mySQL_userTarif" runat="server" ConnectionString="<%$ ConnectionStrings:xesko_data %>" ProviderName="<%$ ConnectionStrings:xesko_data.ProviderName %>" 
                SelectCommand="SELECT * FROM [tarif] ORDER BY [City], [Organization], [DateStart]"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>

