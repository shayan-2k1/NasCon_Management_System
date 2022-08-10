<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete_E.aspx.cs" Inherits="Delete_E" %>

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
                <b>Event Name:</b>
                <asp:TextBox ID="TextBox1" runat="server" Width="170px" style="margin-left: 40px"></asp:TextBox><br/>
            </p>

            <p style="height: 34px">
                <asp:Button ID="Button1" runat="server" BackColor="Red" Height="26px" OnClick="Button1_Click" Text="Delete" style="margin-left: 11px" />
                <br/>

            </p>
        </div>
    </form>
</body>
</html>
