<%@ Page Language="C#" AutoEventWireup="true" CodeFile="a_fin_report.aspx.cs" Inherits="a_fin_report" %>
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
             <p>Финансовый отчет потребления помесячно за весь период </p>
            <br>

            <dx:ASPxGridView ID="ASPxGridView_FinReport" runat="server" AutoGenerateColumns="False" DataSourceID="mySQL_user_FinReport" EnableTheming="True" Theme="SoftOrange" hight="100%" Width="100%">
                 <SettingsContextMenu EnableColumnMenu="False">
            </SettingsContextMenu>

             <SettingsPager AlwaysShowPager="True" ShowEmptyDataRows="True" Mode="ShowAllRecords">
             </SettingsPager>
            <Settings ShowGroupPanel="True" ShowFooter="True"  />
 
                 <SettingsBehavior AllowFocusedRow="True" />
            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="id_countres" VisibleIndex="0" Caption="№" >
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="title" VisibleIndex="1" Caption="Здание"  GroupIndex="0" SortIndex="0" SortOrder="Ascending">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="number_сounters" VisibleIndex="2" Caption=" зав. № счетчика" GroupIndex="2" SortIndex="2" SortOrder="Ascending" >
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="DATE_FORMAT(`pokazaniya`.`date`, '%b %Y')" Caption="Период" VisibleIndex="3">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="SUM(`pokazaniya`.`difference`)" Caption="Сумма показаний"  VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SUM(`pokazaniya`.`money`)" Caption="Сумма грн"  VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="tarif" VisibleIndex="7" Caption="Поставщик" >
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Coefficient" VisibleIndex="8" Caption="Коэф. тр." >
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="type" VisibleIndex="9" Caption="Ресурс"  SortIndex="1" SortOrder="Ascending" GroupIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataCheckColumn FieldName="active" VisibleIndex="10" Caption="ВКЛ"  >
                    </dx:GridViewDataCheckColumn>
                    
                </Columns>
                <TotalSummary>
            <dx:ASPxSummaryItem FieldName="SUM(`pokazaniya`.`money`)" SummaryType="Sum" DisplayFormat="Итого: {0:n} грн" />
        </TotalSummary>
                
                 <groupsummary>
                     <dx:ASPxSummaryItem FieldName="SUM(`pokazaniya`.`money`)" SummaryType="Sum"  DisplayFormat="Потрачего: {0:n} грн"/>
                 </groupsummary>
                
                <Styles>
                    <GroupRow HorizontalAlign="Left">
                    </GroupRow>
                </Styles>
            </dx:ASPxGridView>

            <asp:SqlDataSource ID="mySQL_user_FinReport" runat="server" ConnectionString="<%$ ConnectionStrings:xesko_data %>" ProviderName="<%$ ConnectionStrings:xesko_data.ProviderName %>" 
                SelectCommand="SELECT  `pokazaniya`.`id_countres`,`building`.`title`,`countres`.`number_сounters`,DATE_FORMAT(`pokazaniya`.`date`, '%b %Y'),SUM(`pokazaniya`.`difference`),SUM(`pokazaniya`.`money`),`countres`.`tarif`,`countres`.`Coefficient`, `countres`.`type`, `countres`.`active`
FROM `pokazaniya` 
LEFT OUTER JOIN `countres` ON `countres`.`id`=`pokazaniya`.`id_countres` 
LEFT OUTER JOIN `building` ON `building`.`id`=`countres`.`id_building` 
WHERE  `id_countres` IN ( SELECT `id`  FROM `countres` WHERE `id_building` IN (SELECT`id_building` FROM `user_atributes` WHERE `id_user` = ? ))   GROUP BY `pokazaniya`.`id_countres`, YEAR(`date`),  MONTH(`date`) ORDER BY `pokazaniya`.`id_countres`,`date` DESC">

                <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="id_user" Type="Int32" />
                </SelectParameters>


            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
