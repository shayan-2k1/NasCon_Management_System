<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit_Event.aspx.cs" Inherits="Edit_Event" %>

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
                <b>Event ID:</b>
                <asp:TextBox ID="TextBox1" runat="server" Width="156px" style="margin-left: 47px"></asp:TextBox><br/>
            </p>

            <p>
                <b>Change Date:</b>
                <asp:TextBox ID="TextBox2" runat="server" Width="156px" style="margin-left: 20px" TextMode="Date" ></asp:TextBox>
            </p>

            <p>
                <b>Start Time:</b>
                <asp:TextBox ID="TextBox3" runat="server" Width="156px" style="margin-left: 35px" TextMode="DateTime" ></asp:TextBox>
            </p>

            <p>
                <b>End Time:</b>
                <asp:TextBox ID="TextBox4" runat="server" Width="156px" style="margin-left: 40px" TextMode="DateTime" ></asp:TextBox>
            </p>

            <p style="height: 34px">
                <asp:Button ID="Button1" runat="server" BackColor="Yellow" Height="26px" OnClick="Button1_Click" Text="Update" />
                <br/>
            </p>
        </div>
    </form>
</body>
</html>
