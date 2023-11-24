<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MY.aspx.cs" Inherits="Panaderia.Form.Master_Files.MY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">





        <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <title></title>
    <style type="text/css">
        .auto-style10 {
            color: #FFFFFF;
        }
        .auto-style17 {
            height: 30px;
        }
        .auto-style29 {
            height: 23px;
        }
        .auto-style31 {
            height: 39px;
        }
    </style>
    
    <style>
    .navbar-nav .treeview ul {
        list-style-type: none;
        margin-left: 0;
        padding-left: 0; /* Remove the left padding */
        display: flex; /* Use flexbox to make subcategories display horizontally */
    }

    .navbar-nav .treeview ul li {
        margin-right: 10px; /* Add some spacing between subcategories */
    }

    .navbar - nav.treeview {
            padding: 0;
        }

    .navbar - nav.treeview a {
            padding: 10px 15px;
        }

    .navbar - nav.treeview ul {
            list - style - type: none;
            margin - left: 0;
            padding - left: 20px;
        }
        .auto-style32 {
            height: 31px;
        }

        .dropdown-menu {
  display: none;
  position: absolute;
  background-color: white;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
  z-index: 100;
}

.dropdown-menu a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-menu a:hover {
  background-color: #ddd;
}

.dropdown-submenu {
  position: relative;
}

.dropdown-submenu .dropdown-menu {
  top: 0;
  left: 100%;
  margin-top: -2px;
}

.dropdown-submenu a:after {
  position: absolute;
  right: 10px;
  top: 50%;
  transform: translateY(-50%);
  border: 5px solid transparent;
  border-left-color: black;
}

.dropdown-submenu a:hover:after {
  border-left-color: white;
}

.dropdown.open .dropdown-menu {
  display: block;
}
    </style>

</head>
    
    

