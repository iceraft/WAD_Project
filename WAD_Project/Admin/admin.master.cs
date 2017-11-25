<<<<<<< HEAD
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
        lblName.Text = Session["name"].ToString();
    }
    protected void btmLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("../landing_page.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {
    }
}
=======
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
        lblName.Text = Session["name"].ToString();
    }
    protected void btmLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("../landing_page.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {
    }
}
>>>>>>> acc6ccb64d724701fe1db38bab17e953940bba57
