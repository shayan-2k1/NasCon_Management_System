<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Team_R.aspx.cs" Inherits="Team_R" %>

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
                <b>Event Name:</b><br /><asp:TextBox ID="TextBox1" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Team Name:</b><br /><asp:TextBox ID="TextBox2" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Institute Name:</b><br /><asp:TextBox ID="TextBox3" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Ambassador ID:</b><br /><asp:TextBox ID="TextBox4" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Team Lead Name:</b><br /><asp:TextBox ID="TextBox5" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Team Lead CNIC:</b><br /><asp:TextBox ID="TextBox6" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Team Lead No.:</b><br /><asp:TextBox ID="TextBox7" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Member 2 Name:</b><br /><asp:TextBox ID="TextBox8" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Member 2 CNIC:</b><br /><asp:TextBox ID="TextBox9" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Member 2 No.</b><br /><asp:TextBox ID="TextBox10" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Member 3 Name:</b><br /><asp:TextBox ID="TextBox11" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Member 3 CNIC:</b><br /><asp:TextBox ID="TextBox12" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Member 3 No.</b><br /><asp:TextBox ID="TextBox13" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>

        </div>
        <div class="myDiv2">
            <asp:Button ID="Button1" runat="server" Text="Register" BackColor="#00CC00" OnClick="Button1_Click" Width="254px" />
        </div>
    </form>
</body>
</html>
