using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeRegistration_09_01_2023
{
    public partial class WebForm3 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Write("Registration Success");
        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string input = args.Value;
            args.IsValid = false;
            bool upperCase = false;
            bool lowerCase = false;
            bool number = false;

            if (input.Length < 3 || input.Length > 9) return;
            foreach (char ch in input)
            {
                if (ch >= 'A' && ch <= 'Z')
                {
                    upperCase = true;
                    break;
                }
            }
            if (!upperCase) return;
            foreach (char ch in input)
            {
                if (ch >= 'a' && ch <= 'z')
                {
                    lowerCase = true; break;
                }
            }
            if (!lowerCase) return;
            foreach (char ch in input)
            {
                if (ch >= '0' && ch <= '9')
                {
                    number = true; break;
                }
            }
            if (!number) return;


            args.IsValid = true;
        }
    }
}
    
