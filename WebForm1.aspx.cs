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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
            
           
            SqlCommand cmd=new SqlCommand("emmm", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FirstName", txtfnam.Text);
            cmd.Parameters.AddWithValue("@MiddleName", txtmnam.Text);
            cmd.Parameters.AddWithValue("@LastName", txtLnam.Text);
            cmd.Parameters.AddWithValue("@FatherName", txtFather.Text);
            cmd.Parameters.AddWithValue("@DateofBirth",Birth.Text);
            cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.Text);
               
            cmd.Parameters.AddWithValue("@Religion", RadioButtonList2.Text);
            cmd.Parameters.AddWithValue("@Cast", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@EducationalQualification", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@MobileNumber", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox3.Text);
            cmd.Parameters.AddWithValue("@State", RadioButton7.Text);
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

        protected void rdd(object sender, EventArgs e)
        {

        }
    }
}