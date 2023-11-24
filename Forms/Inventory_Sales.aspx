<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory_Sales.aspx.cs" Inherits="Panaderia.Forms.Inventory_Sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <title></title> 
    
     <style>
         .container{
           margin-left: 0; 
           color: #e1edf0;


         }

        .navbar-nav.treeview {
            padding: 0;
        }

        .navbar-nav.treeview a {
            padding: 10px 15px;
        }

         .navbar-nav.treeview ul {
            list-style-type: none;
            margin-left: 0;
            padding-left: 20px;
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

          .navbar-nav.treeview {
           padding: 0;
           }

            .navbar-nav.treeview a {
            padding: 10px 15px;
            }

          .navbar-nav.treeview ul {
            list-style-type: none;
            margin-left: 0;
            padding-left: 20px;
           }

    
            a:link {
            color: blue;
             }
 
            .auto-style10 {
             color: #FFFFFF;
             }

            .auto-style17 {
            height: 40px;
             }

            .auto-style29 {
            height: 23px;
             }

            .navbar-inverse{
                border-color: #fff;
                background-color: #e6e9f4;

            }

            .navbar-inverse .navbar-nav>li>a {
             color: #000000;
            }

            .navbar-inverse .navbar-nav>li>a:focus, .navbar-inverse .navbar-nav>li>a:hover {
             color: #000;
             background-color: transparent;
             }

            
             
    </style>


    
    <style type="text/css">

        .auto-style17 {
            height: 40px;
        }
        .auto-style10 {
            color: #FFFFFF;
        }
        .auto-style29 {
            height: 23px;
        }
        .auto-style32 {
            width: 100%;
            height: 553px;
        }
        .auto-style33 {
            height: 3px;
        }
    </style>
</head>
<body>


    
    <nav>
    <div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <img src="../cargillstransparent.png" alt="../<img src="../cargillstransparent.png" width="105.25px" height="53px"/>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a runat="server" href="~/"></a></li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><strong>Master Files </strong><span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Products</a></li>
                        <li><a href="#">Supplier</a></li>
                        <li><a href="#">Customer</a></li>
                        <li><a href="#">User Profile</a></li>
                        <li><a href="#">Address Book</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><strong>Inventory</strong> <span class="caret"></span></a>
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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><strong>Views</strong> <span class="caret"></span></a>
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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><strong>Reports</strong> <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Purchase</a></li>
                        <li><a href="#">Sales</a></li>
                        <li><a href="#">Analytics</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><strong>Day Books</strong> <span class="caret"></span></a>
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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><strong>Accounts</strong> <span class="caret"></span></a>
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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><strong>Tools</strong> <span class="caret"></span></a>
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
    
    <div>
    <form id="form1" runat="server">
        <table style="border-color: #CC3300; background-color: #C0C0C0;" class="auto-style32">
            <tr>
                <td class="auto-style17" style="background-color: #6699FF">&nbsp;&nbsp;<span class="auto-style10">Company&nbsp;&nbsp; </span>&nbsp;<asp:TextBox ID="company_txt" runat="server" Width="74px"></asp:TextBox>
&nbsp;&nbsp;<span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Branch</span>&nbsp;
                    <asp:TextBox ID="branch_txt" runat="server" Width="74px"></asp:TextBox>
                    &nbsp;<span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date</span>&nbsp;
                    <asp:TextBox ID="date_txt" runat="server" Width="74px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;<span class="auto-style10">&nbsp;&nbsp;&nbsp; Txn Type&nbsp;&nbsp;
                    <asp:TextBox ID="txnType_txt" runat="server" Width="74px"></asp:TextBox>
                    &nbsp;&nbsp; Number&nbsp;
                    <asp:TextBox ID="number_txt" runat="server" Width="74px"></asp:TextBox>
&nbsp;&nbsp;&nbsp; User&nbsp;
                    <asp:TextBox ID="user_txt" runat="server" Width="74px"></asp:TextBox>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="background-color: #e1edf0;">Supplier&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="suplier_txt" runat="server" OnTextChanged="suplier_txt_TextChanged"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="background-color: #e1edf0;" class="auto-style33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="suplierdiscrp_txt" runat="server" Height="56px" Width="519px" OnTextChanged="suplierdiscrp_txt_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e1edf0;">Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="amount_txt" runat="server" OnTextChanged="amount_txt_TextChanged"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e1edf0;">Supplier Reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="suplierRef_txt" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e1edf0;">Discount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="discount_txt" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e1edf0;">Comments&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="comments_txt" runat="server" Width="526px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e1edf0;">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e1edf0;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="84px" Width="739px" EnablePersistedSelection="True" EnableSortingAndPagingCallbacks="True" EnableTheming="True" ValidateRequestMode="Enabled" ClientIDMode="AutoID">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField HeaderText="Line" />
                            <asp:BoundField HeaderText="ItemCode" />
                            <asp:BoundField HeaderText="Description" />
                            <asp:BoundField HeaderText="Price" />
                            <asp:BoundField HeaderText="PSize" />
                            <asp:BoundField HeaderText="Packs" />
                            <asp:BoundField HeaderText="Nos" />
                            <asp:BoundField HeaderText="Dis" />
                            <asp:BoundField HeaderText="Amount" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e1edf0;"></td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e1edf0;">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e1edf0;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="save_btn" runat="server" BackColor="#6699FF" ForeColor="Black" Text="Save" Width="76px" OnClick="save_btn_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="print_btn" runat="server" BackColor="#6699FF" ForeColor="Black" Text="Print" Width="76px" OnClick="print_btn_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="exit_btn" runat="server" BackColor="#6699FF" ForeColor="Black" Text="Exit" Width="76px" OnClick="exit_btn_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="total_txt" runat="server" Width="92px" OnTextChanged="total_txt_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #e1edf0;">&nbsp;</td>
            </tr>
        </table>
    </form>
        </div>
</body>
</html>
