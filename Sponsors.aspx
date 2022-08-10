<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sponsors.aspx.cs" Inherits="Sponsors" %>

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
                <b>Company Name:</b><asp:TextBox ID="TextBox1" runat="server" Width="173px" style="margin-left: 20px"></asp:TextBox>
            </p>
            <p>
                <b>Representative Name:</b><asp:TextBox ID="TextBox2" runat="server" Width="142px" style="margin-left: 10px"></asp:TextBox> 
            </p>
            <p>
                <b>CNIC:</b><asp:TextBox ID="TextBox3" runat="server" Width="173px" style="margin-left: 83px"></asp:TextBox>
            </p>

            <p>
                <b>Category Name:</b><asp:TextBox ID="TextBox4" runat="server" Width="173px" style="margin-left: 20px"></asp:TextBox>
            </p>
        </div>

        <div class="myDiv2">

            <asp:Button ID="Button1" runat="server" Text="Add" ForeColor="Black" BackColor="#00CC00" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
