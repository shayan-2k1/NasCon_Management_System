<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Executive.aspx.cs" Inherits="Student_Executive" %>

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
            <p style="height: 71px">
                <b><u style="margin-left:80px">Student Executive Login</u></b><br/>
                <br />
                Roll No:
                <asp:TextBox ID="TextBox1" runat="server" Width="155px" style="margin-left:25px"></asp:TextBox><br/><br />
                Password:
                <asp:TextBox ID="TextBox2" runat="server" Width="155px" style="margin-left:13px" TextMode="Password" ></asp:TextBox>
            </p>
            <br />
            <p style="height: 34px">
                <asp:Button ID="Button1" runat="server" BackColor="Lime" Height="26px" OnClick="Button1_Click" Text="Enter" />
                <br/>

            </p>
        </div>
    </form>
</body>
</html>
