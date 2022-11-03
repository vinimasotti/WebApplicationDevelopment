<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : warehousexsl.xsl
    Created on : 26 October 2022, 12:16
    Author     : Vinny
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
<html> 
    <head>
        <title> Page 2 </title>
    </head>
<body>
    <h1 style="background-color:Gray;"> CD Warehouse</h1>
   
   <h1> 
       <a href="https://www.google.com"> Home Page</a>
   </h1>
   
  
  <table border="1">
    <tr bgcolor="DodgerBlue">
      <th style="text-align:center">Title</th>
      <th style="text-align:right">Quantity</th>
      <th style="text-align:center">Price</th>
      <th style="text-align:center">Description</th>
    </tr>
    <xsl:for-each select="root/cd">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="quantity"/></td>
      <td><xsl:value-of select="UnitPrice"/></td>
      <td><xsl:value-of select="description"/></td>
    </tr>
    </xsl:for-each>
  </table>
  
  <br><h3> 2022 - Copyrights - Vinny - National College of Ireland</h3></br>
</body>
</html>
    </xsl:template>

</xsl:stylesheet>
