<%-- 
    Document   : results
    Created on : Sep 27, 2017, 9:13:54 AM
    Author     : Paris Guo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css" />
        <title>Salary Info</title>
    </head>
    
      <%
        int hrsWorked = Integer.parseInt(request.getParameter("hrsworked"));
        int hrPay = Integer.parseInt(request.getParameter("hrpay"));
        double preTaxDeduct = Integer.parseInt(request.getParameter("pretax"));
        double postTaxDeduct = Integer.parseInt(request.getParameter("posttax"));
        int regularHours;
        int overHours;
        double overPayRate;
        double overPay;
        double regularPay;
        double grossPay;
        double taxAmount;
        double postTaxPay;
        double netPay;
    
    if (hrsWorked > 40)
    {
    regularHours = 40;
    overHours = hrsWorked - 40;
    overPayRate = hrPay * 1.5;
    overPay = overHours * overPayRate;
    regularPay = regularHours * hrPay;
    grossPay = regularPay + overPay;
    }
    
    
   else {
    grossPay = hrsWorked * hrPay;
    overHours = 0;
    overPayRate = 0;
    }  
        
        double taxablePay = grossPay - preTaxDeduct;
        
        if (grossPay < 500) {
            taxAmount = taxablePay * 0.18;
        }
        
        else {
            taxAmount = taxablePay * 0.22;
        }
        
        postTaxPay = taxablePay - taxAmount;
        netPay = postTaxPay - postTaxDeduct;

    %>
        
        
        
    
    <body>
        <h1>Salary Information</h1>
        <hr>
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hrsWorked %></td>
                </tr>
                
                 <tr>
                    <td>Hourly Rate:</td>
                    <td>$<%= hrPay %></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td><%= overHours %></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td>$<%= overPayRate %></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td>$<%= grossPay %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td>$<%= preTaxDeduct %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td>$<%= taxablePay %></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td>$<%= taxAmount %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td>$<%= postTaxPay %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td>$<%= postTaxDeduct %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td>$<%= netPay %></td>
                </tr>
                
                
            </tbody>>
        </table>
    </body>
      
</html>
