<%@ Page EnableEventValidation="true" Title="ADMIN PANEL - Kleo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Finans"  %>
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
                                <dx:NavBarGroup Text="ФИНАНСЫ" >
                                 <Items>
                                        <dx:NavBarItem NavigateUrl="Tarif.aspx" Selected="True" Text="Тарифы">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="work.aspx"   Text="Льготы">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="work.aspx"  Text="Документы">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="work.aspx" Text="Ресурсы">
                                        </dx:NavBarItem>
                                         <dx:NavBarItem NavigateUrl="work.aspx" Text="Исчисления">
                                        </dx:NavBarItem>
                                </Items>
                                </dx:NavBarGroup>
 
 
                            </Groups>
                            <Paddings Padding="0px"></Paddings>
                             <%-- menu --%>
                            <Groups>
                                <dx:NavBarGroup Text="Отчеты"  >
                                 <Items>
                                        <dx:NavBarItem NavigateUrl="work.aspx"  Text="Фин отчеты">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="work.aspx"   Text="Графики">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="work.aspx"  Text="Сводные таблицы">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="a_fin_report.aspx"  Text="Отчет за год">
                                        </dx:NavBarItem>
                                      
                                </Items>
                                </dx:NavBarGroup>
                            </Groups>
                            <Paddings Padding="0px"></Paddings>
                           <%-- menu --%>
                            <Groups>
                                <dx:NavBarGroup Text="Структура" >
                                 <Items>
                                        <dx:NavBarItem NavigateUrl="a_user.aspx" Text="Пользователи">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="work.aspx"   Text="Здания">
                                        </dx:NavBarItem>
                                        <dx:NavBarItem NavigateUrl="work.aspx"  Text="Счетчики">
                                        </dx:NavBarItem>
                                </Items>
                                </dx:NavBarGroup>
                            </Groups>
                           <%-- menu --%>

                                  <Groups>
                                <dx:NavBarGroup Text="Внешние модули" Expanded="False">
                                 <Items>
                                        <dx:NavBarItem NavigateUrl="work.aspx"   Text="Сборщик температуры">
                                        </dx:NavBarItem>
                                       
                                </Items>
                                </dx:NavBarGroup>
                            </Groups>
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

