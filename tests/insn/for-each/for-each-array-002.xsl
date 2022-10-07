<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="4.0" 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:array="http://www.w3.org/2005/xpath-functions/array">
   
   <xsl:variable name="in" select="[1 to 10, 10 to 15, -4 to -3]"/>
   <xsl:template name="xsl:initial-template">
      <out>
         <xsl:for-each select="array:members($in)" separator=" ">
            <xsl:sort select="count(unparcel(.))"/>
            <xsl:value-of select="sum(unparcel(.))"/>
         </xsl:for-each>
      </out>
   </xsl:template>
</xsl:transform>