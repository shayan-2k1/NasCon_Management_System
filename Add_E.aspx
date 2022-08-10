<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_E.aspx.cs" Inherits="Add_E" %>

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
                <b>Name:</b><asp:TextBox ID="TextBox1" runat="server" Width="150px" style="margin-left: 140px"></asp:TextBox>
            </p>
            <p>
                <b>Price:</b><asp:TextBox ID="TextBox2" runat="server" Width="150px" style="margin-left: 150px"></asp:TextBox>
            </p>
            <p>
                <b>Date:</b><asp:TextBox ID="TextBox3" runat="server" Width="150px" style="margin-left: 150px" TextMode="Date"></asp:TextBox>
            </p>
            <p>
                <b>Start Time:</b><asp:TextBox ID="TextBox4" runat="server" Width="150px" style="margin-left: 115px" TextMode="DateTime"></asp:TextBox>
            </p>
            <p>
                <b>End Time:</b><asp:TextBox ID="TextBox5" runat="server" Width="150px" style="margin-left: 120px" TextMode="DateTime"></asp:TextBox>
            </p>
            <p>
                <b>Venue:<asp:TextBox ID="TextBox6" runat="server" Width="150px" style="margin-left: 140px"></asp:TextBox>
                </b>
            </p>
            <p>
                <b>Mentor ID:</b><asp:TextBox ID="TextBox7" runat="server" Width="110px" style="margin-left: 150px"></asp:TextBox>
            </p>
            <p>
                <b>Student Executive ID:<asp:TextBox ID="TextBox8" runat="server" Width="70px" style="margin-left: 120px"></asp:TextBox>
                </b>
            </p>
        </div>
        
        <div class="myDiv2">
            <asp:Button ID="Button1" runat="server" Text="Add" style="margin-left: 200px" Width="150px" BackColor="#00CC00" ForeColor="Black" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
