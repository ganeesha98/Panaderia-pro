<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_test.aspx.cs" Inherits="Panaderia.Form.user_test" %>


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
           color: #000;


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

        .element.style {
         background-color: #0d2046;
         }
        </style>

    <style>

        .table-container {
  display: table;
  width: 100%;
}

.table-row {
  display: table-row;
}

.table-cell {
  display: table-cell;
  padding: 10px;
  color: #FFFFFF;
}

.header {
  background-color: #000000;
}

.input-field {
  width: 100%;
  padding: 5px;
  border: none;
  background-color: #FFFFFF;
  color: #FFFFFF;
}


        .auto-style32 {
            display: table;
            width: 101%;
        }




        .auto-style34 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            width: 90%;
            padding: 5px;
            background-color: #FFFFFF;
            color: #FFFFFF;
        }




        .auto-style35 {
            margin-left: 79px;
        }
        .auto-style36 {
            margin-left: 15px;
        }
        .auto-style37 {
            display: block;
            width: 100%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            margin-left: 20;
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
    <br />



    <form runat="server">



        <div class="auto-style32">
  <div class="table-row">
    <div class="table-cell header" style="background-color: #000000; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Serial Number</div>
    <div class="table-cell" style="background-color: #000000"><input name="SerialNumber" type="text" id="SerialNumber" class="input-field" /></div>
    <div class="table-cell header" style="background-color: #000000; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date</div>
    <div class="table-cell" style="background-color: #000000"><input name="Country" type="text" id="Country" class="auto-style34" /></div>
    <div class="table-cell header" style="background-color: #000000; font-weight: bold; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User</div>
    <div class="table-cell" style="background-color: #000000"><input name="Code" type="text" id="Code" class="auto-style34" /></div>
  </div>
</div>



        <!--

        <div class="container">
            <h2 class="mt-5">Address Book</h2>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="txtSerialNumber" class="auto-style31">Serial Number:</label>
                        <asp:TextBox ID="txtSerialNumber" runat="server" CssClass="auto-style30" ReadOnly="true" OnTextChanged="txtSerialNumber_TextChanged" Width="184px"></asp:TextBox>
                    &nbsp;<label for="txtCurrentDate">Current Date:</label>&nbsp;
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group text-right">
                        <label for="txtCurrentDate">Current Date:</label>
                    </div>
                    <div class="form-group text-right">
                        <label for="txtCurrentUser">User:</label>
                        <asp:TextBox ID="txtCurrentUser" runat="server" style="width: 50%" CssClass="form-control" ReadOnly="true" OnTextChanged="txtCurrentUser_TextChanged"></asp:TextBox>
                    </div>

                   

            </div>
        </div>


             -->

        <table class="auto-style35">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <asp:Label ID="lblShortName" runat="server" Text="Short Name:" CssClass="auto-style36"></asp:Label>
                    <asp:TextBox ID="txtShortName" runat="server" CssClass="auto-style37" OnTextChanged="txtShortName_TextChanged"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblFullName" runat="server" Text="Full Name:"></asp:Label>
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblCity" runat="server" Text="City:"></asp:Label>
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblCounty" runat="server" Text="County:"></asp:Label>
                    <asp:TextBox ID="txtCounty" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblNotes" runat="server" Text="Notes:"></asp:Label>
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