<body>

    <TD>

    <div class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button
                            type="button"
                            class="navbar-toggle"
                            data-toggle="collapse"
                            data-target=".navbar-collapse"
                        >
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" runat="server" href="~/"
                            ><strong>Panaderia</strong></a
                        >
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a runat="server" href="~/"></a></li>
                            

                            <li>
                                <a
                                    href="#"
                                    class="dropdown-toggle"
                                    data-toggle="dropdown"
                                    >Master Files</a
                                >
                                <ul class="dropdown-menu">
                                    <li><a href="#">Products</a></li>
                                    <li><a href="#">Supplier</a></li>
                                    <li><a href="#">Customer</a></li>
                                    <li><a href="#">User Profile</a></li>
                                    <li><a href="#">Address Book</a></li>
                                </ul>
                            </li>

                            <li>
                                <a
                                    href="#"
                                    class="dropdown-toggle"
                                    data-toggle="dropdown"
                                    >Inventory</a
                                >
                                <ul class="dropdown-menu">
                                    <li><a href="#">Purchase</a></li>
                                    <div id="sub-categories">
                                        <ul>
                                            <li>
                                                <a href="#">Purchase Order</a>
                                            </li>
                                            <li>
                                                <a href="#">Goods Recive</a>
                                            </li>
                                            <li>
                                                <a href="#">Purchase Return</a>
                                            </li>
                                        </ul>
                                    </div>

                                    <li><a href="#">Sales</a></li>
                                    <div id="sub-categories">
                                        <ul>
                                            <li>
                                                <a href="#">Order-Credit</a>
                                            </li>
                                            <li>
                                                <a href="#">Invoice - Credit</a>
                                            </li>
                                            <li>
                                                <a href="#">Return - Credit</a>
                                            </li>
                                            <li>
                                                <a href="#">Order Data Load</a>
                                            </li>
                                        </ul>
                                    </div>

                                    <li><a href="#">Adjustment</a></li>
                                    <div id="sub-categories">
                                        <ul>
                                            <li><a href="#">Excess</a></li>
                                            <li><a href="#">Shortage</a></li>
                                        </ul>
                                    </div>
                                </ul>
                            </li>

                            <li>
                                <a
                                    href="#"
                                    class="dropdown-toggle"
                                    data-toggle="dropdown"
                                    >Views</a
                                >
                                <ul class="dropdown-menu">
                                    <li><a href="#">Purchase</a></li>
                                    <div id="sub-categories">
                                        <ul>
                                            <li><a href="#">Order</a></li>
                                            <li>
                                                <a href="#">Goods Receiving</a>
                                            </li>
                                            <li>
                                                <a href="#">Purchase Return</a>
                                            </li>
                                        </ul>
                                    </div>

                                    <li><a href="#">Sales</a></li>
                                    <div id="sub-categories">
                                        <ul>
                                            <li><a href="#">Order</a></li>
                                            <li><a href="#">Invoice</a></li>
                                            <li><a href="#">Return</a></li>
                                        </ul>
                                    </div>

                                    <li><a href="#">Inventory</a></li>
                                </ul>
                            </li>

                            <li>
                                <a
                                    href="#"
                                    class="dropdown-toggle"
                                    data-toggle="dropdown"
                                    >Reports</a
                                >
                                <ul class="dropdown-menu">
                                    <li><a href="#">Purchase</a></li>
                                    <li><a href="#">Sales</a></li>
                                    <li><a href="#">Analytics</a></li>
                                </ul>
                            </li>

                            <li>
                                <a
                                    href="#"
                                    class="dropdown-toggle"
                                    data-toggle="dropdown"
                                    >Day Books</a
                                >
                                <ul class="dropdown-menu">
                                    <li><a href="#">Cash Book</a></li>
                                    <div id="sub-categories">
                                        <ul>
                                            <li><a href="#">Receipt</a></li>
                                            <li><a href="#">Payment</a></li>
                                        </ul>
                                    </div>

                                    <li><a href="#">Purchase Journal</a></li>
                                    <div id="sub-categories">
                                        <ul>
                                            <li><a href="#">GRN Posting</a></li>
                                            <li>
                                                <a href="#">Purchase Invoice</a>
                                            </li>
                                            <li>
                                                <a href="#">Purchase Return</a>
                                            </li>
                                            <li><a href="#">Debit Note</a></li>
                                            <li>
                                                <a href="#">Payment Voucher</a>
                                            </li>
                                        </ul>
                                    </div>

                                    <li><a href="#">Sales Jounal</a></li>
                                    <div id="sub-categories">
                                        <ul>
                                            <li>
                                                <a href="#">Sales Posting</a>
                                            </li>
                                            <li>
                                                <a href="#">Sales Invoice</a>
                                            </li>
                                            <li>
                                                <a href="#">Sales Report</a>
                                            </li>
                                            <li><a href="#">Credit Note</a></li>
                                            <li><a href="#">Receipt</a></li>
                                        </ul>
                                    </div>

                                    <li><a href="#">Service Journal</a></li>

                                    <li><a href="#">Petty Cash</a></li>
                                    <div id="sub-categories">
                                        <ul>
                                            <li><a href="#">Payment</a></li>
                                            <li><a href="#">Batch</a></li>
                                        </ul>
                                    </div>

                                    <li><a href="#">Set - OFF</a></li>
                                    <div id="sub-categories">
                                        <ul>
                                            <li><a href="#">Receipt</a></li>
                                            <li><a href="#">Payment</a></li>
                                        </ul>
                                    </div>

                                    <li><a href="#">Journal Entry</a></li>
                                    <li><a href="#">Month End</a></li>
                                </ul>
                            </li>

                            <li>
                                <a
                                    href="#"
                                    class="dropdown-toggle"
                                    data-toggle="dropdown"
                                    >Accounts</a
                                >
                                <ul class="dropdown-menu">
                                    <li><a href="#">Cash Book</a></li>

                                    <li><a href="#">Journal</a></li>
                                    <div id="sub-categories">
                                        <ul>
                                            <li><a href="#">Purchase</a></li>
                                            <li>
                                                <a href="#">Purchase Return</a>
                                            </li>
                                            <li><a href="#">Sales</a></li>
                                            <li>
                                                <a href="#">Sales Return</a>
                                            </li>
                                            <li>
                                                <a href="#">Cash Receipts</a>
                                            </li>
                                            <li>
                                                <a href="#">Cash Payment</a>
                                            </li>
                                            <li>
                                                <a href="#"
                                                    >Genaral -( Services )</a
                                                >
                                            </li>
                                        </ul>
                                    </div>

                                    <li><a href="#">Sub Ledger</a></li>
                                    <div id="sub-categories">
                                        <ul>
                                            <li>
                                                <a href="#"
                                                    >Account Receivable</a
                                                >
                                            </li>
                                            <li>
                                                <a href="#">Account Payable</a>
                                            </li>
                                        </ul>
                                    </div>

                                    <li><a href="#">Trial Balance</a></li>
                                    <li>
                                        <a href="#">Profit & Loss Account</a>
                                    </li>
                                    <li><a href="#">Balance Sheet</a></li>
                                </ul>
                            </li>

                            <li>
                                <a
                                    href="#"
                                    class="dropdown-toggle"
                                    data-toggle="dropdown"
                                    >Tools</a
                                >
                                <ul class="dropdown-menu">
                                    <li><a href="#">Remainders</a></li>
                                    <li><a href="#">Fallow Up</a></li>
                                </ul>
                            </li>                            
                        </ul>
                    </div>
                </div>
            </div>

