<%-- 
    Document   : index
    Created on : Sep 30, 2015, 8:02:30 PM
    Author     : Zheng yang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    
   
    <body>
            <div class="calculator">
        <h1>Simple Salary Calculator</h1>
        <hr />
        <form name="demoForm" action="results.jsp" method="post">
            <div class="calculator">
            <table>
                <tbody>
                    <tr>
                        <td>Hourly Worked:</td>
                        <td><input type="text" name="Total hour worked" value="" size="50"required </td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="Hourly Rate" value="" size="50" required </td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="Pre-tax Deduct" value="" size="50" required </td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax deduct:</td>
                        <td><input type="text" name="Post-tax deduct" value="" size="50" required </td>
                    </tr>
                    
                </tbody>
                
            </table>
         
             <div class="calculator">
            <input Type="reset" value="clear" id="clear">
            <input type="submit" value="submit" id="submit">
               </div>
        </form>
    </body>
</html>
