<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Panaderia.Form.Master_Files.test" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

    /* New style for labels and inputs */
    .input-label {
        display: inline-block;
        width: 150px; /* Adjust the width as needed */
        text-align: right;
        margin-right: 10px;
    }

    .input-control {
        width: 200px; /* Adjust the width as needed */
        height: 20px;
    }

    ul.navbar {
            list-style-type: none;
            margin: 0;
            padding: 0;
            background-color: #333;
            overflow: hidden;
        }
        
        li.nav-item {
            float: left;
        }
        
        li.nav-item a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        
        li.nav-item a:hover {
            background-color: #ddd;
            color: black;
        }
</style>


</head>
<body>

    <ul class="navbar">
        <li class="nav-item">
        

    <form id="form1" runat="server">
        <a href="#">Contact</a></li>
        

        <div>
        </div>
        <table style="border-color: #CC3300; width: 100%; height: 100px; background-color: #C0C0C0;">
            <tr>
                <td class="auto-style31" style="background-color: #FFFFFF">
                    <asp:Image ID="Image1" runat="server" Height="33px" ImageUrl="~/thumbnail_Outlook-02vhhhla.png" Width="211px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="background-color: #333333"> <span class="auto-style10">Serial Number</span>
                    <asp:TextBox ID="serialNum_txt" runat="server"></asp:TextBox>
 <span class="auto-style10" style="vertical-align: middle; margin-right: 50px;">Date </span>
 <span class="auto-style10" style="vertical-align: middle; "><asp:TextBox ID="date_txt" runat="server" style="vertical-align: middle;"></asp:TextBox>
                    </span>
 <span class="auto-style10" style="vertical-align: middle; margin-right: 60px;">&nbsp; </span>
                    <asp:LoginName ID="LoginName1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="text-decoration: none; font-style: normal; font-weight: normal"></td>
            </tr>
            <tr>
                <td class="auto-style17" style="text-decoration: none; font-style: normal; font-weight: normal">Code
                    <asp:TextBox ID="code_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                    <asp:FileUpload ID="Image_upload" runat="server" Width="86px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Type<asp:TextBox ID="type_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="46px" Height="17px"></asp:TextBox>
 F - Finished Good R - Raw Meterial S - Services </td>
            </tr>
            <tr>
                <td class="auto-style17" style="font-weight: normal">Description
                    <asp:TextBox ID="discription_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="612px" Height="23px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Unit Size
                    <asp:TextBox ID="unitsize_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                     Unit in Case
                    <asp:TextBox ID="unitcase_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">UOM<asp:TextBox ID="UOM_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="50px" Height="19px"></asp:TextBox>

                    <asp:DropDownList ID="UOM_dropdown" runat="server" Height="22px" Width="69px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>EA</asp:ListItem>
                        <asp:ListItem>KG</asp:ListItem>
                        <asp:ListItem>LT</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Category 1<asp:DropDownList ID="cate1_dropdown" runat="server" Height="21px" Width="209px">
                    <asp:ListItem Selected="True"></asp:ListItem>
                    <asp:ListItem>BREVERAGE</asp:ListItem>
                    <asp:ListItem>MEAL</asp:ListItem>
                    <asp:ListItem>OTHER</asp:ListItem>
                    </asp:DropDownList>
                    
                    <asp:Label ID="cate1_label" runat="server" BackColor="#CCCCCC" BorderStyle="Groove" Text="." Width="95px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Category 2<asp:DropDownList ID="cate2_dropdown1" runat="server" Height="21px" Width="209px">
                    </asp:DropDownList>
                
                    <asp:Label ID="cate2_label" runat="server" BackColor="#CCCCCC" BorderStyle="Groove" Text="." Width="95px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Category 3
                    <asp:DropDownList ID="cate3_dropdown2" runat="server" Height="21px" Width="209px" OnSelectedIndexChanged="cate3_dropdown2_SelectedIndexChanged">
                    </asp:DropDownList>
                
                    <asp:Label ID="cate3_label" runat="server" BackColor="#CCCCCC" BorderStyle="Groove" Text="." Width="95px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Category 4<asp:DropDownList ID="cate4_dropdown3" runat="server" Height="21px" Width="209px">
                    </asp:DropDownList>
                
                    <asp:Label ID="cate4_label" runat="server" BackColor="#CCCCCC" BorderStyle="Groove" Text="." Width="95px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal"></td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">STD Cost Price<asp:TextBox ID="STDcost_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
 STD Selling Price
                    <asp:TextBox ID="STDsellinh_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                     </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Maximum Markup<asp:TextBox ID="MacMarkup_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">NBT %
<asp:TextBox ID="NBT_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                     VAT %<asp:TextBox ID="VAT_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal"></td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Status
                    <asp:TextBox ID="status_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
 A -Active D - Deleted</td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal"></td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">
                    <asp:Button ID="save_btn" runat="server" Text="Save" Width="90px" BackColor="#6699FF" OnClick="save_btn_Click" Height="26px" />

                    <asp:Button ID="browse_btn" runat="server" Text="Browse" Width="90px" BackColor="#6699FF" />

                    <asp:Button ID="exit_btn" runat="server" Text="Exit" Width="90px" BackColor="#6699FF" OnClick="exit_btn_Click" />
 </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal"></td>
            </tr>
        </table>
    </form>
</body>
</html>

