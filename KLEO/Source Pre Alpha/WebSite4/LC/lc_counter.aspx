<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lc_counter.aspx.cs" Inherits="LC_lc_counter" %>
<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             Здесь Вы можете изменить информацию по вашим зданиям <br></br>
            
           <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource_countres" EnableTheming="True" KeyFieldName="id" Theme="SoftOrange" hight="100%" Width="100%">
                 <SettingsContextMenu EnableColumnMenu="False">
            </SettingsContextMenu>
                <SettingsCommandButton>                
        <EditButton>
            <Image Url="~/Images/edit-icon-png-3597.png" Width="20px">
            </Image>
        </EditButton>
        <NewButton>
            <Image Url="~/Images/Add_img16.png"    >
            </Image>
        </NewButton>
        <DeleteButton>
            <Image Url="~/Images/delete-button-png-28578.png" Width="20px">
            </Image>
        </DeleteButton>
        <CancelButton>
            <Image Url="~/Images/button_cancel_18572.png" Width="30px">
            </Image>
        </CancelButton>
        <UpdateButton>
            <Image Url="~/Images/save_button.png"  Width="30px">
            </Image>
        </UpdateButton>
    </SettingsCommandButton>
             <SettingsPager AlwaysShowPager="True" ShowEmptyDataRows="True" Mode="ShowAllRecords">
             </SettingsPager>
                 <SettingsEditing Mode="PopupEditForm">
                 </SettingsEditing>
            <Settings ShowFooter="True" ShowGroupPanel="True" ShowGroupedColumns="True"  />
 
                 <SettingsBehavior AllowFocusedRow="True" AutoExpandAllGroups="True" />
            <SettingsDataSecurity AllowDelete="False" AllowInsert="False" />
                 <SettingsPopup>
                     <EditForm AllowResize="True" PopupAnimationType="Slide" ShowShadow="True" HorizontalAlign="Center">
                     </EditForm>
                 </SettingsPopup>
                 <StylesPopup>
                     <EditForm>
                         <Content HorizontalAlign="Center" VerticalAlign="Middle">
                         </Content>
                     </EditForm>
                 </StylesPopup>
                 <EditFormLayoutProperties ColCount="2">
                     <Items>
                         <dx:GridViewColumnLayoutItem ColumnName="title">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="number_сounters">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="modlel">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="Coefficient">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="type">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="Поставщик">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="active">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="comment">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="Tranzit">
                         </dx:GridViewColumnLayoutItem>
                         <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right">
                         </dx:EditModeCommandLayoutItem>
                     </Items>
                 </EditFormLayoutProperties>
                 <Columns>
                     <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" ButtonRenderMode="Image" ButtonType="Image">
                     </dx:GridViewCommandColumn>
                     <dx:GridViewDataTextColumn FieldName="id" VisibleIndex="1" ReadOnly="True" Caption="№">
