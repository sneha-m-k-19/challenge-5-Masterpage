using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Masterpage
{
    public partial class Login : System.Web.UI.Page
    {
        string username, password;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = "Data Source=NTP-LAP-850\\SQL_SERVER;Initial Catalog=Employee;Integrated Security=True;Pooling=False";
            con1.Open();
            string CommandText = "select * from tbl_Admin where Username ='" + TextName.Text+ "'and Password='" + TextPassword.Text+"'" ;
            SqlCommand cmd = new SqlCommand(CommandText,con1);
            SqlDataReader sdr = cmd.ExecuteReader();         
            
            if (sdr.Read())
            {
                Response.Write("<script>alert('Logged success');</script>");
                Response.Redirect("admin/AdminDashboard.aspx");
            }
            else
            {
                con1.Close();
                con1.Open();
                CommandText = "select * from tbl_faculty where Username ='" + TextName.Text + "'and Password='" + TextPassword.Text + "'";
                cmd = new SqlCommand(CommandText, con1);
                sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    Response.Write("<script>alert('Logged success');</script>");
                    Response.Redirect("faculty/Faculty_Page.aspx");
                }
                else
                {
                    con1.Close();
                    con1.Open();
                    CommandText = "select * from tbl_Student where Username ='" + TextName.Text + "' and password='" + TextPassword.Text + "' and Status='Confirm'";
                    cmd = new SqlCommand(CommandText, con1);
                    sdr = cmd.ExecuteReader();

                    if (sdr.Read())
                    {
                        Response.Write("<script>alert('Logged success');</script>");
                        Response.Redirect("student/StudentPage.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Incorrect password or username Other wise you need to waiting for your Confirmation');</script>");
                    }
                }
            }
            con1.Close();
        }
    }
}