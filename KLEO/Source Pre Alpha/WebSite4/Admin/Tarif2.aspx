<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tarif2.aspx.cs" Inherits="Tarif2" %>

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
        <div>

            <dx:ASPxGridView ID="GridView_Tarif" runat="server" AutoGenerateColumns="False" DataSourceID="Tarif_sql" Theme="Office2010Blue" Width="100%" EnableTheming="True" KeyFieldName="id" CssClass="auto-style1">
                <Settings ShowGroupPanel="True" />
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
                        <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right">
                        </dx:EditModeCommandLayoutItem>
                    </Items>
                </EditFormLayoutProperties>
                <Columns>
                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="id" VisibleIndex="1" ReadOnly="True">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Tarif" VisibleIndex="6">
                        <SettingsHeaderFilter>
                            <DateRangePickerSettings DisplayFormatString="C">
                            </DateRangePickerSettings>
                        </SettingsHeaderFilter>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="DateStart" VisibleIndex="8">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="Comment" VisibleIndex="9">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="CivilBusines" UnboundType="String" VisibleIndex="2">
                        <PropertiesComboBox DisplayFormatString="g" EnableFocusedStyle="False" IncrementalFilteringMode="StartsWith">
                            <Items>
                                <dx:ListEditItem Text="Організація" Value="Організація" />
                                <dx:ListEditItem Text="Населення" Value="Населення" />
                            </Items>
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="EdIzmereniya" VisibleIndex="7">
                        <PropertiesComboBox>
                            <Items>
                                <dx:ListEditItem Text="м³" Value="м³" />
                                <dx:ListEditItem Text="кВт*годин" Value="кВт*годин" />
                                <dx:ListEditItem Text="Гкал" Value="Гкал" />
                            </Items>
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="Type" VisibleIndex="3">
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
                    <dx:GridViewDataComboBoxColumn FieldName="Organization" VisibleIndex="5">
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
                    <dx:GridViewDataComboBoxColumn FieldName="City" VisibleIndex="4">
                        <PropertiesComboBox>
                            <Items>
                                <dx:ListEditItem Text="Херсон" Value="Херсон" />
                                <dx:ListEditItem Text="Киев" Value="Киев" />
                                <dx:ListEditItem Text="Николаев" Value="Николаев" />
                            </Items>
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                </Columns>
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
