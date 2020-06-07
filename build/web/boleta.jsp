<%-- 
    Document   : boleta
    Created on : 06/06/2020, 07:15:43 PM
    Author     : AN7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <h1>BOLETA DE VENTAS</h1>
        
        
        <% 
        
        String pro= request.getParameter("producto");
        double precio=  Double.parseDouble(request.getParameter("precio"));
        int can = Integer.parseInt(request.getParameter("cantidad"));
        String codigo= request.getParameter("codigo");
       
        double ventaSinDescuento= precio * can;
        
      double trentino= precio * 0.20;
   
        


  
        
        %>
        
        Producto: <%=pro%> <br>
        Precio: <%=precio%><br>
        Cantidad:<%=can%><br>
        Codigo: <%=codigo %><br>
        Pagar: <%=ventaSinDescuento%><br>
        
        
        <a href="#" >Imprimir</a>
        
        
        
    
</html>
