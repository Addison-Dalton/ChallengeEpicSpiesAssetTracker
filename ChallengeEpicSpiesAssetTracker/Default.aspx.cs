using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeEpicSpiesAssetTracker
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int[] riggedElections = new int[0];
                double[] subterfugePerformed = new double[0];
                ViewState.Add("RiggedElections", riggedElections);
                ViewState.Add("Subterfuge", subterfugePerformed);
            }
        }

        protected void AddAssetBtn_Click(object sender, EventArgs e)
        {
            int[] riggedElections = (int[])ViewState["RiggedElections"];
            double[] subterfugePerformed = (double[])ViewState["Subterfuge"];
            Array.Resize(ref riggedElections, riggedElections.Length + 1);
            Array.Resize(ref subterfugePerformed, subterfugePerformed.Length + 1);

            riggedElections[riggedElections.GetUpperBound(0)] = int.Parse(electionsRiggedTextBox.Text);
            subterfugePerformed[subterfugePerformed.GetUpperBound(0)] = double.Parse(subterfugeTextBox.Text);

            ViewState["RiggedElections"] = riggedElections;
            ViewState["Subterfuge"] = subterfugePerformed;

            string performanceSummary = String.Format("Total Elections Rigged: {0} <br /> Average Acts of Subterfuge per Asset: {1:N2} <br />" +
                "(Last Asset Added: {2})", riggedElections.Sum(), subterfugePerformed.Average(), assetNameTextBox.Text);

            performanceSummaryLabel.Text = performanceSummary;
        }
    }
}