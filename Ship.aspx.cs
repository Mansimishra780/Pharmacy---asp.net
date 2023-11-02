using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Security.Principal;

namespace Pharma
{
    public partial class Ship : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-STGR1U06;Initial Catalog=LoginDB;Integrated Security=True");

        protected void btnGet_Click(object sender, EventArgs e)
        {
            Random r = new Random();
            int num = r.Next();
            txtOrderId.Text = num.ToString();
        }

        protected void btnGive_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand comm = new SqlCommand("select * from Inventory where MedicineID ='" + int.Parse(txtID.Text) + "' ", con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            {
                txtPrice.Text = r.GetValue(2).ToString();
            }
            con.Close();
            
        }

        protected void btnCalc_Click(object sender, EventArgs e)
        {
            con.Open();
            
            float qty, tot, pr;
            qty = float.Parse(txtQty.Text);
            pr = float.Parse(txtPrice.Text);
            tot = qty * pr;
            txtTotal.Text = tot.ToString();
            SqlCommand comm = new SqlCommand("insert into Shipping values('" + int.Parse(txtOrderId.Text) + "','" + txtName.Text + "','" + txtArea.Text + "','" + int.Parse(txtID.Text) + "','" + float.Parse(txtQty.Text) + "','" + float.Parse(txtPrice.Text) + "','" + float.Parse(txtTotal.Text) + "','" + TextBox1.Text + "','"+TextBox2.Text+"')", con) ;
            comm.ExecuteNonQuery();
            
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true); 


        }

        protected void btnReciept_Click(object sender, EventArgs e)
        {
            txtArea.Text = "";
            txtID.Text = "";
            txtName.Text = "";
            txtOrderId.Text = "";
            txtPrice.Text = "";
            txtQty.Text = "";
            txtTotal.Text = "";
            TextBox2.Text = "";
            TextBox1.Text = "";
        }
    }
}