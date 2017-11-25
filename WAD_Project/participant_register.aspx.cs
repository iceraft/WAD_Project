using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class participant_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void chckTshirt_CheckedChanged(object sender, EventArgs e)
    {
        lblSize.Visible = false;
        ddlSize.Visible = false;
        if (chckTshirt.Checked)
        {
            lblSize.Visible = true;
            ddlSize.Visible = true;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Personal Info
        Session["name"] = txtName.Text;
        Session["age"] = txtAge.Text;
        Session["ic"] = txtIC.Text;
        Session["contact"] = txtNum.Text;
        Session["email"] = txtEmail.Text;

        // Package Info
        String rb = "";

        if (rb3km.Checked)
        {
            rb = rb3km.Text;
        }
        else if (rb5km.Checked)
        {
            rb = rb5km.Text;
        }
        else if (rb10km.Checked)
        {
            rb = rb10km.Text;
        }
        else if (rb15km.Checked)
        {
            rb = rb15km.Text;
        }

        Session["distance"] = rb;

        // Add-Ons

        String addons = "";

        if (chckMedal.Checked)
        {
            addons = addons + "medal<br />";
        }
        if (chckTshirt.Checked)
        {
            addons = addons + "T-Shirt<br />";
        }
        if (chckCap.Checked)
        {
            addons = addons + "Cap<br />";
        }
        if (chckBag.Checked)
        {
            addons = addons + "Bag<br />";
        }
        if (chckBfast.Checked)
        {
            addons = addons + "BreakFast Set<br />";
        }

        Session["addons"] = addons;

        // Test
        String test = "";

        for (int i = 0; i < Session.Count; i++)
        {
            var crntSession = Session.Keys[i];
            test = test + string.Concat(crntSession, "=", Session[crntSession]) + "<br />";
        }

        Label1.Text = test;
    }
}