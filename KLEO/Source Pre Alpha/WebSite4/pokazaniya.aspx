<%@ Page EnableEventValidation="true" Title="ВВОД ПОКАЗАНИЙ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="pokazaniya.aspx.cs" Inherits="pokazaniya"  %>
<%@ Import Namespace="MySql.Data.MySqlClient" %>
<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


 

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
     
     
    <p>
        
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" Width="100%" DataSourceID="Sql_insert_pokazaniya" Theme="BlackGlass" KeyFieldName="id">
            <SettingsContextMenu EnableColumnMenu="False">
            </SettingsContextMenu>
            <Settings ShowFilterRow="True" ShowGroupPanel="True" />
            <SettingsBehavior AutoExpandAllGroups="True" />
            <SettingsDataSecurity AllowDelete="False" />
            <SettingsSearchPanel Visible="True" />
           
            <Columns>
                
                <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" ButtonRenderMode="Button" ButtonType="Button" MinWidth="20" Width="20px">
                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                    </CellStyle>
                </dx:GridViewCommandColumn>
                
                <dx:GridViewDataTextColumn FieldName="title" VisibleIndex="1" Caption="Здание" GroupIndex="0" SortIndex="0" SortOrder="Ascending" MinWidth="50"  Width="350px"  >
                    <SettingsHeaderFilter>
                        <DateRangeCalendarSettings ClearButtonText="Очистить">
                        </DateRangeCalendarSettings>
                    </SettingsHeaderFilter>
                    <CellStyle HorizontalAlign="Left" VerticalAlign="Middle">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="TypeBuilding" VisibleIndex="2" Caption="Тип здания" Width="20px" Visible="False">
                    <SettingsHeaderFilter>
                        <DateRangeCalendarSettings ClearButtonText="Очистить">
                            <FastNavProperties CancelButtonText="Отмена" OkButtonText="Добавить показание" />
                        </DateRangeCalendarSettings>
                    </SettingsHeaderFilter>
                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="city" VisibleIndex="3" Caption="Город" Width="7px" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="id" VisibleIndex="17" ReadOnly="True" Visible="False">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="id_building" VisibleIndex="16" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="number_сounters" VisibleIndex="5" Caption="№ Счетчика" Width="20px">
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="modlel" VisibleIndex="7" Caption="Модель СЧ" Width="20px" Visible="False">
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="type" VisibleIndex="4" Caption="Ресурс" Width="20px">
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="tarif" VisibleIndex="8" Caption="Поставщик" Width="10px">
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="comment" VisibleIndex="6" Caption="Комментарий"  >
                    <CellStyle HorizontalAlign="Left">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="last_check" VisibleIndex="9" Caption="Дата обновления" Width="20px" Visible="False">
                    <PropertiesDateEdit>
                        <TimeSectionProperties CancelButtonText="Отмена">
                        </TimeSectionProperties>
                    </PropertiesDateEdit>
                    <CellStyle HorizontalAlign="Left">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataCheckColumn FieldName="active" VisibleIndex="10" Caption="Вкл" Width="5px" Visible="False">
                    <CellStyle HorizontalAlign="Center" VerticalAlign="Middle">
                    </CellStyle>
                </dx:GridViewDataCheckColumn>
                <dx:GridViewDataTextColumn VisibleIndex="11" FieldName="id_countres" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="MAX(pokazaniya.date)" VisibleIndex="12" Caption="Прошлая ДАТА"  Width="20px">
                  
                    <PropertiesDateEdit EditFormat="Custom" EditFormatString="yyyy-MM-dd HH:mm:ss" UseMaskBehavior="True" >
                        <TimeSectionProperties Adaptive="True" Visible="True">
                            <TimeEditProperties EditFormat="Custom" EditFormatString="HH:mm:ss">
                            </TimeEditProperties>
                        </TimeSectionProperties>
                    </PropertiesDateEdit>
                   <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="MAX(pokazaniya.pokazanie)" VisibleIndex="13" Caption="Прошлые ПОКАЗ." Width="20px">
                     <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="difference" VisibleIndex="14" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="money" VisibleIndex="15" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn Caption="Сегодня" FieldName="NOW()" Visible="False" VisibleIndex="18">
                   <PropertiesDateEdit EditFormat="Custom" EditFormatString="yyyy-MM-dd HH:mm:ss" UseMaskBehavior="True" >
                        <TimeSectionProperties Adaptive="True" Visible="True">
                            <TimeEditProperties EditFormat="Custom" EditFormatString="HH:mm:ss">
                            </TimeEditProperties>
                        </TimeSectionProperties>
                    </PropertiesDateEdit>
                </dx:GridViewDataDateColumn>
            </Columns>

             
            <SettingsAdaptivity>
                <AdaptiveDetailLayoutProperties>
                    <Items>
                        <dx:GridViewColumnLayoutItem>
                        </dx:GridViewColumnLayoutItem>
                    </Items>
                </AdaptiveDetailLayoutProperties>
            </SettingsAdaptivity>

             
        <SettingsPager PageSize="20" />
            <SettingsResizing Visualization="Postponed" />
            <SettingsCommandButton>
            
            <EditButton>
                <Image ToolTip="Внести показания" Url="Images/Add_img16.png" />
            </EditButton>
          <%--  <UpdateButton RenderMode="Image">
                <Image ToolTip="Внести новые показания" Url="Images/Add_img16.png" />
            </UpdateButton>
             --%> 
        </SettingsCommandButton>


             <SettingsText CommandEdit="Добавить" CommandUpdate="Записать" />


             <EditFormLayoutProperties ColCount="2">
                <Items>
                    <dx:GridViewColumnLayoutItem ColumnName="NOW()" Caption="Дата показаний" >
                    </dx:GridViewColumnLayoutItem>
                    <dx:GridViewColumnLayoutItem ColumnName="MAX(pokazaniya.pokazanie)" Caption="Показания счетчика">
                    </dx:GridViewColumnLayoutItem>
                     
                    <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right" Name="111">
                    </dx:EditModeCommandLayoutItem>
                    <dx:GridViewColumnLayoutItem ColumnName="id_countres" Visible="False">
                    </dx:GridViewColumnLayoutItem>
                </Items>
            </EditFormLayoutProperties>
        </dx:ASPxGridView>



        <asp:SqlDataSource ID="Sql_insert_pokazaniya" runat="server" ConnectionString="<%$ ConnectionStrings:xesko_data %>" ProviderName="<%$ ConnectionStrings:xesko_data.ProviderName %>" 
            SelectCommand="SELECT NOW(), building.title, building.type AS TypeBuilding ,building.city, countres.id, countres.id_building, countres.number_сounters, countres.modlel, countres.type, countres.tarif, countres.comment, countres.last_check, countres.active, pokazaniya.id_countres, MAX(pokazaniya.date), MAX(pokazaniya.pokazanie), pokazaniya.difference, pokazaniya.money 
            FROM countres LEFT OUTER JOIN pokazaniya ON countres.id = pokazaniya.id_countres 
            LEFT  JOIN  building  ON countres.id_building = building.id 
            WHERE (countres.id_building IN (SELECT id_building FROM user_atributes WHERE (id_user = ?) ORDER BY DATE ) AND countres.active=TRUE) GROUP BY countres.number_сounters" 
            InsertCommand="INSERT INTO [pokazaniya] ([id_countres], [date], [id], [pokazanie]) VALUES (?, ?, ?, ?)" 
            
            UpdateCommand="INSERT INTO pokazaniya(id_countres, date, pokazanie) VALUES (?, ?, ?)" 
            DeleteCommand="DELETE FROM [pokazaniya] WHERE [id] = ?" >
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="id_user" Type="Int32" />
            </SelectParameters>


            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id_countres" Type="Int32" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="pokazanie" Type="Decimal" />
            </InsertParameters>
            
            <UpdateParameters>
               <%--  <asp:Parameter Name="id_countres" Type="Int32" />  !!!!!!!!!!!!!! этот папаметр добавляет !    --%>
                <asp:Parameter Name="id_countres" Type="Int32"/> 
               
                <asp:Parameter Name="NOW()" Type="DateTime" />
                <asp:Parameter Name="MAX(pokazaniya.pokazanie)" Type="Decimal" />
                
            </UpdateParameters>
        </asp:SqlDataSource>
        <br /><br />
    <p>
        
        &nbsp;<p>
        
        <br />
      
       
</p>
    <br />

    </asp:Content>

 