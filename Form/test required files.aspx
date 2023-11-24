<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test required files.aspx.cs" Inherits="Panaderia.Form.test_required_files" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    

    <style>
        .navbar-inverse.navbar-nav > li > a:focus, .navbar- inverse.navbar- nav > li > a:hover {
            color: #090a22;
            background-color: transparent;
        }

        .navbar-inverse {
            background-color: #ffffff;
            border-color: #ff0005;
        }

            .navbar-inverse .navbar-nav > li > a {
                color: #000000;
            }
    </style>

     <style type="text/css">

.table-row1 {
  display: table-row;
}

.table-cell1 {
  display: table-cell;
  padding: 10px;
  color: #FFFFFF;
}

.header {
  background-color: #0000;
}

.input-field1 {
  width: 100%;
  padding: 5px;
  border: none;
  background-color: #FFFFFF;
  color: #FFFFFF;
} 
    </style>

    <style type="text/css">

        .auto-style32 {
            width: 50%;
            height: 53px;
        }
        </style>

     <style type="text/css">
                
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
           font-family: auto;
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
            width: 100%;
            }

    </style>

   

    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Supplier Form</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Bootstrap JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>

    .navbar-inverse {
        background-color: #fffbfb;
        border-color: #fd0d0d;
    }

        .navbar-inverse.navbar-nav > li > a:focus, .navbar- inverse.navbar- nav > li > a:hover {
            color: #090a22;
            background-color: transparent;
        }

        .navbar-inverse .navbar-nav > li > a {
            color: #000000;
        }

            .navbar-inverse .navbar-nav > li > a:focus, .navbar-inverse .navbar-nav > li > a:hover {
                color: #0a0459;
                background-color: #d7cdcd;
            }

        .navbar-inverse .navbar-toggle .icon-bar {
            background-color: #101010;
        }
    .auto-style322 {
        left: 0px;
        top: 15px;
        width: 106px;
    }



</style>

    <style>
        .form-group row{

        }

        .form-group {
         margin-bottom: 5px;
          }

        col-sm-2 col-form-label{

        }
    </style>


</head>
<body>

    <form id="form1" runat="server">
        
        <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <img src="../../cargillstransparent.png" width="105" height="53" />
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">                    
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Master Files</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Products</a></li>
                            <li><a href="#">Supplier</a></li>
                            <li><a href="#">Customer</a></li>
                            <li><a href="#">User Profile</a></li>
                            <li><a href="#">Address Book</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"
                           class="dropdown-toggle"
                           data-toggle="dropdown">Inventory</a>
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
                        <a href="#"
                           class="dropdown-toggle"
                           data-toggle="dropdown">Views</a>
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
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reports</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Purchase</a></li>
                            <li><a href="#">Sales</a></li>
                            <li><a href="#">Analytics</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"
                           class="dropdown-toggle"
                           data-toggle="dropdown">Day Books</a>
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
                        <a href="#"
                           class="dropdown-toggle"
                           data-toggle="dropdown">Accounts</a>
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
                                        <a href="#">Genaral -( Services )</a>
                                    </li>
                                </ul>
                            </div>
                            <li><a href="#">Sub Ledger</a></li>
                            <div id="sub-categories">
                                <ul>
                                    <li>
                                        <a href="#">Account Receivable</a>
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
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tools</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Remainders</a></li>
                            <li><a href="#">Follow up</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    </form>

<br />
<br />

<br />

     <div class="auto-style32">
  <div class="table-row">
    <div class="table-cell header" style="background-color: #eb1f10; width: 150px; font-weight: bold;">Serial Number</div>
    <div class="table-cell" style="background-color: #eb1f10; width: 300px;"><input name="SerialNumber" type="text" id="SerialNumber" class="input-field" /></div>
    <div class="table-cell header" style="background-color: #eb1f10; width: 150px; font-weight: bold;">Date</div>
    <div class="table-cell" style="background-color: #eb1f10; width: 300px;"><input name="Country" type="text" id="Country" class="input-field" /></div>
    <div class="table-cell header" style="background-color: #eb1f10; width: 150px; font-weight: bold; ">User</div>
    <div class="table-cell" style="background-color: #eb1f10; width: 300px;"><input name="Code" type="text" id="Code" class="input-field" /></div>
  </div>
