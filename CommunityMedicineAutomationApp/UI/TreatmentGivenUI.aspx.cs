using System;
using System.Net;
using System.Web.UI;
using CommunityMedicineAutomationApp.Models;
using CommunityMedicineAutomationWebApp.BLL;
using Newtonsoft.Json.Linq;

namespace CommunityMedicineAutomationApp.UI
{
    public partial class PatientsRegistrationUI : Page
    {
        CenterManager centerManager=new CenterManager();

        Voter voters=new Voter();

        DiseaseManager diseaseManager=new DiseaseManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetLoadedDoseList();
            }
        }

        protected void showDetailsButton_OnClick(object sender, EventArgs e)
        {
           GetJsonData();
        }

        protected void addTreatmentButton_OnClick(object sender, EventArgs e)
        {
            
        }

        protected void treatmentInformationSaveButton_OnClick(object sender, EventArgs e)
        {
            
        }

        public void GetLoadedDoseList()
        {
            doseDropDownList.DataTextField = "Name";
            doseDropDownList.DataValueField = "Id";
            doseDropDownList.DataSource = centerManager.GetDoses();
            doseDropDownList.DataBind();
           
        }

        public void GetLoadedDoctorAccordingToCenter()
        {
            
        }

        public void GetLoadedDisease()
        {
            
        }

        public void GetJsonData()
        {
            string voterid = voterIdTextBox.Text;

            WebClient webClient=new WebClient();

            var data = webClient.DownloadString("http://nerdcastlebd.com/web_service/voterdb/index.php/voters/all/format/json");

           JObject jObject = JObject.Parse(data);

            foreach (var person in jObject["voters"])
            {
                voters.VoterId = person["id"].ToString();
                voters.Name = person["name"].ToString();
                voters.Address = person["address"].ToString();
                voters.DateofBirth = DateTime.Parse(person["date_of_birth"].ToString());

            if (voterid==voters.VoterId)
            {
                voterIdTextBox.Text = voters.VoterId;
                nameTextBox.Text = voters.Name;
                addressTextBox.Text = voters.Address;
                ageTextBox.Text = voters.DateofBirth.ToString();
                //DateTime date = DateTime.Today.Date;

                //TimeSpan span = date.Subtract(voters.DateofBirth);

                ////string age = date.Subtract(voters.DateofBirth).ToString("d");

                ////int totaldays = int.Parse(span.ToString());

                //ageTextBox.Text = span.ToString("D");
            }
        
        
        }

        }

        protected void showAllHistoryButton_Click(object sender, EventArgs e)
        {

        }
    }
}