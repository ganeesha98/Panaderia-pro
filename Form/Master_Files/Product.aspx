<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Panaderia.Form.Master_Files.Products" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="border-color: #CC3300; width: 92%; height: 100px; background-color: #C0C0C0;">
            <tr>
                <td class="auto-style31" style="background-color: #FFFFFF">
                    <asp:Image ID="Image1" runat="server" Height="33px" ImageUrl="~/thumbnail_Outlook-02vhhhla.png" Width="211px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="background-color: #333333">&nbsp;&nbsp; <span class="auto-style10">Serial Number</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="serialNum_txt" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date&nbsp; </span>&nbsp;<asp:TextBox ID="date_txt" runat="server"></asp:TextBox>
&nbsp; <span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;User&nbsp; </span>
                    <asp:TextBox ID="user_txt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="text-decoration: none; font-style: normal; font-weight: normal">Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="code_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:FileUpload ID="Image_upload" runat="server" Width="86px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="type_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="46px" Height="17px"></asp:TextBox>
&nbsp;&nbsp; F - Finished Good&nbsp;&nbsp; R - Raw Meterial&nbsp; S - Services&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style17" style="font-weight: normal">Description &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                <td class="auto-style29" style="font-weight: normal">UOM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="UOM_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="50px" Height="19px"></asp:TextBox>
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
                <td class="auto-style29" style="font-weight: normal">STD Cost Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="STDcost_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STD Selling Price&nbsp;&nbsp;&nbsp;
                    &nbsp;<asp:TextBox ID="STDsellinh_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Maximum Markup%&nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;<asp:TextBox ID="MacMarkup_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">NBT %&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
&nbsp;<asp:TextBox ID="NBT_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VAT %&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="VAT_txt" runat="server" BorderColor="Gray" BorderStyle="Solid" OnTextChanged="code_txt_TextChanged" Width="119px" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" style="font-weight: normal">Status&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
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
</body>
</html>
