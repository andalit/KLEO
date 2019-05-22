<%@ Page EnableEventValidation="true" Title="Личный кабинет" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Finans"  %>
<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 
 <h2><%: Title %></h2>
 
<dx:ASPxSplitter ID="ASPxSplitter1" ClientInstanceName="splitter" runat="server" Height="750px"    Theme="Office2010Blue">
        <Panes>
            <dx:SplitterPane Size="180px" MinSize="180px" ShowCollapseBackwardButton="True" ScrollBars="Auto">
                <ContentCollection>
                    <dx:SplitterContentControl runat="server">
                        <dx:ASPxNavBar runat="server" AllowSelectItem="True" Target="contentUrlPane" Width="100%"
                            ID="ASPxNavBar1" Theme="Office2010Black">
                             <%-- menu --%>
                            <Groups>
                                <dx:NavBarGroup Text="Информация" Expanded="True">
                                 <Items>
                                        <dx:NavBarItem NavigateUrl="lc_news.aspx" Text="Новости" Selected="True" >
                                        </dx:NavBarItem>   
                                        <dx:NavBarItem NavigateUrl="lc_tarif_postavhika.aspx" Text="Тарифы поставщиков">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="work.aspx" Text="Многотарифные зоны">
                                        </dx:NavBarItem>
                                        

                                </Items>
                                </dx:NavBarGroup>
                            </Groups>
                            <Paddings Padding="0px"></Paddings>
                             <%-- menu --%>
                            <Groups>
                                <dx:NavBarGroup Text="Отчеты">
                                 <Items>
                                        <dx:NavBarItem NavigateUrl="lc_potreblenie.aspx" Text="Потребление за месяц">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="lc_report.aspx"  Text="Отчет по тарифам">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="work.aspx"  Text="Фин отчет">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="work.aspx"  Text="Енергоефективность">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="work.aspx"  Text="Графики">
                                        </dx:NavBarItem>
                                </Items>
                                </dx:NavBarGroup>
                            </Groups>
                            <Paddings Padding="0px"></Paddings>
                           <%-- menu --%>
                                  <Groups>
                                <dx:NavBarGroup Text="Настройки">
                                 <Items>
                                        <dx:NavBarItem NavigateUrl="lc_account.aspx"  Text="Аккаунт">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="lc_building.aspx" Text="Здания">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="lc_counter.aspx" Text="Счетчики">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="work.aspx" Text="Поверки счетчиков">
                                        </dx:NavBarItem>
                                </Items>
                                </dx:NavBarGroup>
                            </Groups>
                            <Paddings Padding="0px"></Paddings>
                           <%-- menu --%>
                         </dx:ASPxNavBar>
                    </dx:SplitterContentControl>
                </ContentCollection>
            </dx:SplitterPane>
            <dx:SplitterPane Name="ContentUrlPane" ScrollBars="Auto" ContentUrlIFrameName="contentUrlPane">
                <ContentCollection>
                    <dx:SplitterContentControl runat="server">
                    </dx:SplitterContentControl>
                </ContentCollection>
            </dx:SplitterPane>
        </Panes>
    </dx:ASPxSplitter>
 
    </asp:Content>

