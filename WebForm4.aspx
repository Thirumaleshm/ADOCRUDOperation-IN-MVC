<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="EmployeeRegistration_09_01_2023.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" border="1">
                <tr>
                    <td colspan="2" align="center">Employee Registration</td>
                </tr>
                <tr>
                    <td>FirstName</td>
                    <td> <asp:TextBox ID="TextBox1" runat="server"/></td>
                </tr>
                
                <tr>
                    <td>MiddleName</td>
                    <td>  <asp:TextBox ID="TextBox2" runat="server"/></td>
                </tr>
                
                <tr>
                    <td>LastName</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"/></td>
                </tr>
              
                <tr>
                    <td>FatherName</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"/></td>
                </tr>
                 <tr>
                    <td>DateOFBirth</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"/></td>
                </tr>
                 <tr>
                    <td>FatherName</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"/></td>
                </tr>
                 <tr>
                    <td>Gender</td>
                   
                </tr>
         
                <tr>
                     <td>
                        <asp:RadioButton ID="rd1" runat="server" Text="Male" GroupName="r1" OnCheckedChanged="rd1_CheckedChanged" /></td>
                    <td>
                        <asp:RadioButton ID="Ra1" runat="server" Text="Female" GroupName="r1"  OnChekedChanged="rd1_CheckedChanged" /></td>
                </tr>

                 <tr>
                    <td>Religion</td>
                   
                </tr>
                <tr>
                     <td>
                        <asp:RadioButton ID="rd2" runat="server" Text="Hindu" GroupName="r2" OnCheckedChanged="rd2s_CheckedChanged" /></td>
                    <td>
                        <asp:RadioButton ID="rd3" runat="server" Text="Musilm" GroupName="r2"   OnCheckedChanged="rd2_CheckedChanged" /></td>
                </tr>
                <tr>
                     <td>
                        <asp:RadioButton ID="rd4" runat="server" Text="Christian" GroupName="r2" OnCheckedChanged="rd2_CheckedChanged" /></td>
                    <td>
                        <asp:RadioButton ID="rd5" runat="server" Text="Others" GroupName="r2"  OnChekedChanged="rd2_CheckedChanged"  /></td>
                </tr>
                <tr>
                    <td>Cast</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="select Cast"></asp:ListItem>
                            <asp:ListItem>BC</asp:ListItem>
                             <asp:ListItem>SC</asp:ListItem>
                             <asp:ListItem>ST</asp:ListItem>
                             <asp:ListItem>others</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Educational Qualification</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Value="Plese Select Courses"></asp:ListItem>
                            <asp:ListItem>SSC</asp:ListItem>
                               <asp:ListItem>HSC</asp:ListItem>
                               <asp:ListItem>Diploma</asp:ListItem>
                            <asp:ListItem>Graduate</asp:ListItem>
                            <asp:ListItem>postgraduate</asp:ListItem>
                              </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Mobile Number</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"/></td>
                </tr>
                <tr>
                    <td>E-Mail</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"/></td>
                </tr>
                   <tr>
                       <td>Address</td>
                       <td>
                           <asp:TextBox ID="TextBox9" runat="server"/></td>
                   </tr>
                <tr>
                    <td>State</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem Value="select State"></asp:ListItem>
                                <asp:ListItem>AP</asp:ListItem>
                                 <asp:ListItem>TS</asp:ListItem>
                                 <asp:ListItem>Other State</asp:ListItem>
                          
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Are You Local</td>
                    </tr>
                <tr>
                     <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="yes" GroupName="r4" OnCheckedChanged="RadioButton1_CheckedChanged"  /></td>
                    <td>
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="No" GroupName="r4" OnCheckedChanged="RadioButton1_CheckedChanged"/></td>

                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></td>
                    
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label ID="lblres" runat="server" Text=" "></asp:Label></td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
