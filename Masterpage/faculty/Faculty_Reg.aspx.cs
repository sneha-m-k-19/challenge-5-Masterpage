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
    public partial class Faculty_Reg : System.Web.UI.Page
    {
        string gen;
        protected void Page_Load(object sender, EventArgs e)
        {

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
            //establishing connection
            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = "Data Source=NTP-LAP-850\\SQL_SERVER;Initial Catalog=Employee;Integrated Security=True;Pooling=False";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into tbl_Faculty values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + gen + "','" + TextBox5.Text + "','"  + TextBox6.Text + "')";
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