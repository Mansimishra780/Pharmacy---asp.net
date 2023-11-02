using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace Pharma
{
    public partial class Inventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-STGR1U06;Initial Catalog=LoginDB;Integrated Security=True");
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            
            con.Open();
            SqlCommand comm = new SqlCommand("insert into Inventory values('" + int.Parse(txtID.Text) + "','"+ txtName.Text + "','"+float.Parse(txtPrice.Text)+"','"+txtExpiry.Text+"')",con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
            LoadRecord();
        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from Inventory",con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update Inventory set MedName='" + txtName.Text + "',Price='" + float.Parse(txtPrice.Text) + "',MedExpiry='" + txtExpiry.Text + "' where MedicineID ='" + int.Parse(txtID.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();
        }

        protected void btnDelete_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("delete Inventory where MedicineID ='" + int.Parse(txtID.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
            LoadRecord();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from Inventory where MedicineID ='" + int.Parse(txtID.Text)+"' ", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtID.Text = "";
            txtName.Text = "";
            txtPrice.Text = "";
            txtExpiry.Text = "";
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from Inventory where MedicineID ='" + int.Parse(txtID.Text) + "' ", con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            {
                txtName.Text = r.GetValue(1).ToString();
                txtPrice.Text = r.GetValue(2).ToString();
                txtExpiry.Text += r.GetValue(3).ToString();
            }
            con.Close();
        }
    }
}