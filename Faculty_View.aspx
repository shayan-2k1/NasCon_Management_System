<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Faculty_View.aspx.cs" Inherits="Faculty_View" %>

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
            <p style="text-align:center;">
                <asp:Button ID="Button1" runat="server" Text="View Reports" BackColor="#00CC00" OnClick="Button1_Click" Width="193px" /><br />
                <asp:Button ID="Button2" runat="server" Text="Add Student Executive" BackColor="#00CC00" OnClick="Button2_Click" Width="193px" /><br />
                <asp:Button ID="Button3" runat="server" Text="Delete Student Executive" BackColor="#FF3300" OnClick="Button3_Click" Width="193px" /><br />
                <asp:Button ID="Button4" runat="server" Text="Edit Event" BackColor="Yellow" OnClick="Button4_Click" Width="193px" /><br />
            </p>
        </div>
    </form>
</body>
</html>
