<%-- 
    Document   : results
    Created on : Sep 30, 2015, 9:57:17 PM
    Author     : Zheng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>
     <%    
        int hourlyworked = Integer.parseInt(request.getParameter("Total hour worked"));
        int hourlypay = Integer.parseInt(request.getParameter("Hourly Rate"));
        int pretaxdeduct= Integer.parseInt(request.getParameter("Pre-tax Deduct"));
        int posttaxdeduct = Integer.parseInt(request.getParameter("Post-tax deduct"));
        int hoursovertime=hourlyworked-40;
        double otpayrate=hourlypay*1.5;
        double regularpay=40*hourlypay;
        double otpay=hoursovertime*otpayrate;
        double  grosspay=hourlyworked*hourlypay;
         double taxablepay=grosspay-pretaxdeduct;
        double taxamount=taxablepay*0.18;
         double posttaxpay=taxablepay-taxamount;
         double netpay=posttaxpay-posttaxdeduct;
                
    %>
    
    <body>
        <h1>Salary Info</h1>
        
        
        <table border="2">
            <tbody>
                <tr>
                    <td>Total hourly worked:</td>
                    <td><%= hourlyworked %></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlypay %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= pretaxdeduct %></td>
                </tr>
                
                <tr>
                    <td>Post-tax deduct:</td>
                    <td><%= posttaxdeduct %></td>
                </tr>
                
                <tr>
                    <td>#hours overtime:</td>
                    <td><%= hoursovertime %></td>
                </tr>
                
                <tr>
                    <td>Overtime hourly rate:</td>
                    <td><%= otpayrate %></td>
                </tr>
                
                <tr>
                    <td>Gross pay:</td>
                    <td><%= grosspay %></td>
                </tr>
                
                <tr>
                    <td>pre-tax income:</td>
                    <td><%= taxablepay %></td>
                </tr>
                
                <tr>
                    <td>Tax amount:</td>
                    <td><%= taxamount %></td>
                </tr
                
                <tr>
                    <td>Post-tax pay:</td>
                    <td><%= posttaxpay %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netpay %></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
