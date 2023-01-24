<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <dx:ASPxMenu ID="ASPxMenu1" runat="server" 
        DataSourceID="ASPxSiteMapDataSource1">
    </dx:ASPxMenu>
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
    <asp:LoginName ID="LoginName1" runat="server" />
    <dx:ASPxSiteMapControl ID="ASPxSiteMapControl1" runat="server" 
        DataSourceID="ASPxSiteMapDataSource1">
    </dx:ASPxSiteMapControl>
    <asp:Menu ID="Menu1" runat="server" DataSourceID="ASPxSiteMapDataSource1">
    </asp:Menu>
    <dx:ASPxSiteMapDataSource ID="ASPxSiteMapDataSource1" runat="server" 
        EnableRoles="True" SiteMapFileName="~/web.sitemap" />
    </form>
</body>
</html>
