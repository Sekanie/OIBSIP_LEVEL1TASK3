using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temerature_Converter
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Validate input is a valid double number
                if (!double.TryParse(txtTemperature.Text, out double temperature))
                {
                    // Display a pop-up alert
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please enter a valid number.');", true);

                    // clearing the input and result fields
                    txtTemperature.Text = string.Empty;
                    txtResult.Text = string.Empty;

                    return;
                }

                // Conversion
                if (ddlUnit.SelectedValue == "celsius")
                {
                    double convertedTemperature = (temperature * 9 / 5) + 32;
                    txtResult.Text = $"{temperature} °C is equal to {convertedTemperature} °F";
                }
                else
                {
                    double convertedTemperature = (temperature - 32) * 5 / 9;
                    txtResult.Text = $"{temperature} °F is equal to {convertedTemperature} °C";
                }
            }
        }


    }
}