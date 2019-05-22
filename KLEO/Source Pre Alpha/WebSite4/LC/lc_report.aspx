<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lc_report.aspx.cs" Inherits="LC_lc_report" %>

<%@ Register Assembly="DevExpress.XtraReports.v17.2.Web, Version=17.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


 
<%@ Register assembly="DevExpress.XtraReports.v17.2.Web, Version=17.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraReports.Web.WebDocumentViewer" tagprefix="cc1" %>


 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br>

            <dx:ASPxWebDocumentViewer ID="ASPxWebDocumentViewer1" runat="server" DisableHttpHandlerValidation="False" ReportSourceId="report_tarif">
                <MenuItems>
                    <cc1:WebDocumentViewerMenuItem>
                    </cc1:WebDocumentViewerMenuItem>
                </MenuItems>
            </dx:ASPxWebDocumentViewer>
        </div>
    </form>
</body>
</html>
