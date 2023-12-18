using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Panaderia.Form.Inventory
{

    public partial class amount : System.Web.UI.Page
    {
        DataTable dt;
        Int64 totalprice;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Get the current date and time from the database or server.
            DateTime dt1 = DateTime.Now;

            // Set the value of the TextBox control.
            date.Text = dt1.ToString("yyyy-MM-dd HH:mm:ss");

            // Get the valid login user name from the default.aspx.cs code btnLogin_Click() function.
            string validUsername = (string)System.Web.HttpContext.Current.Session["ValidUsername"];

            // Set the value of the TextBox control.
            user.Text = validUsername;

            if (!IsPostBack)
            {
                dt = new DataTable();
                dt.Columns.Add("Line");
                dt.Columns.Add("item_code");
                dt.Columns.Add("Description");
                dt.Columns.Add("price");
                dt.Columns.Add("psize");
                dt.Columns.Add("packs");
                dt.Columns.Add("nos");
                dt.Columns.Add("discount");
                dt.Columns.Add("Amount");
                Session["data"] = dt;
                TextBox1.Text = "1";
            }
            {
                LoadUserData();
            }

            {
                LoadSupData();
            }

            {
                LoadItemData();
            }

        }

        private void LoadSupData()
        {
            string connectionString = "Data Source=CCPHIT-GUNATLAP\\SQLEXPRESS;Initial Catalog=Panaderia;Integrated Security=True";
            string query = "SELECT Sup_nu,Code,SupplierName,Telephone,ContactPerson1,ContactDetails1,Email FROM [Panaderia].[dbo].[MF_Supplier_new1]";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    try
                    {
                        connection.Open();
                        SqlDataReader reader = cmd.ExecuteReader();

                        GridView2.DataSource = reader;
                        GridView2.DataBind();
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions here
                        string errorMessage = "An error occurred while fetching data. Please try again later.";

                        // Display the error message to the user
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "errorAlert", $"alert('{errorMessage}');", true);
                    }
                }
            }

        }

        private void LoadItemData()
        {
            string connectionString = "Data Source=CCPHIT-GUNATLAP\\SQLEXPRESS;Initial Catalog=Panaderia;Integrated Security=True";
            string query = "SELECT item_nu,code,Description,Price,PSize,Pascks,Nos,Dis,Amount,Usize FROM [Panaderia].[dbo].[MF_item_new]";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    try
                    {
                        connection.Open();
                        SqlDataReader reader = cmd.ExecuteReader();

                        GridView3.DataSource = reader;
                        GridView3.DataBind();
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions here
                        string errorMessage = "An error occurred while fetching data. Please try again later.";

                        // Display the error message to the user
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "errorAlert", $"alert('{errorMessage}');", true);
                    }
                }
            }

        }

        private void LoadUserData() { }


        protected void Button2_Click(object sender, EventArgs e)
        {
            dt = (DataTable)Session["data"];
            DataRow dr = dt.NewRow();

            // Set values for the new row
            dr["Line"] = TextBox1.Text;
            dr["item_code"] = TextBox2.Text;
            dr["Description"] = TextBox4.Text;
            dr["price"] = TextBox5.Text;
            dr["psize"] = TextBox6.Text;
            dr["packs"] = TextBox7.Text;
            dr["nos"] = TextBox8.Text;

            // Check if a discount is entered
            if (!string.IsNullOrEmpty(TextBox9.Text))
            {
                int discount = Convert.ToInt32(TextBox9.Text);
                dr["discount"] = discount.ToString(); // Set the discount value in the "discount" column
            }

            // Calculate total price
            totalprice = Convert.ToInt64(TextBox8.Text) * Convert.ToInt64(TextBox5.Text);

            // Apply the discount to totalprice if applicable
            if (!string.IsNullOrEmpty(TextBox9.Text))
            {
                int discount = Convert.ToInt32(TextBox9.Text);
                totalprice -= (totalprice * discount) / 100;
            }

            dr["Amount"] = totalprice.ToString();

            // Add the row to the DataTable
            dt.Rows.Add(dr);

            // Update GridView and session
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Session["buyitems"] = dt;

            // Reset input fields and recalculate sum
            TextBox1.Text = (dt.Rows.Count + 1).ToString();
            TextBox3.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = ""; // Clear discount TextBox
            calculateSum();
        }

        private void calculateSum()
        {
            Int32 grandtotal = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {

                grandtotal = grandtotal + Convert.ToInt32(row.Cells[9].Text); //Where Cells is the column. Just changed the index of cells
            }
            GridView1.FooterRow.Cells[7].Text = "<b>Total Amount</b>";
            GridView1.FooterRow.Cells[7].Font.Bold = true;
            GridView1.FooterRow.Cells[8].Text = "<b> =</b>";
            GridView1.FooterRow.Cells[8].Font.Bold = true;
            GridView1.FooterRow.Cells[9].Text = grandtotal.ToString();
            GridView1.FooterRow.Cells[9].Font.Bold = true;
            // Label1.Text = "Price(in Words) " + ConvertNumbertoWords(grandtotal);

            // Set the total amount in the txtamount TextBox
            txtamount.Text = grandtotal.ToString();

        }
        /*public static string ConvertNumbertoWords(int number)
          {
              if (number == 0)
                  return "ZERO";
              if (number < 0)
                  return "minus " + ConvertNumbertoWords(Math.Abs(number));
              string words = "";
              if ((number / 100000) > 0)
              {
                  words += ConvertNumbertoWords(number / 100000) + " Lacs ";
                  number %= 100000;
              }
              if ((number / 1000) > 0)
              {
                  words += ConvertNumbertoWords(number / 1000) + " Thousand ";
                  number %= 1000;
              }
              if ((number / 100) > 0)
              {
                  words += ConvertNumbertoWords(number / 100) + " Hundred ";
                  number %= 100;
              }
              if (number > 0)
              {
                  if (words != "")
                      words += "AND ";
                  var unitsMap = new[] { "Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen" };
                  var tensMap = new[] { "Zero", "Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety" };

                  if (number < 20)
                      words += unitsMap[number];
                  else
                  {
                      words += tensMap[number / 10];
                      if ((number % 10) > 0)
                          words += " " + unitsMap[number % 10];
                  }
              }
              return words;
          }*/

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnBrowse_Click(object sender, EventArgs e)
        {

        }

        protected void btnExit_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Get the index of the row being deleted
            int rowIndex = e.RowIndex;

            // Retrieve the DataTable from the session
            DataTable dt = (DataTable)Session["data"];

            // Remove the row from the DataTable
            dt.Rows.RemoveAt(rowIndex);

            // Update the session variable
            Session["buyitems"] = dt;

            // Bind the DataTable to the GridView
            GridView1.DataSource = dt;
            GridView1.DataBind();

            // Recalculate the total sum
            calculateSum();
        }



    }
}
