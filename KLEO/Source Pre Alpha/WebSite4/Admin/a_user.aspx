<%@ Page Language="C#" AutoEventWireup="true" CodeFile="a_user.aspx.cs" Inherits="Admin_a_user" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
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
            <dx:ASPxButton ID="button_register" runat="server" Text="Регистрация нового пользователя" ></dx:ASPxButton>
            <br/>


            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sql_a_user" EnableTheming="True" KeyFieldName="id" Theme="Default" Width="100%">
                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                <SettingsSearchPanel Visible="True" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="login" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="email" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="pass" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="salt" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="unit" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="telephone" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="phs_adress" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ballance" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataCheckColumn FieldName="active" VisibleIndex="9">
                    </dx:GridViewDataCheckColumn>
                    <dx:GridViewDataTextColumn FieldName="comment" VisibleIndex="10">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="data_registred" VisibleIndex="11">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="last_login" VisibleIndex="12">
                    </dx:GridViewDataDateColumn>
                </Columns>
            </dx:ASPxGridView>


            <asp:SqlDataSource ID="sql_a_user" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:xesko_data %>" DeleteCommand="DELETE FROM [user] WHERE [id] = ? AND (([login] = ?) OR ([login] IS NULL AND ? IS NULL)) AND (([email] = ?) OR ([email] IS NULL AND ? IS NULL)) AND (([pass] = ?) OR ([pass] IS NULL AND ? IS NULL)) AND (([salt] = ?) OR ([salt] IS NULL AND ? IS NULL)) AND (([unit] = ?) OR ([unit] IS NULL AND ? IS NULL)) AND (([ballance] = ?) OR ([ballance] IS NULL AND ? IS NULL)) AND (([active] = ?) OR ([active] IS NULL AND ? IS NULL)) AND (([comment] = ?) OR ([comment] IS NULL AND ? IS NULL)) AND (([data_registred] = ?) OR ([data_registred] IS NULL AND ? IS NULL)) AND (([last_login] = ?) OR ([last_login] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [user] ([id], [login], [email], [pass], [salt], [unit], [ballance], [active], [comment], [data_registred], [last_login]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:xesko_data.ProviderName %>" SelectCommand="SELECT * FROM [user] ORDER BY [login]" UpdateCommand="UPDATE [user] SET [login] = ?, [email] = ?, [pass] = ?, [salt] = ?, [unit] = ?, [ballance] = ?, [active] = ?, [comment] = ?, [data_registred] = ?, [last_login] = ? WHERE [id] = ? AND (([login] = ?) OR ([login] IS NULL AND ? IS NULL)) AND (([email] = ?) OR ([email] IS NULL AND ? IS NULL)) AND (([pass] = ?) OR ([pass] IS NULL AND ? IS NULL)) AND (([salt] = ?) OR ([salt] IS NULL AND ? IS NULL)) AND (([unit] = ?) OR ([unit] IS NULL AND ? IS NULL)) AND (([ballance] = ?) OR ([ballance] IS NULL AND ? IS NULL)) AND (([active] = ?) OR ([active] IS NULL AND ? IS NULL)) AND (([comment] = ?) OR ([comment] IS NULL AND ? IS NULL)) AND (([data_registred] = ?) OR ([data_registred] IS NULL AND ? IS NULL)) AND (([last_login] = ?) OR ([last_login] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_login" Type="String" />
                    <asp:Parameter Name="original_login" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_pass" Type="String" />
                    <asp:Parameter Name="original_pass" Type="String" />
                    <asp:Parameter Name="original_salt" Type="Object" />
                    <asp:Parameter Name="original_salt" Type="Object" />
                    <asp:Parameter Name="original_unit" Type="String" />
                    <asp:Parameter Name="original_unit" Type="String" />
                    <asp:Parameter Name="original_ballance" Type="Double" />
                    <asp:Parameter Name="original_ballance" Type="Double" />
                    <asp:Parameter Name="original_active" Type="Object" />
                    <asp:Parameter Name="original_active" Type="Object" />
                    <asp:Parameter Name="original_comment" Type="String" />
                    <asp:Parameter Name="original_comment" Type="String" />
                    <asp:Parameter Name="original_data_registred" Type="DateTime" />
                    <asp:Parameter Name="original_data_registred" Type="DateTime" />
                    <asp:Parameter Name="original_last_login" Type="DateTime" />
                    <asp:Parameter Name="original_last_login" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="login" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="pass" Type="String" />
                    <asp:Parameter Name="salt" Type="Object" />
                    <asp:Parameter Name="unit" Type="String" />
                    <asp:Parameter Name="ballance" Type="Double" />
                    <asp:Parameter Name="active" Type="Object" />
                    <asp:Parameter Name="comment" Type="String" />
                    <asp:Parameter Name="data_registred" Type="DateTime" />
                    <asp:Parameter Name="last_login" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="login" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="pass" Type="String" />
                    <asp:Parameter Name="salt" Type="Object" />
                    <asp:Parameter Name="unit" Type="String" />
                    <asp:Parameter Name="ballance" Type="Double" />
                    <asp:Parameter Name="active" Type="Object" />
                    <asp:Parameter Name="comment" Type="String" />
                    <asp:Parameter Name="data_registred" Type="DateTime" />
                    <asp:Parameter Name="last_login" Type="DateTime" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_login" Type="String" />
                    <asp:Parameter Name="original_login" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_pass" Type="String" />
                    <asp:Parameter Name="original_pass" Type="String" />
                    <asp:Parameter Name="original_salt" Type="Object" />
                    <asp:Parameter Name="original_salt" Type="Object" />
                    <asp:Parameter Name="original_unit" Type="String" />
                    <asp:Parameter Name="original_unit" Type="String" />
                    <asp:Parameter Name="original_ballance" Type="Double" />
                    <asp:Parameter Name="original_ballance" Type="Double" />
                    <asp:Parameter Name="original_active" Type="Object" />
                    <asp:Parameter Name="original_active" Type="Object" />
                    <asp:Parameter Name="original_comment" Type="String" />
                    <asp:Parameter Name="original_comment" Type="String" />
                    <asp:Parameter Name="original_data_registred" Type="DateTime" />
                    <asp:Parameter Name="original_data_registred" Type="DateTime" />
                    <asp:Parameter Name="original_last_login" Type="DateTime" />
                    <asp:Parameter Name="original_last_login" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>


        </div>
    </form>
</body>
</html>
