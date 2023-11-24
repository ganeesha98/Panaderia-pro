<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree.aspx.cs" Inherits="Panaderia.Form.Master_Files.tree" %>

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
    
     <style>
        .navbar-nav.treeview {
            padding: 0;
        }

        .navbar-nav.treeview a {
            padding: 10px 15px;
        }

         .navbar-nav.treeview ul {
            list - style - type: none;
            margin - left: 0;
            padding - left: 20px;
         }

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

    
            a:link {
            color: blue;
             }
 
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

</head>
<body>
    <nav>
    <div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" runat="server" href="~/"><strong>Panaderia</strong></a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a runat="server" href="~/"></a></li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Master Files <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Products</a></li>
                        <li><a href="#">Supplier</a></li>
                        <li><a href="#">Customer</a></li>
                        <li><a href="#">User Profile</a></li>
                        <li><a href="#">Address Book</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Inventory <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a data-toggle="#"><b>Purchase</b></a></li>
                        <li class="divider"></li>
                        <li><a href="#">Purchase Order</a></li>
                        <li><a href="#">Goods Receive</a></li>
                        <li><a href="#">Purchase Return</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><b>Sales</b></a></li>
                        <li class="divider"></li>
                        <li><a href="#">Order - Credit</a></li>
                        <li><a href="#">Invoice - Credit</a></li>
                        <li><a href="#">Return - Credit</a></li>
                        <li><a href="#">Order Data Load</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><b>Adjustment</b></a></li>
                        <li class="divider"></li>
                        <li><a href="#">Excess</a></li>
                        <li><a href="#">Shortage</a></li>
                    </ul>


                </li>



                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Views <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><b>Purchase</b></a></li>
                        <li class="divider"></li>
                        <li><a href="#">Order</a></li>
                        <li><a href="#">Goods Receiving</a></li>
                        <li><a href="#">Purchase Return</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><b>Sales</b></a></li>
                        <li class="divider"></li>
                        <li><a href="#">Order</a></li>
                        <li><a href="#">Invoice</a></li>
                        <li><a href="#">Return</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><b>Inventory</b></a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reports <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Purchase</a></li>
                        <li><a href="#">Sales</a></li>
                        <li><a href="#">Analytics</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Day Books <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Cash Book</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Receipt</a></li>
                        <li><a href="#">Payment</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Purchase Journal</a></li>
                        <li class="divider"></li>
                        <li><a href="#">GRN Posting</a></li>
                        <li><a href="#">Purchase Invoice</a></li>
                        <li><a href="#">Purchase Return</a></li>
                        <li><a href="#">Debit Note</a></li>
                        <li><a href="#">Payment Voucher</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Sales Journal</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Sales Posting</a></li>
                        <li><a href="#">Sales Invoice</a></li>
                        <li><a href="#">Sales Report</a></li>
                        <li><a href="#">Credit Note</a></li>
                        <li><a href="#">Receipt</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Service Journal</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Petty Cash</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Payment</a></li>
                        <li><a href="#">Batch</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Set - OFF</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Receipt</a></li>
                        <li><a href="#">Payment</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Journal Entry</a></li>
                        <li><a href="#">Month End</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Accounts <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Cash Book</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><b>Journal</b></a></li>
                        <li class="divider"></li>
                        <li><a href="#">Purchase</a></li>
                        <li><a href="#">Purchase Return</a></li>
                        <li><a href="#">Sales</a></li>
                        <li><a href="#">Sales Return</a></li>
                        <li><a href="#">Cash Receipts</a></li>
                        <li><a href="#">Cash Payment</a></li>
                        <li><a href="#">Genaral -( Services )</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><b>Sub Ledger</b></a></li>
                        <li class="divider"></li>
                        <li><a href="#">Account Receivable</a></li>
                        <li><a href="#">Account Payable</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Trial Balance</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Profit & Loss Account</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Balance Sheet</a></li>
                        
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tools <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Reminders</a></li>
                        <li><a href="#">Follow Up</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>

</nav>
    <br />
    <br />
   


    <form id="form1" runat="server">
        <table style="border-color: #CC3300; width: 86%; height: 100px; background-color: #C0C0C0;">
            <tr>
                <td class="auto-style31" style="background-color: #e8eaed">
                    <asp:Image ID="Image1" runat="server" Height="25px" ImageUrl="~/Logo.png" Width="127px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="background-color: #333333">&nbsp;&nbsp; <span class="auto-style10">Serial Number</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="serialNum_txt" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date&nbsp; </span>&nbsp;<asp:TextBox ID="date_txt" runat="server"></asp:TextBox>
&nbsp; <span class="auto-style10">&nbsp;&nbsp;&nbsp;User&nbsp;<asp:LoginName ID="LoginName1" runat="server" />
&nbsp;</span></td>
            </tr>
            <tr>
                <td class="auto-style17" style="background-color: #e8eaed;"></td>
            </tr>
            <tr>
                <td class="auto-style17" style="background-color: #e8eaed;">Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="code_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:FileUpload ID="Image_upload" runat="server" Width="86px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e8eaed;">Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="type_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="46px" Height="17px"></asp:TextBox>
&nbsp;&nbsp; F - Finished Good&nbsp;&nbsp; R - Raw Meterial&nbsp; S - Services&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style17" style="background-color: #e8eaed;">Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="discription_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="612px" Height="23px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e8eaed;">Unit Size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="unitsize_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Unit in Case&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="unitcase_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e8eaed;">UOM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="UOM_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="50px" Height="19px"></asp:TextBox>
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
                <td class="auto-style29" style="background-color: #e8eaed;">Category 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:DropDownList ID="cate1_dropdown" runat="server" Height="21px" Width="209px">
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
                <td class="auto-style29" style="background-color: #e8eaed;">Category 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:DropDownList ID="cate2_dropdown1" runat="server" Height="21px" Width="209px">
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="cate2_label" runat="server" BackColor="#CCCCCC" BorderStyle="Groove" Text="." Width="95px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e8eaed;">Category 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="cate3_dropdown2" runat="server" Height="21px" Width="209px">
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="cate3_label" runat="server" BackColor="#CCCCCC" BorderStyle="Groove" Text="." Width="95px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e8eaed;">Category 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:DropDownList ID="cate4_dropdown3" runat="server" Height="21px" Width="209px">
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="cate4_label" runat="server" BackColor="#CCCCCC" BorderStyle="Groove" Text="." Width="95px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e8eaed;">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e8eaed;">STD Cost Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="STDcost_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STD Selling Price&nbsp;&nbsp;&nbsp;
                    &nbsp;<asp:TextBox ID="STDsellinh_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e8eaed;">Maximum Markup%&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:TextBox ID="MacMarkup_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e8eaed;">NBT %&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:TextBox ID="NBT_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VAT %&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="VAT_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e8eaed;">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e8eaed;">Status&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="status_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A -Active&nbsp;&nbsp;&nbsp; D - Deleted</td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e8eaed;">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e8eaed;">
                    <asp:Button ID="save_btn" runat="server" Text="Save" Width="90px" BackColor="#6699FF" OnClick="save_btn_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="browse_btn" runat="server" Text="Browse" Width="90px" BackColor="#6699FF" OnClick="browse_btn_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="exit_btn" runat="server" Text="Exit" Width="90px" BackColor="#6699FF" OnClick="exit_btn_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e8eaed;">&nbsp;</td>
            </tr>
        </table>
    </form>
        
    

    
</body>
    <script>
        $(document).ready(function () {
            $('.treeview').find('.dropdown-toggle').dropdown();
        });
    </script>

</html>