<EditFormSettings Visible="False"></EditFormSettings>
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataTextColumn FieldName="title" VisibleIndex="2" GroupIndex="0" SortIndex="0" SortOrder="Ascending" Caption="Здание" ReadOnly="True">
<EditFormSettings Visible="False"></EditFormSettings>
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataTextColumn FieldName="number_сounters" VisibleIndex="3" Caption="№ счетчика">
                     <editformsettings visible="False" />
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataTextColumn FieldName="modlel" VisibleIndex="4" Caption="Модель счетчика" Visible="False">
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataCheckColumn FieldName="Tranzit" VisibleIndex="7" Caption="Транзит" Visible="False">
                     </dx:GridViewDataCheckColumn>
                     <dx:GridViewDataTextColumn FieldName="Coefficient" VisibleIndex="8" Caption="Коффициент" Visible="False">
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataCheckColumn FieldName="active" VisibleIndex="9" Caption="ВКЛ">
                     </dx:GridViewDataCheckColumn>
                     <dx:GridViewDataComboBoxColumn FieldName="type" VisibleIndex="5" Caption="Ресурс">
                          <PropertiesComboBox DisplayFormatString="g">
                            <Items>
                                <dx:ListEditItem Text="Газ" Value="Газ" />
                                <dx:ListEditItem Text="Вода холодна" Value="Вода холодна" />
                                <dx:ListEditItem Text="Водя гаряча" Value="Водя гаряча" />
                                <dx:ListEditItem Text="Теплова енергія" Value="Теплова енергія" />
                                <dx:ListEditItem Text="Електроенергія" Value="Електроенергія" />
                            </Items>
                        </PropertiesComboBox>
                     </dx:GridViewDataComboBoxColumn>
                     <dx:GridViewDataTextColumn Caption="Комментарий" FieldName="comment" VisibleIndex="10">
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataComboBoxColumn Caption="Поставщик" FieldName="tarif" Visible="False" VisibleIndex="6">
                        <PropertiesComboBox>
                            <Items>
                                <dx:ListEditItem Text="Херсонводоканал" Value="Херсонводоканал" />
                                <dx:ListEditItem Text="МКП Херсонтеплоенерго" Value="МКП Херсонтеплоенерго" />
                                <dx:ListEditItem Text="ПП Херсонтеплогенерация" Value="ПП Херсонтеплогенерация" />
                                <dx:ListEditItem Text="АТ Херсонська ТЕЦ" Value="АТ Херсонська ТЕЦ" />
                                <dx:ListEditItem Text="ПСМНП Газкотлоспецмонтажналадка" Value="ПСМНП Газкотлоспецмонтажналадка" />
                                <dx:ListEditItem Text="ПАТ ЕК Херсонобленерго" Value="ПАТ ЕК Херсонобленерго" />
                                <dx:ListEditItem Text="ПАТ ХерсонГаз" Value="ПАТ ХерсонГаз" />
                            </Items>
                        </PropertiesComboBox>
                     </dx:GridViewDataComboBoxColumn>
                 </Columns>
               
                <Styles>
                    <GroupRow HorizontalAlign="Left">
                    </GroupRow>
                </Styles>
            </dx:ASPxGridView>

       
            <asp:SqlDataSource ID="SqlDataSource_countres" runat="server" ConnectionString="<%$ ConnectionStrings:xesko_data %>" ProviderName="<%$ ConnectionStrings:xesko_data.ProviderName %>" 
            SelectCommand="SELECT countres.id,building.title, countres.number_сounters,countres.modlel,countres.type,countres.tarif ,countres.Tranzit,countres.Coefficient,countres.active,countres.comment FROM countres
   LEFT JOIN building  ON countres.id_building=building.id
WHERE (countres.id_building IN (SELECT id_building FROM user_atributes WHERE (id_user = ?)))" 
            UpdateCommand="UPDATE countres AS c, building AS b
                    SET 
                    b.title = ?, 
                    c.number_сounters = ?, 
                    c.modlel = ?, 
                    c.type = ?, 
                    c.Tranzit = ?, 
                    c.Coefficient = ?, 
                    c.active= ?, 
                    c.comment = ? 
                    WHERE c.id_building = b.id AND c.id = ?">
                 
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="id_user" Type="Int32" />
            </SelectParameters>

             <UpdateParameters>
                    <asp:Parameter Name="title" Type="String" />
					<asp:Parameter Name="number_сounters" Type="String" />
			        <asp:Parameter Name="modlel" Type="String" />
					<asp:Parameter Name="type" Type="String" />
					<asp:Parameter Name="Tranzit" Type="Boolean" />				
					<asp:Parameter Name="Coefficient" Type="decimal" />
					<asp:Parameter Name="active" Type="Boolean" />
					<asp:Parameter Name="comment" Type="String" />
                </UpdateParameters>
        </asp:SqlDataSource>   

        </div>
    </form>
</body>
</html> 
