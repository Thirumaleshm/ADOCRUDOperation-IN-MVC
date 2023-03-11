<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="EmployeeRegistration_09_01_2023.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <script src="~Scripts/jquery.validate-vsdoc.js"></script>
        <div>
        
                 <table>
                <tr>
                    <td>Enter Email: </td>
                    <td><asp:TextBox runat="server" ID="txtEmail"/></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Enter Email is Mandatory">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ErrorMessage="Email invalid" >*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Enter Password: </td>
                    <td>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ForeColor="Red" ErrorMessage="Enter Password is Mandatory">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtPwd" ErrorMessage="Input Invalid" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" ValidateEmptyText="True">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password: </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtCPwd" TextMode="Password" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCPwd" ForeColor="Red" ErrorMessage="Re-Enter Password">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtCPwd" ForeColor="Red" ErrorMessage="Password Mismatch">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Enter Age</td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ForeColor="Red" MaximumValue="40" MinimumValue="18" Type="Integer" ErrorMessage="Enter Age between 18 to 40">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    
                    <td>Enter ID</td>
                    <td>
                        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtID" ForeColor="Red" ValueToCompare="EMP009" ErrorMessage="Please Enter Correct ID">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                    </td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" HeaderText="Error Messages" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
