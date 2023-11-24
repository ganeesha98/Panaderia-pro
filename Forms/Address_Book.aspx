<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Address_Book.aspx.cs" Inherits="Panaderia.Forms.Address_Book" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
<!-- jQuery -->

     
    
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
        .auto-style34 {
            height: 23px;
        }
        .auto-style35 {
            height: 40px;
        }

            
             
    </style>



    <title>Panaderia Inventory Address Book</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"/>
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
    <br />

    <form runat="server">
        <div class="container" style="color: #000000">
            <h1 class="mt-5" style="color: #000000">Panaderia Inventory Address Book</h1>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="txtSerialNumber">Serial Number:</label>
                        <asp:TextBox ID="txtSerialNumber" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group text-right">
                        <label for="txtCurrentDate">Current Date:</label>
                        <asp:TextBox ID="txtCurrentDate" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="form-group text-right">
                        <label for="txtCurrentUser">Current User:</label>
                        <asp:TextBox ID="txtCurrentUser" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                    </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="txtShortName">Short Name:</label>
                    <asp:TextBox ID="txtShortName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtFullName">Full Name:</label>
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtCity">City:</label>
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="txtEmail">Email:</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtCounty">County:</label>
                    <asp:TextBox ID="txtCounty" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtNotes">Notes:</label>
                    <asp:TextBox ID="txtNotes" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="form-group">
            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
            <asp:Button ID="btnBrowse" runat="server" Text="Browse" CssClass="btn btn-secondary" OnClick="btnBrowse_Click" />
            <asp:Button ID="btnFind" runat="server" Text="Find" CssClass="btn btn-info" OnClick="btnFind_Click" />
            <asp:Button ID="btnExit" runat="server" Text="Exit" CssClass="btn btn-danger" OnClick="btnExit_Click" />
        </div>
    </div>
        </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>