</div>

    <br />

    



    <div class="container mt-5">
    <div class="row">
        <div class="col-md-6">
            <div class="form-group row">
                <label for="txtUploadImage" class="col-sm-4 col-form-label">Upload Image</label>
                <div class="col-sm-8">
                    <input type="file" id="txtUploadImage" class="form-control" />
                </div>
            </div>

            <div class="form-group row d-flex align-items-center">
                <label for="txtSupplierName" class="col-sm-4 col-form-label">Supplier Name</label>
                <div class="col-sm-8">
                    <input type="text" id="txtSupplierName" class="form-control" />
                </div>
            </div>

            <!-- Add more form fields for address, telephone, mobile, email, etc. -->

            <div class="form-group row">
                <label for="txtActiveStatus" class="col-sm-2 col-form-label">Active Status</label>
                <div class="col-sm-4">
                    <input type="text" id="txtActiveStatus" class="form-control" readonly>
                </div>
                <div class="col-sm-6">
                    <select id="ddlActiveStatus" class="form-control" onchange="updateActiveStatusText()">
                        <option value="1">Active</option>
                        <option value="0">Inactive</option>
                    </select>
                </div>
            </div>

            <!-- Add more form fields as needed -->

        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <button type="button" id="btnSave" class="btn btn-primary">Save</button>
            <button type="button" id="btnBrowse" class="btn btn-secondary">Browse</button>
            <button type="button" id="btnExit" class="btn btn-danger">Exit</button>
        </div>
    </div>
</div>












   

        

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        // Function to format a number to have two digits (e.g., 1 => "01")
        function formatNumber(number) {
            return number < 10 ? '0' + number : number;
        }

        // Function to get the current local date and time with AM/PM
        function getCurrentDateTime() {
            const now = new Date();
            const year = now.getFullYear();
            const month = formatNumber(now.getMonth() + 1); // Months are 0-based
            const day = formatNumber(now.getDate());
            const hours = formatNumber(now.getHours());
            const ampm = hours >= 12 ? 'PM' : 'AM'; // Determine AM or PM
            const twelveHour = hours > 12 ? hours - 12 : hours; // Convert to 12-hour format
            const minutes = formatNumber(now.getMinutes());
            const seconds = formatNumber(now.getSeconds());

            // Format the date and time as YYYY-MM-DD hh:mm:ss AM/PM
            return `${year}-${month}-${day} ${twelveHour}:${minutes}:${seconds} ${ampm}`;
        }

        // Function to set the date input field with the current date and time
        function setDateTimeField() {
            const dateTime = getCurrentDateTime();
            const dateField = document.getElementById('txtDate');
            dateField.value = dateTime;
        }

        // Call the function to set the date input field when the page loads
        window.onload = setDateTimeField;
    </script>

    <script>
        function updateUserGroupText() {
            var dropdown = document.getElementById("ddlUserGroup");
            var selectedText = dropdown.options[dropdown.selectedIndex].text;
            document.getElementById("txtUserGroup").value = selectedText;
        }

        function updateUserStatusText() {
            var dropdown = document.getElementById("ddlUserStatus");
            var selectedText = dropdown.options[dropdown.selectedIndex].text;
            document.getElementById("txtUserStatus").value = selectedText;
        }

        function updateDefaultStoreText() {
            var dropdown = document.getElementById("ddlDefaultStore");
            var selectedText = dropdown.options[dropdown.selectedIndex].text;
            document.getElementById("txtDefaultStore").value = selectedText;
        }
    </script>

    <script>
        // Function to get the current date and time in a formatted string
        function getCurrentDateTime() {
            var currentDate = new Date();
            var dateOptions = { year: 'numeric', month: '2-digit', day: '2-digit' };
            var timeOptions = { hour: '2-digit', minute: '2-digit', second: '2-digit', hour12: false };

            var formattedDate = currentDate.toLocaleDateString(undefined, dateOptions);
            var formattedTime = currentDate.toLocaleTimeString(undefined, timeOptions);

            return formattedDate + ' ' + formattedTime;
        }

        // Set the value of the "Country" input field to the current date and time
        document.getElementById('Country').value = getCurrentDateTime();
    </script>

    <script>
        const btnPickImage = document.querySelector('.btn-pick-image');

        btnPickImage.addEventListener('click', () => {
            // Open the file picker dialog.
            const filePicker = document.createElement('input');
            filePicker.type = 'file';
            filePicker.accept = 'image/*';
            filePicker.addEventListener('change', (e) => {
                // Get the selected image file.
                const file = e.target.files[0];

                // Read the image file as a data URL.
                const reader = new FileReader();
                reader.onload = () => {
                    // Set the data URL as the image picker's value.
                    const imagePicker = document.querySelector('.image-picker');
                    imagePicker.value = reader.result;
                };
                reader.readAsDataURL(file);
            });
            filePicker.click();
        });
    </script>

    
    <div>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />


        <footer>
                    <p>
                        &copy; <%: DateTime.Now.Year %> - Panaderia Inventory
                        Management system Powered By Cargills IT
                    </p>
                </footer>


    </div>

     

</body>
</html>


