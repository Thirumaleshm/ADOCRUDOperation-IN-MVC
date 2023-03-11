<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EmployeeRegistration_09_01_2023.WebForm1" %>

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
                    <td align="center" colspan="2">Employee Registration</td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td>
                        <asp:TextBox ID="txtfnam" runat="server"/></td>   
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfnam" forecolor="Red" ErrorMessage="">* Name is Mandatory</asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" minimumValue="1-10" ControlToValidate="txtfnam" ValidationExpression="/^[A-Za-z]+$/;" ForeColor="Red" ErrorMessage="Fnam invalid" >*</asp:RegularExpressionValidator>
                    </td>
                         
                   
                     </tr>
                      <tr>
                    <td>Middle Name  </td>
                    <td>
                        <asp:TextBox ID="txtmnam" runat="server"/></td>
                         
                       
                 
                        
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td>
                        <asp:TextBox ID="txtLnam" runat="server"/></td>
                     
                    
                </tr>
                <tr>
                    <td>Father Name</td>
                    <td>
                        <asp:TextBox ID="txtFather" runat="server"/></td>
                  

                </tr>
                <tr>
                   <td> Date Of Birth </td>    
                    <td>
                        <asp:TextBox ID="Birth" runat="server"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                      
                            <asp:ListItem>male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td>Subject</td>
                     
                    <td>
                             
                    
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem>Telugu</asp:ListItem>
                            <asp:ListItem>Hindi</asp:ListItem>
                            <asp:ListItem>Tamil</asp:ListItem>
                            <asp:ListItem>Kannada</asp:ListItem>
                        </asp:CheckBoxList>
                    
                
                    </td>
                
                </tr>
                <tr>
                    <td>Religion</td>
                    
                </tr>
               

                <tr>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                            <asp:ListItem>Hindu</asp:ListItem>
                            <asp:ListItem>Musilim</asp:ListItem>
                            <asp:ListItem>Cristian</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td>Cast</td>
                 
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" >
                 
            <asp:ListItem Value="">plese select Cast</asp:ListItem>  
            <asp:ListItem>BC </asp:ListItem>  
            <asp:ListItem>Sc</asp:ListItem>  
            <asp:ListItem>ST</asp:ListItem>  
            <asp:ListItem>General</asp:ListItem>  
            
        </asp:DropDownList>  </td>
                </tr>

                <tr>
                    <td>Education Qualification</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">

                             <asp:ListItem Value="">Please Select Course</asp:ListItem>  
            <asp:ListItem>ssc</asp:ListItem>  
            <asp:ListItem>HSC</asp:ListItem> 
                             
            <asp:ListItem>Diploma</asp:ListItem>  
            <asp:ListItem>Graduate</asp:ListItem> 
                             <asp:ListItem >Postgraduate</asp:ListItem>  
           
                        </asp:DropDownList>
                        
                    </td>
                </tr>

                <tr>
                    <td>Mobile Number</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>E-Mail</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>State</td>
                 <td>
                     <asp:DropDownList ID="DropDownList3" runat="server">

                          <asp:ListItem Value="">Please Select</asp:ListItem>  
            <asp:ListItem>AP </asp:ListItem>  
            <asp:ListItem>TS</asp:ListItem>  
                         <asp:ListItem>OtherState</asp:ListItem>
                     </asp:DropDownList></td>
                    </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="RadioButton7" runat="server" Text="Yes" GroupName="rd"/></td>
                    <td>
                        <asp:RadioButton ID="RadioButton8" runat="server" Text="No" GroupName="rd" /></td>
                </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" /></td>
                        <td><asp:Label ID="lblres" runat="server" /></td>
                        </tr>
            </table>
        </div>
    </form>
</body>
</html>
