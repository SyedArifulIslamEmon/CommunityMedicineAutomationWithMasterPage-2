using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommunityMedicineAutomationWebApp.BLL;

namespace CommunityMedicineAutomationApp.UI
{
    public partial class centerLoginUI : System.Web.UI.Page
    {
         CenterManager centerManager=new CenterManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logincenterButon_OnClick(object sender, EventArgs e)
        {
             string code = codeTextBox.Text;
             string password = passwordTextBox.Text;
             Session["centerCode"] = codeTextBox.Text;

           

            bool login = centerManager.LoginMessage(code,password);

            if (login == true)
            {
                label3.Text = "Login Successful";



                Response.Redirect("centerHomeUI.aspx");

            }

            else
            {
                label3.Text = "Incorrect Code or Password";
            }

           

        }
    
           

    
    
    }
}