using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Pharma
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginDBConnectionString"].ConnectionString);
        SqlCommand cmd = null;
        SqlDataReader dr = null;
       

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select Password from Login where Username='" +txtUsername.Text+"'", con);
            con.Open();
            dr = cmd.ExecuteReader();
            bool flag = false;
            while (dr.Read())
            {
                if (dr[0].Equals(txtPassword.Text)) {
                    Session["username"] = txtUsername.Text;
                    //lblMsg.Text = "you have successfully logged in";
                    //lblMsg.ForeColor = System.Drawing.Color.Green;
                    Response.Redirect("~/1st.aspx");
                    flag = true;
                }
            }
            if (!flag)
            {
                lblMsg.Text = "Username or Password is incorrect";
                lblMsg.ForeColor= System.Drawing.Color.Red;
            }
            
        }


    }
}