</nav>
    </TD>
    <br />
    <br />

    <table>
    <form id="form1" runat="server">
        <div style="background-color: #edebeb">
        </div>
        <table style="border-color: #CC3300; width: 100%; height: 100px; background-color: #C0C0C0;">
            <tr>
                <td class="auto-style31" style="background-color: #edebeb">
                    <asp:Image ID="Image1" runat="server" Height="33px" ImageUrl="~/Logo.png" Width="211px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style32" style="background-color: #333333">&nbsp;&nbsp; <span class="auto-style10">Serial Number</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="serialNum_txt" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date&nbsp; </span>&nbsp;<asp:TextBox ID="date_txt" runat="server"></asp:TextBox>
&nbsp; <span class="auto-style10">&nbsp;&nbsp;&nbsp;User&nbsp; </span>
                    <asp:TextBox ID="user_txt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="text-decoration: none; font-style: normal; font-weight: normal"></td>
            </tr>
            <tr>
                <td class="auto-style17" style="text-decoration: none; font-style: normal; font-weight: normal">Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="code_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:FileUpload ID="Image_upload" runat="server" Width="86px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="type_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="46px" Height="17px"></asp:TextBox>
&nbsp;&nbsp; F - Finished Good&nbsp;&nbsp; R - Raw Meterial&nbsp; S - Services&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style17" style="font-weight: normal">Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="discription_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="612px" Height="23px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Unit Size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="unitsize_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Unit in Case&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="unitcase_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">UOM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="UOM_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="50px" Height="19px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="UOM_dropdown" runat="server" Height="22px" Width="69px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>EA</asp:ListItem>
                        <asp:ListItem>KG</asp:ListItem>
                        <asp:ListItem>LT</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Category 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:DropDownList ID="cate1_dropdown" runat="server" Height="21px" Width="209px">
                    <asp:ListItem Selected="True"></asp:ListItem>
                    <asp:ListItem>BREVERAGE</asp:ListItem>
                    <asp:ListItem>MEAL</asp:ListItem>
                    <asp:ListItem>OTHER</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="cate1_label" runat="server" BackColor="#CCCCCC" BorderStyle="Groove" Text="." Width="95px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Category 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:DropDownList ID="cate2_dropdown1" runat="server" Height="21px" Width="209px">
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="cate2_label" runat="server" BackColor="#CCCCCC" BorderStyle="Groove" Text="." Width="95px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Category 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="cate3_dropdown2" runat="server" Height="21px" Width="209px">
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="cate3_label" runat="server" BackColor="#CCCCCC" BorderStyle="Groove" Text="." Width="95px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Category 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:DropDownList ID="cate4_dropdown3" runat="server" Height="21px" Width="209px">
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="cate4_label" runat="server" BackColor="#CCCCCC" BorderStyle="Groove" Text="." Width="95px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">STD Cost Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="STDcost_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STD Selling Price&nbsp;&nbsp;&nbsp;
                    &nbsp;<asp:TextBox ID="STDsellinh_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Maximum Markup%&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
&nbsp;<asp:TextBox ID="MacMarkup_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">NBT %&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
&nbsp;<asp:TextBox ID="NBT_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VAT %&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="VAT_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Status&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="status_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A -Active&nbsp;&nbsp;&nbsp; D - Deleted</td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">
                    <asp:Button ID="save_btn" runat="server" Text="Save" Width="90px" BackColor="#6699FF" OnClick="save_btn_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="browse_btn" runat="server" Text="Browse" Width="90px" BackColor="#6699FF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="exit_btn" runat="server" Text="Exit" Width="90px" BackColor="#6699FF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">&nbsp;</td>
            </tr>
        </table>
    </form>
        </table>

    <script>
// Add an onclick function to the Follow Up menu
document.querySelector(".dropdown-submenu .dropdown-toggle").addEventListener("click", function() {
  // Get the submenus
  var submenus = this.nextElementSibling;

  // Toggle the display of the submenus
  if (submenus.style.display === "none") {
    submenus.style.display = "block";
  } else {
    submenus.style.display = "none";
  }
});
    </script>


    <script>
        var toggler = document.getElementsByClassName("caret");
        var i;

        for (i = 0; i < toggler.length; i++) {
            toggler[i].addEventListener("click", function () {
                this.parentElement.querySelector(".nested").classList.toggle("active");
                this.classList.toggle("caret-down");
            });
        }
</script>

</body>
</html>
