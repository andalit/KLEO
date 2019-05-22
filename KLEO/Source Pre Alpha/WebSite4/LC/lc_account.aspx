<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lc_account.aspx.cs" Inherits="LC_lc_account" %>
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

                        Здесь Вы можете изменить ВАШУ информацию Контактный e-mail, телефоны и рабочий график. 
             <br></br>
            
           <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource_account" EnableTheming="True" Theme="SoftOrange" hight="100%" Width="100%" KeyFieldName="id">
                 <SettingsContextMenu EnableColumnMenu="False">
            </SettingsContextMenu>
                <SettingsCommandButton>                
        <EditButton>
            <Image Url="~/Images/edit-icon-png-3597.png" Width="20px">
            </Image>
        </EditButton>
        <NewButton>
            <Image Url="~/Images/Add_img16.png">
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
            <Settings ShowFooter="True"  />
 
                 <SettingsBehavior AllowFocusedRow="True" />
            <SettingsDataSecurity AllowDelete="False" AllowInsert="False" />
                 <SettingsPopup>
                     <EditForm AllowResize="True" PopupAnimationType="Slide" ShowShadow="True" HorizontalAlign="LeftSides">
                     </EditForm>
                 </SettingsPopup>
                 <EditFormLayoutProperties ColCount="2">
                     <Items>
                         <dx:GridViewColumnLayoutItem ColumnName="title">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="worktime">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="weekend">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="tel_office">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="boss">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="boss_tel">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="manager">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="manager_tel">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="email">
                         </dx:GridViewColumnLayoutItem>
                         <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right">
                         </dx:EditModeCommandLayoutItem>
                     </Items>
                 </EditFormLayoutProperties>


                 <Columns>
                     <dx:GridViewCommandColumn ButtonRenderMode="Image" ButtonType="Image" ShowEditButton="True" VisibleIndex="0" Width="20px">
                     </dx:GridViewCommandColumn>
                     <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" VisibleIndex="1" Caption="№" ShowInCustomizationForm="True" Width="20px">
                         <EditFormSettings Visible="False" />
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataTextColumn FieldName="title" ReadOnly="True" VisibleIndex="2" Caption="Здание" ShowInCustomizationForm="True"  >
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataTextColumn FieldName="city"  ReadOnly="True" VisibleIndex="3" Caption="Город" ShowInCustomizationForm="True" Width="100px">
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataTextColumn FieldName="address" ReadOnly="True" VisibleIndex="4" Caption="Адрес" ShowInCustomizationForm="True" Width="200px">
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataTextColumn FieldName="worktime" VisibleIndex="5" Caption="Рабочее время" ShowInCustomizationForm="True" Visible="False">
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataTextColumn FieldName="weekend" VisibleIndex="6" Caption="Выходные" ShowInCustomizationForm="True" Visible="False">
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataTextColumn FieldName="tel_office" VisibleIndex="7" Caption="тел. приемной" ShowInCustomizationForm="True" Visible="False">
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataTextColumn FieldName="boss" VisibleIndex="8" Caption="Ф.И.О. Директора" ShowInCustomizationForm="True" Visible="False">
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataTextColumn FieldName="boss_tel" VisibleIndex="9" Caption="тел.  Директора" ShowInCustomizationForm="True" Visible="False">
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataTextColumn FieldName="manager" VisibleIndex="10" Caption="Ф.И.О. Ваши" ShowInCustomizationForm="True" Visible="False">
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataTextColumn FieldName="manager_tel" VisibleIndex="11" Caption="тел. Ваш" ShowInCustomizationForm="True" Visible="False">
                     </dx:GridViewDataTextColumn>
                     <dx:GridViewDataTextColumn FieldName="email" VisibleIndex="12" Caption="Ваш рабочий e-mail" ShowInCustomizationForm="True" Visible="False">
                     </dx:GridViewDataTextColumn>
                 </Columns>


                <Styles>
                    <GroupRow HorizontalAlign="Left">
                    </GroupRow>
                </Styles>
            </dx:ASPxGridView>


            <asp:SqlDataSource ID="SqlDataSource_account" runat="server" ConnectionString="<%$ ConnectionStrings:xesko_data %>" ProviderName="<%$ ConnectionStrings:xesko_data.ProviderName %>" 
            SelectCommand="SELECT id,title,`city`,`address`,`worktime`,`weekend`,`tel_office`,`boss`,`boss_tel`,`manager`,`manager_tel`,`email`  FROM building WHERE (id IN (SELECT id_building FROM user_atributes WHERE (id_user = ?)))" 
           UpdateCommand="UPDATE [building] SET [worktime] = ?, [weekend] = ?, [tel_office] = ?, [boss] = ?, [boss_tel] = ?, [manager] = ?, [manager_tel] = ?, [email] = ? WHERE [id] = ?">
                
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="id_user" Type="Int32" />
            </SelectParameters>
             <UpdateParameters>
                    <asp:Parameter Name="worktime" Type="String" />
			        <asp:Parameter Name="weekend" Type="String" />
				    <asp:Parameter Name="tel_office" Type="String" />
					<asp:Parameter Name="boss" Type="String" />
					<asp:Parameter Name="boss_tel" Type="String" />
					<asp:Parameter Name="manager" Type="String" />
                    <asp:Parameter Name="manager_tel" Type="String" />
					<asp:Parameter Name="email" Type="String" />
                </UpdateParameters>
        </asp:SqlDataSource>   
            


        </div>
    </form>
</body>
</html>
