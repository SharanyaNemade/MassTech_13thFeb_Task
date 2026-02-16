using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;

namespace Task
{

    public partial class Department : System.Web.UI.Page
    {

        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string deptName = TextBox1.Text;
            string status = DropDownList1.SelectedValue;

            string q = $"exec sp_InsertDepartment '{deptName}','{status}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('Saved Success')</script>");

            FetchEmpList();

        }

        public void FetchEmpList()
        {
            String q = "exec sp_FetchEmpWithManagerList";

            SqlDataAdapter ada = new SqlDataAdapter(q, conn);
            DataSet ds = new DataSet();
            ada.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }



        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            Label lbl = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            int id = int.Parse(lbl.Text);
            string q = $"exec sp_DeleteEmp '{id}'";
            SqlCommand cmd = new SqlCommand(q, conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Emp Deleted Success')</scripts>");
            FetchEmpList();
        }
    }
}