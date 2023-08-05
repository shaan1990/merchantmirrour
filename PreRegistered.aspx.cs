using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    private User user = new User();
    protected void Page_Load(object sender, EventArgs e)
    {
        grvPreRegisteredLists.DataSource = getAllPreRegisteredUsers();
        grvPreRegisteredLists.DataBind();
    }

    public DataSet getAllPreRegisteredUsers()
    {
        return user.LoadAllPreRegisteredUsers();
    }

    protected void grvPreRegisteredLists_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = grvPreRegisteredLists.SelectedRow;
        txtName.Text = row.Cells[0].Text;
        txtContact.Text = row.Cells[1].Text;
        txtEmail.Text = row.Cells[3].Text;
        txtPAN.Text = row.Cells[5].Text;
        txtAdhaar.Text = row.Cells[6].Text;
        txtVoterIdentity.Text = row.Cells[7].Text;

    }
    protected void btnUpdateRegistration_Click(object sender, EventArgs e)
    {
        try
        {
            user.name = txtName.Text;
            user.email = txtEmail.Text;
            user.contact = txtContact.Text;
            user.pan = txtPAN.Text;
            user.adhaar = txtAdhaar.Text;
            user.voterid = txtVoterIdentity.Text;

            user.updateRegistration(user);

            lblSuccess.Visible = true;
            lblSuccess.InnerText = "Record Updated Successfully.";
            lblError.Visible = false;

            // RELOAD THE GRIDVIEW
            getAllPreRegisteredUsers();
        }
        catch (Exception ex)
        {
            lblSuccess.Visible = false;
            lblSuccess.InnerText = ex.Message.ToString();
            lblError.Visible = true;
        }
    }
    
}