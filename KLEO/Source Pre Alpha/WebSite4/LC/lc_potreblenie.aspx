 
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lc_potreblenie.aspx.cs"  Inherits="potreblenie_user"%>
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
    <p>Здесь отображается потребление ресурсов за последние 30 дней </p>
            <br>

            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="mySQL_userTarif" EnableTheming="True" KeyFieldName="id" Theme="SoftOrange" hight="100%" Width="100%">
                 <SettingsContextMenu EnableColumnMenu="False">
            </SettingsContextMenu>

             <SettingsPager AlwaysShowPager="True" ShowEmptyDataRows="True" Mode="ShowAllRecords">
             </SettingsPager>
            <Settings ShowGroupPanel="True" ShowFooter="True"  />
 
                 <SettingsBehavior AllowFocusedRow="True" />
            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="id" VisibleIndex="0" ReadOnly="True"  Width="20px">
                    <EditFormSettings Visible="False"></EditFormSettings>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="title" GroupIndex="0" SortIndex="0" SortOrder="Ascending" VisibleIndex="1"  Caption="Здание" Width="60px">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="number_сounters" VisibleIndex="2" Caption="№ Счетчика" Width="60px" >
                        <Settings GroupInterval="Value" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="date" VisibleIndex="3" Caption="Дата" Width="100px" UnboundType="DateTime">
                        
                            <PropertiesDateEdit DisplayFormatInEditMode="True" DisplayFormatString="yyyy-MM-dd HH:mm:ss" EditFormat="Custom" EditFormatString="yyyy-MM-dd HH:mm:ss">
                                <TimeSectionProperties>
                                    <TimeEditProperties DisplayFormatString="tt">
                                    </TimeEditProperties>
                                </TimeSectionProperties>
                            </PropertiesDateEdit>
                            <Settings AllowAutoFilterTextInputTimer="True" />
                            <SettingsHeaderFilter>
                            <DateRangePickerSettings DisplayFormatString="yyyy-MM-dd HH:mm:ss">
                            </DateRangePickerSettings>
                            </SettingsHeaderFilter>
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                            </CellStyle>
             
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="pokazanie" VisibleIndex="4" Caption="Показание" Width="60px">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="difference" VisibleIndex="5" Caption="Потребление" Width="60px">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="money" VisibleIndex="6" Caption="Грн" Width="60px">
                         <FooterCellStyle ForeColor="Brown" HorizontalAlign="Right" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="tarif" VisibleIndex="7" Caption="Тариф" Width="60px">
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Coefficient" VisibleIndex="8" Caption="Коэф." Width="10px">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="type" VisibleIndex="9" GroupIndex="1" SortIndex="1" SortOrder="Ascending" Caption="Ресурс" Width="60px">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataCheckColumn FieldName="active" VisibleIndex="12" Caption="ВКЛ" Width="5px">
                    </dx:GridViewDataCheckColumn>
                    
                </Columns>
                <TotalSummary>
             
            <dx:ASPxSummaryItem FieldName="money" SummaryType="Sum" DisplayFormat="Итого: {0:n} Грн" />
        </TotalSummary>
                 <GroupSummary>
                      <dx:ASPxSummaryItem DisplayFormat="Израсходовано: {0:n} рес" FieldName="difference" SummaryType="Sum"  />
                      <dx:ASPxSummaryItem DisplayFormat="Потрачено: {0:n} Грн" FieldName="money" SummaryType="Sum"  />
                 </GroupSummary>
                <Styles>
                    <GroupRow HorizontalAlign="Left">
                    </GroupRow>
                </Styles>
            </dx:ASPxGridView>

            <asp:SqlDataSource ID="mySQL_userTarif" runat="server" ConnectionString="<%$ ConnectionStrings:xesko_data %>" ProviderName="<%$ ConnectionStrings:xesko_data.ProviderName %>" 
                SelectCommand="SELECT `pokazaniya`.`id`,`building`.`title`,`countres`.`number_сounters`,`pokazaniya`.`date`,`pokazaniya`.`pokazanie`,`pokazaniya`.`difference`,`pokazaniya`.`money`,`countres`.`tarif`,`countres`.`Coefficient`, `countres`.`type`, `countres`.`active`
FROM `pokazaniya` 
LEFT OUTER JOIN `countres` ON `countres`.`id`=`pokazaniya`.`id_countres` 
LEFT OUTER JOIN `building` ON `building`.`id`=`countres`.`id_building` 
WHERE  `id_countres` IN ( SELECT `id`  FROM `countres` WHERE `id_building` IN (SELECT`id_building` FROM `user_atributes` WHERE `id_user` = ? )) AND (TO_DAYS(NOW()) - TO_DAYS(`date`) <= 30) ORDER BY `number_сounters`,`date`">

                <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="id_user" Type="Int32" />
                </SelectParameters>


            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>

