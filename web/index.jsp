<%-- 
    Document   : index
    Created on : Sep 27, 2017, 9:04:31 AM
    Author     : Paris Guo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
        <title>Salary Calculator</title>
    </head>
    <body>
        <h1>Simple Salary Calculator </h1>
        <hr>
        <form name="infoFrom" action="results.jsp" method="post">
            <table border="1">
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hrsworked" value="" size="50"/></td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="hrpay" value="" size="50"/></td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="pretax" value="" size="50"/></td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="posttax" value="" size="50"/></td>
                    </tr>
                   
                    </tbody>
             </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
            </form>
        
    </body>
</html>
