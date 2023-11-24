<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_profile_html.aspx.cs" Inherits="Panaderia.Forms.user_profile_html" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sample Form</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Additional custom CSS can be added here */
        /* Example: */
        /* .custom-header {
            background-color: #007BFF;
            color: white;
        } */
    </style>


    



    
    <style type="text/css">

        .auto-style32 {
            width: 100%;
            height: 53px;
        }
        .auto-style33 {
            width: 158px;
            height: 23px;
        }
        .auto-style34 {
            height: 23px;
        }
        </style>


     <style type="text/css">
        .auto-style1 {
            height: 28px;
        }
        .auto-style2 {
            width: 158px;
        }
        .auto-style3 {
            height: 28px;
            width: 158px;
        }
        .auto-style4 {
            width: 158px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            width: 65%;
            margin-left: 106px;
            margin-top: 52px;
        }
        
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





    </style>




</head>
<body>


    <div class="auto-style32">
  <div class="table-row">
    <div class="table-cell header" style="background-color: #000000; font-weight: bold;">Serial Number</div>
    <div class="table-cell" style="background-color: #000000"><input name="SerialNumber" type="text" id="SerialNumber" class="input-field" /></div>
    <div class="table-cell header" style="background-color: #000000; font-weight: bold;">Date</div>
    <div class="table-cell" style="background-color: #000000"><input name="Country" type="text" id="Country" class="input-field" /></div>
    <div class="table-cell header" style="background-color: #000000; font-weight: bold; ">User</div>
    <div class="table-cell" style="background-color: #000000"><input name="Code" type="text" id="Code" class="input-field" /></div>
  </div>
</div>



    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
                
                



                <div class="form-group row">
    <label for="txtUserName" class="col-sm-2 col-form-label">User ID</label>
    <div class="col-sm-10">
        <input type="text" id="txtUserID" class="form-control">
    </div>
</div>



                <div class="form-group row">
    <label for="txtUserName" class="col-sm-2 col-form-label">User Name</label>
    <div class="col-sm-10">
        <input type="text" id="txtUserName" class="form-control">
    </div>
</div>



                <div class="form-group row">
    <label for="txtDefaultStore" class="col-sm-2 col-form-label">Default Store</label>
    <div class="col-sm-4">
        <input type="text" id="txtDefaultStore" class="form-control" readonly>
    </div>
    <div class="col-sm-6">
        <select id="ddlDefaultStore" class="form-control" onchange="updateDefaultStoreText()">
            <option value="1">Store 1</option>
            <option value="2">Store 2</option>
            <option value="3">Store 3</option>
        </select>
    </div>
</div>




                <div class="form-group row">
    <label for="txtUserGroup" class="col-sm-2 col-form-label">User Group</label>
    <div class="col-sm-4">
        <input type="text" id="txtUserGroup" class="form-control" readonly>
    </div>
    <div class="col-sm-6">
        <select id="ddlUserGroup" class="form-control" onchange="updateUserGroupText()">
            <option value="1">Administration Staff</option>
            <option value="2">Clarical Staff</option>
            <option value="3">Executive Officers</option>
            <option value="4">User Level 01</option>
            <option value="5">System Admin</option>
            <option value="6">User Group</option>
        </select>
    </div>
</div>



                <div class="form-group row">
    <label for="txtUserName" class="col-sm-2 col-form-label">User Password</label>
    <div class="col-sm-10">
        <input type="text" id="txtUserPassword" class="form-control">
    </div>
</div>



                <div class="form-group row">
    <label for="txtUserStatus" class="col-sm-2 col-form-label">User Status</label>
    <div class="col-sm-4">
        <input type="text" id="txtUserStatus" class="form-control" readonly>
    </div>
    <div class="col-sm-6">
        <select id="ddlUserStatus" class="form-control" onchange="updateUserStatusText()">
            <option value="A">Active</option>
            <option value="D">Deleted</option>
        </select>
    </div>
</div>




                
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
    <!-- Add your JavaScript includes or scripts here if needed -->

      <!-- Include Bootstrap JS (Optional) -->
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

    


</body>
</html>

