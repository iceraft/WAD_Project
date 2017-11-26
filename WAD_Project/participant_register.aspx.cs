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
        // variables
        int total = 0;

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
            total += 25;
        }
        else if (rb5km.Checked)
        {
            rb = rb5km.Text;
            total += 25;
        }
        else if (rb10km.Checked)
        {
            rb = rb10km.Text;
            total += 40;
        }
        else if (rb15km.Checked)
        {
            rb = rb15km.Text;
            total += 40;
        }

        Session["distance"] = rb;

        // Add-Ons

        String addons = "";

        if (chckMedal.Checked)
        {
            addons = addons + "medal<br />";
            total += 20;
        }
        if (chckTshirt.Checked)
        {
            addons = addons + "T-Shirt<br />";
            total += 20;
        }
        if (chckCap.Checked)
        {
            addons = addons + "Cap<br />";
            total += 10;
        }
        if (chckBag.Checked)
        {
            addons = addons + "Bag<br />";
            total += 30;
        }
        if (chckBfast.Checked)
        {
            addons = addons + "BreakFast Set<br />";
            total += 10;
        }

        Session["addons"] = addons;
        Session["total"] = total;

        // Test
        String test = "";

        for (int i = 0; i < Session.Count; i++)
        {
            var crntSession = Session.Keys[i];
            test = test + string.Concat(crntSession, "=", Session[crntSession]) + "<br />";
        }

        Label1.Text = test;

        Response.Redirect("participant_view.aspx");
    }
    
}