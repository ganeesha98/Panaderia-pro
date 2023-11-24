using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Panaderia.Forms
{
    public partial class user_profile_html : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Generate and set the serial number
               // txtSerialNumber.Text = GenerateSerialNumber();
            }
        }

        private string GenerateSerialNumber()
        {
            // Implement your logic to generate the serial number here
            // For example, you can use a combination of date and a counter
            // For demonstration purposes, here's a simple example:

            string prefix = "SER"; // Serial number prefix
            int nextNumber = GetNextSerialNumber(); // Get the next serial number

            // Format the serial number with leading zeros (e.g., SER001)
            string serialNumber = $"{prefix}{nextNumber:D3}";

            return serialNumber;
        }

        private int GetNextSerialNumber()
        {
            // Implement your logic to get the next serial number
            // For demonstration purposes, here's a simple example:
            // You can store and retrieve the current serial number from a database or a configuration file
            // Here, we'll simulate an incrementing serial number

            int currentNumber = 0; // Get the current serial number from storage (e.g., database)

            // Increment the current serial number to get the next one
            int nextNumber = currentNumber + 1;

            // Store the updated serial number back to storage (e.g., database)

            return nextNumber;
        }

        protected void txtSerialNumber_TextChanged(object sender, EventArgs e)
        {
            // Handle any additional logic when the serial number text changes (if needed)
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnBrowse_Click(object sender, EventArgs e)
        {

        }

        protected void btnExit_Click(object sender, EventArgs e)
        {

        }

        protected void txtUserID_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtDate_TextChanged(object sender, EventArgs e)
        {

        }
    }
}