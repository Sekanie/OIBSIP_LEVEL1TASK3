<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Temerature_Converter.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Temperature Converter Website</title>

    <style>
        body {
            background-color: #53d2dc;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        h2 {
            color: #FFE3B3;
            font-size:40px;
            
        }

        label {
            display: block;
            margin: 10px 0;
            font-size:20px;
        }

        input,
        select,
        button {
            padding: 8px;
            margin: 5px 0;
            width: 7%;
            box-sizing: border-box;
        }

        button{
            cursor: pointer;
        }

        button:hover {
            background-color: #9932CC; 
        }

        .result-container {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div>
            <h2>Temperature Converter</h2>

            <label for="temperature">Temperature:</label>
            <asp:TextBox ID="txtTemperature" runat="server" Required="true" Width="169px"></asp:TextBox>

            <asp:DropDownList ID="ddlUnit" runat="server" Required="true">
                <asp:ListItem Text="Celsius" Value="celsius"></asp:ListItem>
                <asp:ListItem Text="Fahrenheit" Value="fahrenheit"></asp:ListItem>
            </asp:DropDownList>
            </div>

        <p>
            <asp:Button ID="btnConvert" runat="server" Text="Convert" OnClick="btnConvert_Click" ValidationGroup="conversion" Width="200px" />
        </p>

        <div class="result-container">
            <label for="Result">Result:</label>
            <asp:TextBox ID="txtResult" runat="server" ReadOnly="true" Width="200px"></asp:TextBox>
        </div>
        
    </form>
</body>
</html>
