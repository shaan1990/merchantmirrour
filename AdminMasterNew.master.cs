using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminMasterNew : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["User"] == null)
            {
                Session.Remove("User");
                Session.Remove("Role");
                Session.Remove("Name");
                Session.Remove("Validity");

                Session.Abandon();
                Session.Clear();
                Session.RemoveAll();

                Response.Redirect("~/LoginPage.aspx");
                System.Web.Security.FormsAuthentication.SignOut();
            }
        }
    }

    protected void hrLogout_Click(object sender, EventArgs e)
    {
        Session.Remove("User");
        Session.Remove("Role");
        Session.Remove("Name");
        Session.Remove("Validity");

        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();

        FormsAuthentication.SignOut();
        
        Response.Cache.SetCacheability(HttpCacheability.NoCache);

        Response.Cache.SetExpires(DateTime.Now);

        Session.Abandon();

        FormsAuthentication.RedirectToLoginPage();
        
        Response.Redirect("~/LoginPage.aspx");
    }
}
