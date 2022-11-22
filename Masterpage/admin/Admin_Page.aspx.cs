using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masterpage
{
    public partial class Admin_Page : System.Web.UI.Page
    {
        DBOperation db = new DBOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = db.exedataset("select * from tbl_Student where Status='Waiting'");
                GridView1.DataBind();
            }

        }
        protected void GridView1RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex; //set edit index
            GridView1.DataSource = db.exedataset("select * from tbl_Student where Status='Waiting'"); //value taking from table
            GridView1.DataBind(); //binding data extracted from the table to the grid view 
        }
       
        protected void Gridview1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;  //previous view stage -1 indicate previous view only 
            GridView1.DataSource = db.exedataset("select * from tbl_Student where Status='Waiting'");
            GridView1.DataBind();

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string empid = GridView1.DataKeys[e.RowIndex].Value.ToString(); //tacking emp value of the selected row
            db.exenonquery("Update tbl_Student set Status='Confirm' where Id ='" + empid + "'");
            GridView1.DataSource = db.exedataset("select * from tbl_Student where Status='Waiting'");
            GridView1.DataBind();
        }
    }
}