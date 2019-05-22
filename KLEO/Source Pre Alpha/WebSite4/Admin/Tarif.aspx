<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tarif.aspx.cs" Inherits="Tarif" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
    </style>
</head>
<body>
  
    <form id="form1" runat="server">

        <asp:Literal runat="server" ID="ErrorMessage" />
        <div class="dx-ar">

          

            

<fieldset>
<legend>Ручной пересчет всех показаний</legend>
 <dx:BootstrapButton ID="BootstrapButton1" runat="server" AutoPostBack="false" Text="ПЕРЕСЧИТАТЬ ВСЕ !" Width="250px" OnClick="BootstrapButton1_Click" ></dx:BootstrapButton>

            <dx:ASPxProgressBar ID="ASPxProgressBar1" runat="server" Position="1" Width="100%" Theme="Office2010Blue" DisplayMode="Position" Animated="true" ValidateRequestMode="Enabled" ViewStateMode="Enabled" />
            </dx:ASPxProgressBar>
</fieldset>
            <br>
             </br>
             
            <dx:ASPxGridView ID="GridView_Tarif" runat="server" AutoGenerateColumns="False" DataSourceID="Tarif_sql" Theme="Office2010Blue"  Width="100%" EnableTheming="True" KeyFieldName="id" CssClass="auto-style1">
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
            <Image Url="~/Images/button_cancel_18572.png" Width="50px">
            </Image>
        </CancelButton>
        <UpdateButton>
            <Image Url="~/Images/save_button.png"  Width="50px">
            </Image>
        </UpdateButton>
    </SettingsCommandButton>
                
                <SettingsPager AlwaysShowPager="True" ShowEmptyDataRows="True" Mode="ShowAllRecords">
                </SettingsPager>
                
                <Settings ShowGroupPanel="True" VerticalScrollableHeight="50" />
                <SettingsBehavior AllowFocusedRow="True" />
                <EditFormLayoutProperties ColCount="2">
                    <Items>
                        <dx:GridViewColumnLayoutItem ColumnName="CivilBusines">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="Type">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="City">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="Organization">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="Tarif">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="EdIzmereniya">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="DateStart">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="Comment">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="Postanova">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="Link">
                        </dx:GridViewColumnLayoutItem>
                        <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Center">
                        </dx:EditModeCommandLayoutItem>
                    </Items>
                </EditFormLayoutProperties>
                <Columns>
                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0"  Width="130" ButtonRenderMode="Image" ButtonType="Image">
                      
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="id" VisibleIndex="1" ReadOnly="True" Width="30px" ShowInCustomizationForm="True">
                        <EditFormSettings Visible="False" />
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CivilBusines" VisibleIndex="2" Width="80px" ShowInCustomizationForm="True" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Type" VisibleIndex="3" Caption="Ресурс" Width="80px" ShowInCustomizationForm="True">
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="City" VisibleIndex="4" Caption="Город" Width="60px" ShowInCustomizationForm="True">
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Organization" VisibleIndex="5" Width="140px" ShowInCustomizationForm="True">
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Tarif" VisibleIndex="6" Width="70px" ShowInCustomizationForm="True">
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EdIzmereniya" VisibleIndex="7" Caption="Изм." Width="20px" ShowInCustomizationForm="True">
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="DateStart" VisibleIndex="8" Width="80">
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="Comment" VisibleIndex="9" Width="140px" ShowInCustomizationForm="True">
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>

                    <dx:GridViewDataTextColumn FieldName="Postanova" VisibleIndex="10" Width="140px" ShowInCustomizationForm="True" >
                         <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>

                    <dx:GridViewDataHyperLinkColumn FieldName="Link" VisibleIndex="11" Width="70px">
                        <PropertiesHyperLinkEdit ImageUrl="~/Images/link.png" ImageWidth="60px">
                        </PropertiesHyperLinkEdit>
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataHyperLinkColumn>
                 
                </Columns>
                 <SettingsBehavior ConfirmDelete="True" />
                 <SettingsText ConfirmDelete="Точно удалить ?" />

                <Styles>
                    <GroupPanel HorizontalAlign="Left">
                    </GroupPanel>
                </Styles>

            </dx:ASPxGridView>

            <asp:SqlDataSource ID="Tarif_sql" runat="server" ConnectionString="<%$ ConnectionStrings:xesko_data %>" ProviderName="<%$ ConnectionStrings:xesko_data.ProviderName %>" 
                SelectCommand="SELECT * FROM [tarif] ORDER BY [id]" 
                DeleteCommand="DELETE FROM [tarif] WHERE [id] = ?" 
                InsertCommand="INSERT INTO [tarif] ([id], [CivilBusines], [Type], [City], [Organization], [Tarif], [EdIzmereniya], [DateStart], [Comment]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" 
                OldValuesParameterFormatString="original_{0}" 
                UpdateCommand="UPDATE [tarif] SET [CivilBusines] = ?, [Type] = ?, [City] = ?, [Organization] = ?, [Tarif] = ?, [EdIzmereniya] = ?, [DateStart] = ?, [Comment] = ? WHERE [id] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="CivilBusines" Type="String" />
                    <asp:Parameter Name="Type" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Organization" Type="String" />
                    <asp:Parameter Name="Tarif" Type="decimal" />
                    <asp:Parameter Name="EdIzmereniya" Type="String" />
                    <asp:Parameter Name="DateStart" Type="DateTime" />
                    <asp:Parameter Name="Comment" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CivilBusines" Type="String" />
                    <asp:Parameter Name="Type" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Organization" Type="String" />
                    <asp:Parameter Name="Tarif" Type="decimal" />
                    <asp:Parameter Name="EdIzmereniya" Type="String" />
                    <asp:Parameter Name="DateStart" Type="DateTime" />
                    <asp:Parameter Name="Comment" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

         

        </div>
       
    </form>
</body>
</html>
