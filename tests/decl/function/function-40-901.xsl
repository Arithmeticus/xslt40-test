<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:f="http://f/" exclude-result-prefixes="#all">

  <!-- Two functions with overlapping arity range -->

  <xsl:function name="f:add" as="xs:integer">
    <xsl:param name="x" as="xs:integer*"/>
    <xsl:param name="y" as="xs:integer*"/>
    <xsl:sequence select="sum(($x, $y))"/>
  </xsl:function>

  <xsl:function name="f:add" as="xs:integer">
    <xsl:param name="x" as="xs:integer*"/>
    <xsl:param name="y" as="xs:integer*" required="no"/>
    <xsl:param name="z" as="xs:integer*" required="no"/>
    <xsl:sequence select="sum(($x, $y, $z))"/>
  </xsl:function>


  <xsl:template name="xsl:initial-template">
    <out>
      <a>
        <xsl:value-of select="f:add(3, 4)"/>
      </a>
      <b>
        <xsl:value-of select="f:add((3, 4))"/>
      </b>
    </out>
  </xsl:template>
</xsl:stylesheet>
