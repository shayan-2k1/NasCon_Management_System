<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_S.aspx.cs" Inherits="Add_S" %>

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
                <b>Sponsor ID:</b>
                <asp:TextBox ID="TextBox1" runat="server" Width="156px" style="margin-left: 40px"></asp:TextBox><br/>
            </p>

            <p>
                <b>Sponsor Name:</b>
                <asp:TextBox ID="TextBox2" runat="server" Width="156px" style="margin-left: 20px" ></asp:TextBox>
            </p>
            <p style="height: 34px">
                <asp:Button ID="Button1" runat="server" BackColor="Lime" Height="26px" OnClick="Button1_Click" Text="Add" />
                <br/>

            </p>
        </div>
    </form>
</body>
</html>
