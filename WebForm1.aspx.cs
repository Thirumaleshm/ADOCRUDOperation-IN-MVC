using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insert_Update_Delete_program
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ConnectionString);
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "insert into Emp values(@empno,@empname,@empjob,@empDOJ,@empSal,@empDN)";
            if (CRUD(query))
            {
                res.Text = "Record Inserted";
            }
            else
            {
                res.Text = "Record Not Inserted";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string query = "update Emp set empname=@empname,empJob=@empjob,empSal=@empsal,empDN=@empDN where empno=@empno";
            if (CRUD(query))
            {
                res.Text = "Record Updated";
            }
            else
            {
                res.Text = "Record Not Updated";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("delete from Emp where Empno=" + TextBox1.Text,con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 0)
                res.Text = "Record not Delete";
            else
                res.Text = "Record Deleted";
        }
        private bool CRUD(string query)
        {
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@empno", TextBox1.Text);
            cmd.Parameters.AddWithValue("@empname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@empjob", TextBox3.Text);
            cmd.Parameters.AddWithValue("@empDoj", TextBox4.Text);
            cmd.Parameters.AddWithValue("@empsal", TextBox5.Text);
            cmd.Parameters.AddWithValue("@empDN", TextBox6.Text);

            con.Open();
            int i =cmd.ExecuteNonQuery();
            con.Close();
            if (i == 0)
                return false;
            else
                return true;
        }
    }
}