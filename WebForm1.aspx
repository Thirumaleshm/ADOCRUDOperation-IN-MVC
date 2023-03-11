<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Insert_Update_Delete_program.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="red">
    <form id="form1" runat="server">
        <div>
            <table align="center" border="2">
                <tr>
                    <td bgcolor="yellow" colspan="3" align="center"><b>Employee Details</b> </td>
                </tr>
                <tr>
                    <td bgcolor="orange" colspan="2"> <b>empno</b></td>
                    <td>
                       </asp:Label><asp:TextBox ID="TextBox1" runat="server" style="height: 22px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="Green" colspan="2"><b>empname</b> </td>
                    <td>
                       </asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="Yellow" colspan="2"> <b>empjob</b></td>
                    <td>
                      </asp:Label><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="Blue" colspan="2"><b>empDOJ</b></td>
                    <td>
                       </asp:Label><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="orange" colspan="2"> <b>empsal</b></td>
                    <td>
                   </asp:Label><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="tomato"colspan="2"><b>empDN</b></td>
                    <td>
                       </asp:Label><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td align="center" bgcolor="green" colspan="3">
                        <asp:Button ID="Button1" runat="server" Text="insert" OnClick="Button1_Click" /></td>
                    <td align="center" bgcolor="yellow" colspan="3">
                        <asp:Button ID="Button2" runat="server" Text="update" OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="delete" OnClick="Button3_Click" />
                        <asp:Label ID="res" runat="server" Text=""></asp:Label></td>
                </tr>
                
            </table>
        </div>
    </form>
</body>
</html>
