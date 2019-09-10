<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ChalanApp.Registration" %>

<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title>  
</head>  
<body>  
    <form id="form1" runat="server">  
        <div>  
            <table class="auto-style1">  
                <tr>  
                    <td>First Name :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr>  

                 <tr>  
                    <td>Last Name :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr> 
                <tr>  
                    <td>Password</td>  
                     <td> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td>Confirm Password</td>  
                    <td>  
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>  
                    </td>  
                </tr> 

                 <tr>  
                    <td>Gender</td>  
                    <td>  
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">  
                            <asp:ListItem>Male</asp:ListItem>  
                            <asp:ListItem>Female</asp:ListItem>  
                        </asp:RadioButtonList>  
                    </td>  
               </tr>  
                <tr>  
                    <td>Email</td>  
                    <td>  
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                
                 <tr>
                    <td>Country</td>
                    <td>  
                        <asp:DropDownList ID="DropDownList1" runat="server">  
                            <asp:ListItem Text="Select Country" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="India" Value="India"></asp:ListItem>  
                            <asp:ListItem Text="USA" Value="USA"></asp:ListItem>  
                            <asp:ListItem Text="UK" Value="UK"></asp:ListItem>  
                        </asp:DropDownList> 
                     </td>
                </tr>

                 <tr>  
                    <td>City</td>  
                    <td>  
                        <asp:DropDownList ID="DropDownList2" runat="server">  
                            <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="Bangalore" Value="Bangalore"></asp:ListItem>  
                            <asp:ListItem Text="Mysore" Value="Mysore"></asp:ListItem>  
                            <asp:ListItem Text="Hubli" Value="hubli"></asp:ListItem>  
                        </asp:DropDownList>  
                    </td>  
                </tr>  
               
               
                
               

                <tr>
                    <td>Primary Address</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Pincode</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>CollegeName</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>College Address</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                </tr>

                 <tr>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />  
                    </td>  
                </tr> 

                <tr>
                    <td>Already a member
                        <a href="LoginPage.aspx">Click Here</a>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Size="X-Large"></asp:Label>  
                    </td>
                </tr>

                 <tr>
                    <td>Admin Login
                        <a href="AdminLogin.aspx">Click Here</a>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Font-Size="X-Large"></asp:Label>  
                    </td>
                </tr>
            </table>  
        </div>  
    </form>  
</body>  
</html>  