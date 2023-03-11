using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeRegistration_09_01_2023
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rd1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);


            SqlCommand cmd = new SqlCommand("emmm", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@MiddleName", TextBox2.Text);
            cmd.Parameters.AddWithValue("@LastName", TextBox3.Text);
            cmd.Parameters.AddWithValue("@FatherName", TextBox4.Text);
            cmd.Parameters.AddWithValue("@DateofBirth", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Gender", rd1.Text);

            cmd.Parameters.AddWithValue("@Religion", rd2.Text);
            cmd.Parameters.AddWithValue("@Cast", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@EducationalQualification", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@MobileNumber", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox8.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox9.Text);
            cmd.Parameters.AddWithValue("@State", RadioButton1.Text);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 0)
            {
                lblres.Text = "failed";
            }
            else
            {
                lblres.Text = "Success";
            }

        }

        protected void rd2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}