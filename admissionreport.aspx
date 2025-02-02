<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admissionreport.aspx.vb" Inherits="WebApplication2.admissionreport" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admission Report</title>
    <style>
        /* Reset some default styles */
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* Set a background color for the whole page */
        body {
            background-color: #f0f0f0;
        }

        /* Style the container */
        div {
            background-color: #ffffff;
            border: 1px solid #dddddd;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            width: 80%;
            max-width: 1200px;
        }

        /* Style the heading */
        h2 {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
            color: #333333;
        }

        /* Style the label */
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
        }

        /* Style the dropdown list */
        #AcademicYearDropDown {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #cccccc;
            border-radius: 4px;
        }

        /* Style the chart */
        #Chart1 {
            width: 100%;
            height: 400px;
            margin-top: 20px;
        }

        /* Style the form */
        form {
            text-align: center;
        }

        /* Style the button */
        .top-button {
            position: absolute;
            top: 20px;
            right: 20px;
            padding: 10px 20px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        /* Adjust button styles for smaller screens */
        @media (max-width: 768px) {
            .top-button {
                top: 10px;
                right: 10px;
                padding: 8px 15px;
                font-size: 14px;
            }

            /* Adjust container styles for smaller screens */
            div {
                padding: 10px;
            }

            h2 {
                font-size: 20px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Admission Report</h2>
            <asp:Button ID="Button1" cssclass="top-button" OnClick="Button1_Click" runat="server" Text="Exit" />
            <label for="AcademicYearDropDown">Select Academic Year:</label>
            <asp:DropDownList ID="AcademicYearDropDown" runat="server" AutoPostBack="True"
                OnSelectedIndexChanged="AcademicYearDropDown_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="academic_year" DataValueField="academic_year">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:admissionformConnectionString %>" SelectCommand="SELECT DISTINCT [academic_year] FROM [AdmissionReport]"></asp:SqlDataSource>
            <asp:Chart ID="Chart1" runat="server">
                <Series>
                    <asp:Series Name="Series1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </div>
    </form>
</body>
</html>
