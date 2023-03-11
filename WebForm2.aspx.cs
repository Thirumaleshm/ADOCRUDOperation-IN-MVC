using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeRegistration_09_01_2023
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ConnectionString); SqlDataAdapter da = null; SqlCommand cmd = null;
        DataSet ds = null;
        private void FillEmpData()
        {
            da = new SqlDataAdapter("select * from Employee", con);
            ds = new DataSet();
            da.Fill(ds, "Employee");
            GridView1.DataSource = ds.Tables["Employee"];
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                FillEmpData();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Label lbleno = (Label)row.FindControl("lbleno");
            string query = "delete from Employee where Eno= " + Convert.ToInt32(lbleno.Text);
            cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            FillEmpData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow rec = GridView1.Rows[e.RowIndex];
            int lbleno = Convert.ToInt32(((Label)rec.Cells[0].FindControl("lbleno")).Text);
            string Name =Convert.ToString( ((TextBox)rec.Cells[1].FindControl("txtEmp")).Text);
            string job =Convert.ToString( ((TextBox)rec.Cells[2].FindControl("txtjob")).Text);
            string Sal =Convert.ToString( ((TextBox)rec.Cells[3].FindControl("txtsal")).Text);


            string query = "update Employee set Employeename=@Employeename,Job=@job,Salary=@salary where Eno=@eno";
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Eno", lbleno);
            cmd.Parameters.AddWithValue("@EmployeeName", Name);
            cmd.Parameters.AddWithValue("@Job", job);
            cmd.Parameters.AddWithValue("@salary", Sal);


            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();


            GridView1.EditIndex = -1;
            FillEmpData();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            FillEmpData();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            FillEmpData();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}