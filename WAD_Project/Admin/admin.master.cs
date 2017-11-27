﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            lblName.Text = Session["name"].ToString();
        }
        else
            Response.Redirect("../landing_page.aspx");
    }
    protected void btmLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("../landing_page.aspx");
    }
}
