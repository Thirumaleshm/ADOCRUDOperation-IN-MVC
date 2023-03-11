using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;


namespace ADOCRUDOperation_IN_MVC.Models
{
    public class CompanyDBContext
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ConnectionString);
        public List<Employee> GetEmployees()
        {
            try
            {

                List<Employee> emps = new List<Employee>();
                string query = "Select * from Employee";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Employee emp = new Employee();
                        emp.Eno = Convert.ToInt32(dr["Eno"]);
                        emp.Ename = Convert.ToString(dr["Ename"]);
                        emp.Job = Convert.ToString(dr["Job"]);
                        emp.Salary = Convert.ToDouble(dr["Salary"]);
                        emp.Dname = Convert.ToString(dr["Dname"]);
                        emps.Add(emp);



                    }
                    return emps;
                }
                else
                {
                    return emps;
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }

        public IEnumerable<Employee> GetEmployeeBYName(string name)
        {
            List<Employee> emp = GetEmployees();
            if(emp!=null&& emp.Count > 0)
            {
                var emps = emp.Where(x => x.Ename == name).ToList();
                return emps;
            }
            return emp;
        }
        public Employee GetEmployee(int eno)
        {
            try
            {
                Employee emps = new Employee();
                string query = "Select * from Employee where Eno=" + eno;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    if (dr.Read())
                    {

                        emps.Eno = Convert.ToInt32(dr["Eno"]);
                        emps.Ename = Convert.ToString(dr["Ename"]);
                        emps.Job = Convert.ToString(dr["Job"]);
                        emps.Salary = Convert.ToDouble(dr["Salary"]);
                        emps.Dname = Convert.ToString(dr["Dname"]);

                    }
                    return emps;
                }
                return emps;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        private void DBOperation(string query,Employee emp)
        {
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Eno", emp.Eno);
            cmd.Parameters.AddWithValue("Ename", emp.Ename);
            cmd.Parameters.AddWithValue("Job", emp.Job);
            cmd.Parameters.AddWithValue("Salary", emp.Salary);
            cmd.Parameters.AddWithValue("Dname", emp.Dname);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void InsertEmp(Employee emp)
        {
            DBOperation("sp_InsertEmp", emp);
        }
        public void UpdateEmp(Employee emp)
        {
            DBOperation("sp_Updatemp", emp);
        }
        public void DeleteEmp(int eno)
        {
            Employee emp = GetEmployee(eno);
            DBOperation("deleteEmp", emp);
        }
    }
}