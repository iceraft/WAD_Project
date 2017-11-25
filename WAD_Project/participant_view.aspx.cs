using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class participant_view : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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