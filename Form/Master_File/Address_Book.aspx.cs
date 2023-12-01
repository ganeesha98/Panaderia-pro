using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Panaderia.Form.Master_File
{
    public partial class Address_Book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {




        }




        protected void btnSave_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=CCPHIT-GUNATLAP\\SQLEXPRESS;Initial Catalog=Panaderia;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                // Check if the record with the specified SerialNumber already exists
                string checkIfExistsQuery = "SELECT COUNT(*) FROM [dbo].[MF_Address_Book_new] WHERE [Code] = @Code";

                using (SqlCommand checkCmd = new SqlCommand(checkIfExistsQuery, con))
                {
                    checkCmd.Parameters.AddWithValue("@Code", txtCode.Text);

                    int existingRecordCount = (int)checkCmd.ExecuteScalar();

                    if (existingRecordCount > 0)
                    {
                        // If the record exists, perform an update
                        string updateQuery = @"
                    UPDATE [dbo].[MF_Address_Book_new]
                    SET [Date] = @Date,
                        [User] = @User,
                        [Code] = @Code,
                        [ShortName] = @ShortName,
                        [FullName] = @FullName,
                        [AddressLine1] = @AddressLine1,
                        [AddressLine2] = @AddressLine2,
                        [CityRegion] = @CityRegion,
                        [Country] = @Country,
                        [Telephone] = @Telephone,
                        [Fax] = @Fax,
                        [Mobile] = @Mobile,
                        [Email] = @Email,
                        [ContactPerson] = @ContactPerson,
                        [ContactDetails] = @ContactDetails,
                        [Notes] = @Notes,
                        [UserStatus] = @UserStatus
                    WHERE [SerialNumber] = @SerialNumber
                ";

                        using (SqlCommand updateCmd = new SqlCommand(updateQuery, con))
                        {
                            SetParameters(updateCmd);

                            updateCmd.ExecuteNonQuery();

                            Response.Write("Updated Successfully");

                            divMsg.Visible = true;
                            lblShowMessage.Visible = true;
                            lblShowMessage.Text = "Successfully updated!";
                        }
                    }
                    else
                    {
                        // If the record does not exist, perform an insert
                        string insertQuery = @"
                    INSERT INTO [dbo].[MF_Address_Book_new]
                        ([SerialNumber],[Date],[User],[Code],[ShortName],[FullName],[AddressLine1],[AddressLine2],
                         [CityRegion],[Country],[Telephone],[Fax],[Mobile],[Email],[ContactPerson],[ContactDetails],[Notes],
                         [UserStatus])
                    VALUES
                        (@SerialNumber, @Date, @User, @Code, @ShortName, @FullName, @AddressLine1, @AddressLine2, @CityRegion,
                         @Country, @Telephone, @Fax, @Mobile, @Email, @ContactPerson, @ContactDetails, @Notes, @UserStatus)
                ";

                        using (SqlCommand insertCmd = new SqlCommand(insertQuery, con))
                        {
                            SetParameters(insertCmd);

                            insertCmd.ExecuteNonQuery();

                            Response.Write("Saved Successfully");

                            divMsg.Visible = true;
                            lblShowMessage.Visible = true;
                            lblShowMessage.Text = "Successfully inserted!";
                        }
                    }
                }
            }
        }

        private void SetParameters(SqlCommand cmd)
        {
            cmd.Parameters.AddWithValue("@SerialNumber", SerialNumber.Text);
            cmd.Parameters.AddWithValue("@Date", date.Text);
            cmd.Parameters.AddWithValue("@User", user.Text);
            cmd.Parameters.AddWithValue("@Code", txtCode.Text);
            cmd.Parameters.AddWithValue("@ShortName", txtShortName.Text);
            cmd.Parameters.AddWithValue("@FullName", txtFullName.Text);
            cmd.Parameters.AddWithValue("@AddressLine1", txtAddress1.Text);
            cmd.Parameters.AddWithValue("@AddressLine2", txtAddress2.Text);
            cmd.Parameters.AddWithValue("@CityRegion", txtcity.Text);
            cmd.Parameters.AddWithValue("@Country", txtCountry.Text);
            cmd.Parameters.AddWithValue("@Telephone", txtTelephone.Text);
            cmd.Parameters.AddWithValue("@Fax", txtFax.Text);
            cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@ContactPerson", txtContact.Text);
            cmd.Parameters.AddWithValue("@ContactDetails", txtDetails.Text);
            cmd.Parameters.AddWithValue("@Notes", txtNotes.Text);
            cmd.Parameters.AddWithValue("@UserStatus", txtUserStatus.Text);
        }
    }
}
