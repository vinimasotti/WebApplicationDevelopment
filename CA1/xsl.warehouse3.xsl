<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            
            <head>
                <title>Page 3</title>
            </head>
            
            <body>
                <h1 style = "border:4px solid DodgerBlue "></h1>
                <h1 style="background-color:Gray;"> CD Warehouse</h1>
                <!-- <h1 style="background-color:Gray;">CD - All titles</h1>
                <xsl:apply-templates select="/root/cd"/> -->
                <h1>
                    <p></p> 
                    <a href="https://www.google.com"> Home Page</a>
        </h1>
                <h1 style="background-color:Gray;">CD Artist</h1>
                <xsl:apply-templates select="/root/cd/name"/>
                
                <h1 style="background-color:Gray;">American CDs (ID) </h1>
                <xsl:apply-templates select="/root/cd/description[contains(string(), 'USA')]"/>  
                    
                <h1 style="background-color:Gray;"> Prices +10 </h1>
                <xsl:apply-templates select="/root/cd[UnitPrice>10.00]"/>
                
                 
                <!--   <h1> Prices -10</h1>
                <xsl:apply-templates select="/catalog/cd/price "/>
                   <h2> all data </h2>
                <xsl:apply-templates select="/catalog"/>-->
                <br><h3> 2022 - Copyrights - Vinny - National College of Ireland</h3></br>
            </body>
        </html>
    </xsl:template>
    
   
    <xsl:template match="name">
        <ul>
            <li>
                <xsl:value-of select="."/>
            </li>
        </ul>
    </xsl:template>
    
    
    
    <!-- <xsl:template match="UnitPrice">
                <xsl:value-of select="name"/>    
    </xsl:template>-->
    
    
    
    <xsl:template match="description"> <!-- it get american CD ID-->
        <ul>
            <li>
                <xsl:value-of select="../@id"/> 
                <br></br>
                <xsl:value-of select="."/> 
            </li>
        </ul>
    </xsl:template>
    <!--
    <xsl:template match="country">
       <xsl:value-of select="../@id"/>     
    </xsl:template>
    
    <xsl:template match="UnitPrice">
        
                <xsl:value-of select="."/> 
         
        
    </xsl:template> -->
    
    
    <!-- <xsl:template  match ="/root/cd[UnitPrice>10.00]/name">
        <p>
            <xsl: value-of select="name"/>
            
            <xsl: value-of select="UnitPrice"/>
        </p>
    </xsl:template> -->
    
</xsl:stylesheet>

