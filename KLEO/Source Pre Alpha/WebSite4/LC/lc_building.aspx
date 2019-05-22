<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lc_building.aspx.cs" Inherits="LC_lc_building" %>

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
            
           <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource_building" EnableTheming="True" KeyFieldName="id" Theme="SoftOrange" hight="100%" Width="100%">
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
                         <dx:GridViewColumnLayoutItem ColumnName="floor">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="year">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="city">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="address">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="area">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="volume">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="heated_area">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="height">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="heating">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="people_work">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="people_notwork">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="comment">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="lease">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="personal">
                         </dx:GridViewColumnLayoutItem>
                         <dx:GridViewColumnLayoutItem ColumnName="clients">
                         </dx:GridViewColumnLayoutItem>
                         <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right">
                         </dx:EditModeCommandLayoutItem>
                     </Items>
                 </EditFormLayoutProperties>
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="title" VisibleIndex="2" Caption="Название">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="floor" VisibleIndex="3" Caption="Этажей" Visible="False" >
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="year" VisibleIndex="4" Caption="Год постройки" Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="city" VisibleIndex="5" Caption="Город">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="address" VisibleIndex="6" Caption="Адрес">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="area" VisibleIndex="7" Caption="Площадь здания">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="volume" VisibleIndex="8" Caption="Объем" Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="heated_area" VisibleIndex="9" Caption="Отопительная площадь" Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="height" VisibleIndex="10" Caption="Высота здания" Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="heating" VisibleIndex="11" Caption="Тип отопления" Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="people_work" VisibleIndex="12" Caption="Людей в раб время" Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="people_notwork" VisibleIndex="13" Caption="Людей в нераб время" Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="comment" VisibleIndex="14" Caption="Комментарий">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="lease" VisibleIndex="15" Caption="Арендованная площадь" Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="clients" VisibleIndex="17" Caption="Клиентов" Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="personal" VisibleIndex="16" Caption="Персонал" Visible="False">
                    </dx:GridViewDataTextColumn>
                    
                    <dx:GridViewDataTextColumn FieldName="id" VisibleIndex="1" ReadOnly="True" Caption="№">
                    <EditFormSettings Visible="False"></EditFormSettings>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0" ButtonRenderMode="Image" ButtonType="Image">
                    </dx:GridViewCommandColumn>
                    
                </Columns>
               
                <Styles>
                    <GroupRow HorizontalAlign="Left">
                    </GroupRow>
                </Styles>
            </dx:ASPxGridView>

       
            <asp:SqlDataSource ID="SqlDataSource_building" runat="server" ConnectionString="<%$ ConnectionStrings:xesko_data %>" ProviderName="<%$ ConnectionStrings:xesko_data.ProviderName %>" 
            SelectCommand="SELECT id,title,floor,year,city,address,area,volume,heated_area,height,heating,people_work,people_notwork,comment,lease,clients,personal FROM building WHERE (id IN (SELECT id_building FROM user_atributes WHERE (id_user = ?)))" 
            UpdateCommand="UPDATE [building] SET [title] = ?, [floor] = ?, [year] = ?, [city] = ?, [address] = ?, [area] = ?, [volume] = ?, [heated_area] = ?, [height] = ?, [heating] = ?, [people_work] = ?, [people_notwork] = ?, [comment] = ?, [lease] = ?, [clients] = ?, [personal] = ? WHERE [id] = ?">
                
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="id_user" Type="Int32" />
            </SelectParameters>
             <UpdateParameters>
                     <asp:Parameter Name="title" Type="String" />
			        <asp:Parameter Name="floor" Type="Int32" />
				    <asp:Parameter Name="year" Type="Int32" />
					<asp:Parameter Name="city" Type="String" />
					<asp:Parameter Name="address" Type="String" />
					<asp:Parameter Name="area" Type="decimal" />
                    <asp:Parameter Name="volume" Type="decimal" />
					<asp:Parameter Name="heated_area" Type="decimal" />
					<asp:Parameter Name="height" Type="decimal" />                 
                    <asp:Parameter Name="heating" Type="String" />
                    <asp:Parameter Name="people_work" Type="Int32" />  
				    <asp:Parameter Name="people_notwork" Type="Int32" />  
				    <asp:Parameter Name="comment" Type="String" />
				  	<asp:Parameter Name="lease" Type="decimal" />
				    <asp:Parameter Name="clients" Type="Int32" />
					 <asp:Parameter Name="personal" Type="Int32" />
                </UpdateParameters>
        </asp:SqlDataSource>   
            
        </div>
    </form>
</body>
</html>
