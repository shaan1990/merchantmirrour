using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ExtValidity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnExtendValidity_Click(object sender, EventArgs e)
    {
        try
        {
            User user = new User();
            user.userid = txtUser.Text;
            user.validupto = Convert.ToDateTime(txtExtendDate.Text);
            user.updateValidity(user);

            divSuccess.Visible = true;
            lblSuccess.InnerText = "Validity Extended Successfully.";
            divError.Visible = false;
            lblError.Visible = false;

            // clear all inputs

            txtUser.Text = string.Empty;
            txtExtendDate.Text = string.Empty;

        }
        catch (Exception ex)
        {
            divError.Visible = true;
            lblError.Visible = true;
            lblError.InnerText = "Failed to extend the validity." + ex.Message.ToString();
            divSuccess.Visible = false;
        }

    }
}