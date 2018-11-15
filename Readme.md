<!-- default file list -->
*Files to look at*:

* [Admin1.aspx](./CS/WebSite/Admin/Admin1.aspx) (VB: [Admin1.aspx](./VB/WebSite/Admin/Admin1.aspx))
* [Admin1.aspx.cs](./CS/WebSite/Admin/Admin1.aspx.cs) (VB: [Admin1.aspx](./VB/WebSite/Admin/Admin1.aspx))
* [Admin2.aspx](./CS/WebSite/Admin/Admin2.aspx) (VB: [Admin2.aspx](./VB/WebSite/Admin/Admin2.aspx))
* [Admin2.aspx.cs](./CS/WebSite/Admin/Admin2.aspx.cs) (VB: [Admin2.aspx](./VB/WebSite/Admin/Admin2.aspx))
* [CustomMembershipProvider.cs](./CS/WebSite/App_Code/CustomMembershipProvider.cs) (VB: [CustomMembershipProvider.vb](./VB/WebSite/App_Code/CustomMembershipProvider.vb))
* [CustomRoleProvider.cs](./CS/WebSite/App_Code/CustomRoleProvider.cs) (VB: [CustomRoleProvider.vb](./VB/WebSite/App_Code/CustomRoleProvider.vb))
* **[Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))**
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Login.aspx](./CS/WebSite/Login.aspx) (VB: [Login.aspx](./VB/WebSite/Login.aspx))
* [Login.aspx.cs](./CS/WebSite/Login.aspx.cs) (VB: [Login.aspx](./VB/WebSite/Login.aspx))
* [User1.aspx](./CS/WebSite/Users/User1.aspx) (VB: [User1.aspx.vb](./VB/WebSite/Users/User1.aspx.vb))
* [User1.aspx.cs](./CS/WebSite/Users/User1.aspx.cs) (VB: [User1.aspx.vb](./VB/WebSite/Users/User1.aspx.vb))
* [User2.aspx](./CS/WebSite/Users/User2.aspx) (VB: [User2.aspx.vb](./VB/WebSite/Users/User2.aspx.vb))
* [User2.aspx.cs](./CS/WebSite/Users/User2.aspx.cs) (VB: [User2.aspx.vb](./VB/WebSite/Users/User2.aspx.vb))
<!-- default file list end -->
# How to use the EnableRoles property in ASPxSiteMapDataSource


<p>Every SiteMapNode has the Roles property. When you assign this property, it is possible to hide/show nodes based on current user roles. To enable this feature for the standard SiteMapDataSource, declare SiteMapProvider and set the SiteMapProvider SecurityTrimmingEnabled to True. In web.config, it will look like this:</p><br />


```xml
<siteMap defaultProvider="XmlSiteMapProvider" enabled="true">
<providers>
    <add name="XmlSiteMapProvider" description="Default SiteMap provider." type="System.Web.XmlSiteMapProvider" siteMapFile="web.sitemap" securityTrimmingEnabled="true"/>
</providers>
</siteMap>


```

<p>This scenario will work for ASPxSiteMapDataSource too even if EnableRoles is set to False (by default, it is so).</p><p>An additional scenario with roles can be invoked for our ASPxSiteMapDataSource when you do not specify XmlSiteMapProvider with the securityTrimmingEnabled property assigned to True, but want to show/hide nodes based on the roles. It is easy to implement such a scenario, simply set the EnableRoles property to True and specify the ASPxSiteMapDataSource.SiteMapFile property. In this case, our own UnboundSiteMapProvider will be created and this provider will work as the standard XmlSiteMapProvider with SecurityTrimmingEnabled assigned to True.</p><p><br />
In short, our EnableRoles property makes sense when you do not create your own SiteMapProvider with enabled security trimming, but want to filter site map nodes based on the current user roles.</p><p>The attached sample illustrates how to use the EnableRoles property in ASPxSiteMapDataSource. Custom RoleProvider and MembershipProvider classes are implemented to provide easy authentication. These custom classes are turned on in web.config and are used by the ASPxSiteMapDataSource. The MembershipProvider descendant makes any user valid. The RoleProvider descendant assigns the admin role to any user that entered 'admin' into the Login form with any password. In web.sitemap the 'admin' role is assigned to the root Admin node that includes the Admin1.aspx and Admin2.aspx pages. As a result, the user sees these admin pages only when he/she is logged in as 'admin' with any password. In other cases, the user sees only user pages.</p>

<br/>


