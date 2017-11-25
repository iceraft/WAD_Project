using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class landing_page : System.Web.UI.Page
{
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=dbtest;Integrated Security=True");
        conn.Open();
        cmd = new SqlCommand("SELECT name FROM ADMIN WHERE username='" + txtUsername.Text + "' AND password='" + txtPassword.Text + "'", conn);
        SqlDataReader sdr = cmd.ExecuteReader();

        if(sdr.Read())  
        {
            Session["name"] = sdr["name"];
            Response.Redirect("Admin/admin_main.aspx");
            lblResponse.Text = " "; 

        }  
        else  
        {  
            lblResponse.Text="Invalid Login please check username and password";  
        }  
        conn.Close();  
    }
}