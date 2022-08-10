<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Reports.aspx.cs" Inherits="Admin_Reports" %>

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
                <asp:Button ID="Button2" runat="server" Text="Add Faculty Mentor" BackColor="#00CC00" OnClick="Button2_Click" Width="193px" /><br />
                <asp:Button ID="Button3" runat="server" Text="Add Student Executive" BackColor="#00CC00" OnClick="Button3_Click" Width="193px" /><br />
                <asp:Button ID="Button4" runat="server" Text="Add Sponsor" BackColor="#00CC00" OnClick="Button4_Click" Width="193px" /><br />
                <asp:Button ID="Button5" runat="server" BackColor="#00CC00" Text="Add Event" OnClick="Button5_Click" style="margin-left: 0px" Width="193px" /><br />
                <asp:Button ID="Button6" runat="server" Text="Delete Faculty Mentor" BackColor="Red" OnClick="Button6_Click" Width="193px" /><br />
                <asp:Button ID="Button7" runat="server" Text="Delete Student Executive" BackColor="Red" OnClick="Button7_Click" Width="193px" /><br />
                <asp:Button ID="Button8" runat="server" Text="Delete Sponsor" BackColor="Red" OnClick="Button8_Click" Width="193px" /><br />
                <asp:Button ID="Button9" runat="server" BackColor="Red" Text="Delete Event" OnClick="Button9_Click" Width="193px" /><br />
            </p>
        </div>
    </form>
</body>
</html>
