<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lc_poverki.aspx.cs" Inherits="LC_lc_poverki" %>
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
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="sql_poverki" Width="100%" AutoGenerateColumns="False">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="title" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="number_сounters" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="date" VisibleIndex="2">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="pokazanie" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="difference" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="money" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="sql_poverki" runat="server" ConnectionString="<%$ ConnectionStrings:xesko_data %>" 
                DeleteCommand="DELETE FROM [poverki] WHERE [id] = ? AND (([money] = ?) OR ([money] IS NULL AND ? IS NULL)) AND (([difference] = ?) OR ([difference] IS NULL AND ? IS NULL)) AND (([pokazanie] = ?) OR ([pokazanie] IS NULL AND ? IS NULL)) AND (([date] = ?) OR ([date] IS NULL AND ? IS NULL)) AND [id_countres] = ?" 
                InsertCommand="INSERT INTO [poverki] ([money], [difference], [pokazanie], [date], [id_countres], [id]) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:xesko_data.ProviderName %>" 
                SelectCommand="SELECT building.title, countres.`number_сounters`, poverki.`date`, poverki.pokazanie, poverki.difference, poverki.money FROM building INNER JOIN user_atributes ON building.id = user_atributes.id_building INNER JOIN countres ON building.id = countres.id_building INNER JOIN poverki ON countres.id = poverki.id_countres WHERE (user_atributes.id_user = ?)" 
                UpdateCommand="UPDATE [poverki] SET [money] = ?, [difference] = ?, [pokazanie] = ?, [date] = ?, [id_countres] = ? WHERE [id] = ? AND (([money] = ?) OR ([money] IS NULL AND ? IS NULL)) AND (([difference] = ?) OR ([difference] IS NULL AND ? IS NULL)) AND (([pokazanie] = ?) OR ([pokazanie] IS NULL AND ? IS NULL)) AND (([date] = ?) OR ([date] IS NULL AND ? IS NULL)) AND [id_countres] = ?" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">

                 <SelectParameters>
                        <asp:Parameter Name="id_user" Type="Int32" />
                 </SelectParameters>

                    <DeleteParameters>
                        <asp:Parameter Name="original_id" Type="Int32" />
                        <asp:Parameter Name="original_money" Type="Decimal" />
                       
                        <asp:Parameter Name="original_difference" Type="Decimal" />
                  
                        <asp:Parameter Name="original_pokazanie" Type="Decimal" />
                    
                        <asp:Parameter Name="original_date" Type="DateTime" />
         
                        <asp:Parameter Name="original_id_countres" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="money" Type="Decimal" />
                        <asp:Parameter Name="difference" Type="Decimal" />
                        <asp:Parameter Name="pokazanie" Type="Decimal" />
                        <asp:Parameter Name="date" Type="DateTime" />
                        <asp:Parameter Name="id_countres" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </InsertParameters>

                    <UpdateParameters>
                        <asp:Parameter Name="money" Type="Decimal" />
                        <asp:Parameter Name="difference" Type="Decimal" />
                        <asp:Parameter Name="pokazanie" Type="Decimal" />
                        <asp:Parameter Name="date" Type="DateTime" />
                        <asp:Parameter Name="id_countres" Type="Int32" />
                        <asp:Parameter Name="original_id" Type="Int32" />
                       
                        <asp:Parameter Name="original_money" Type="Decimal" />
        
                        <asp:Parameter Name="original_difference" Type="Decimal" />
                        <asp:Parameter Name="original_pokazanie" Type="Decimal" />
                     
                        <asp:Parameter Name="original_date" Type="DateTime" />
           
                        <asp:Parameter Name="original_id_countres" Type="Int32" />
                    </UpdateParameters>

            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
