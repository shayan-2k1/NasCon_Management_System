<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
.myDiv 
{
  border: 5px outset red;
  background-color: lightgoldenrodyellow;
  text-align: center;
}

.myDiv2 
{
  border: 5px outset groove;
  background-color: lightgray;
  text-align: center;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="myDiv">
            <b>Welcome to the Admin Page</b>
        </div>

        <div class="myDiv2">
            <p style="height: 71px">
                <b>Log In</b><br/>
                Username:
                <asp:TextBox ID="TextBox1" runat="server" Width="155px"></asp:TextBox><br/>
                Password:
                <asp:TextBox ID="TextBox2" runat="server" Width="156px" style="margin-left: 4px" TextMode="Password" ></asp:TextBox>
            </p>
            <p style="height: 34px">
                <asp:Button ID="Button1" runat="server" BackColor="Lime" Height="26px" OnClick="Button1_Click" Text="Enter" />
                <br/>

            </p>
        </div>
    </form>
</body>
</html>
