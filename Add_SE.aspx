<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_SE.aspx.cs" Inherits="Add_SE" %>

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
            <p>
                <b>Name</b><br /><asp:TextBox ID="TextBox1" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Roll No:</b><br /><asp:TextBox ID="TextBox2" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Batch:</b><br /><asp:TextBox ID="TextBox3" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Event ID:</b><br /><asp:TextBox ID="TextBox4" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Role:</b><br /><asp:TextBox ID="TextBox5" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Management Flag:</b><br /><asp:TextBox ID="TextBox6" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Department ID:</b><br /><asp:TextBox ID="TextBox7" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>President Flag:</b><br /><asp:TextBox ID="TextBox8" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Vice President Flag:</b><br /><asp:TextBox ID="TextBox9" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Password:</b><br /><asp:TextBox ID="TextBox10" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
        </div>
        <div class="myDiv2">
            <asp:Button ID="Button1" runat="server" Text="Enter" BackColor="#00CC00" OnClick="Button1_Click" Width="254px" />
        </div>
    </form>
</body>
</html>
