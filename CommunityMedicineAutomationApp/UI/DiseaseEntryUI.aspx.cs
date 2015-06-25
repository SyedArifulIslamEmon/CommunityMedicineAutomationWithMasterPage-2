using CommunityMedicineAutomationWebApp.BLL;
using CommunityMedicineAutomationWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CommunityMedicineAutomationApp.UI
{
    public partial class DiseaseEntryUI : System.Web.UI.Page
    {
        DiseaseManager diseaseManager = new DiseaseManager();

        Disease disease = new Disease();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetLoadedGridView();
            }
        }

     
        protected void saveDiseaseButton_OnClick(object sender, EventArgs e)
        {
            disease.Name = nameTextBox.Text;

            disease.Description = Request.Form["descriptionTextBox"];

            disease.TreatmentProcedure = treatmentProcedureTextBox.Text;

            string message = diseaseManager.Insert(disease);

            label4.Text = message;

            GetLoadedGridView();

        }

        public void GetLoadedGridView()
        {
            diseaseGridView.DataSource = diseaseManager.GetAll();
            diseaseGridView.DataBind();
        }
       
    }
}