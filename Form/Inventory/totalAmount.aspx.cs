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
    public partial class totalAmount : System.Web.UI.Page
    {

        DataTable dt;
        Int64 totalprice;
        protected void Page_Load(object sender, EventArgs e)
        {
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
                TextBox2.Text = "1";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dt = (DataTable)Session["data"];
            DataRow dr;
            dr = dt.NewRow();
            if (dt.Rows.Count > 0)
            {
                dr["Line"] = TextBox2.Text;
                dr["item_code"] = TextBox3.Text;
                dr["Description"] = TextBox1.Text;
                dr["price"] = TextBox4.Text;
                dr["psize"] = TextBox5.Text;
                dr["packs"] = TextBox6.Text;
                dr["nos"] = TextBox7.Text;
                dr["discount"] = TextBox8.Text;
                totalprice = Convert.ToInt64(TextBox7.Text) * Convert.ToInt64(TextBox4.Text);
                dr["Amount"] = totalprice.ToString();
            }
            else
            {
                dr["Line"] = TextBox2.Text;
                dr["item_code"] = TextBox3.Text;
                dr["Description"] = TextBox1.Text;
                dr["price"] = TextBox4.Text;
                dr["psize"] = TextBox5.Text;
                dr["packs"] = TextBox6.Text;
                dr["nos"] = TextBox7.Text;
                dr["discount"] = TextBox8.Text;
                totalprice = Convert.ToInt64(TextBox7.Text) * Convert.ToInt64(TextBox4.Text);
                dr["Amount"] = totalprice.ToString();
            }
            dt.Rows.Add(dr);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Session["buyitems"] = dt;
            TextBox2.Text = (dt.Rows.Count + 1).ToString();
            TextBox3.Text = "";
            TextBox1.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            calculateSum();
        }
        private void calculateSum()
        {
            Int32 grandtotal = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {

                grandtotal = grandtotal + Convert.ToInt32(row.Cells[8].Text); //Where Cells is the column. Just changed the index of cells
            }
            GridView1.FooterRow.Cells[4].Text = "Total Amount";
            GridView1.FooterRow.Cells[8].Text = grandtotal.ToString();
           // Label1.Text = "Price(in Words) " + ConvertNumbertoWords(grandtotal);

        }
        public static string ConvertNumbertoWords(int number)
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
        }
    }
}