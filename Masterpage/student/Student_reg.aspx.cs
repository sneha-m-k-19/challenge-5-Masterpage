using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masterpage
{
    public partial class Student_reg : System.Web.UI.Page
    {
        string gen;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) //can avoid page refreshing problem
            {
                SqlConnection con1 = new SqlConnection();
                con1.ConnectionString = "Data Source=NTP-LAP-850\\SQL_SERVER;Initial Catalog=Employee;Integrated Security=True;Pooling=False";
                con1.Open();
                SqlCommand com = new SqlCommand("Select * from tbl_Course", con1);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DropDownList1.DataTextField = ds.Tables[0].Columns["Course"].ToString();
                DropDownList1.DataSource = ds.Tables[0];
                DropDownList1.DataBind();

              

            }

        }
        protected void Display(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                gen = RadioButton1.Text;
            }
            else if (RadioButton2.Checked)
            {
                gen = RadioButton2.Text;
            }
            else
            {
                gen = RadioButton3.Text;
            }
            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = "Data Source=NTP-LAP-850\\SQL_SERVER;Initial Catalog=Employee;Integrated Security=True;Pooling=False";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into tbl_Student values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + gen + "','" + DropDownList1.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','Waiting')";
            cmd.Connection = con1;
            con1.Open();
            int i = cmd.ExecuteNonQuery();
            con1.Close();
            if (i == 1)
            {
                Response.Write("<script>alert('Registration success');</script>");
            }
            else
            {
                Response.Write("<script>alert('Registration Fail');</script>");
            }



            
        }
    }
}