<?xml version="1.0"?>
<?spec xslt#named-templates?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="4.0"
  xmlns:ext="http://extensions.com/" extension-element-prefixes="ext">

  <!-- FileName: namedtemplate08 -->
  <!-- Document: http://www.w3.org/TR/xslt -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 6 Named Templates -->
    <!-- Purpose: Test of nested template calls. -->
  <!-- Output should not have pvarN default data -->

<xsl:template match="doc">
  <out>
    <xsl:variable name="RTF">
      <xsl:value-of select="a"/>
    </xsl:variable>
    <ext:tmplt1 pvar1="$RTF"/>
  </out>
</xsl:template>

<xsl:template name="ext:tmplt1">
  <xsl:param name="pvar1">pvar1 default data</xsl:param>
  <xsl:value-of select="$pvar1"/><xsl:text>,</xsl:text>
  <ext:tmplt2 pvar2="555"/>
  <xsl:text>
Back to first template.</xsl:text>
</xsl:template>

<xsl:template name="ext:tmplt2">
  <xsl:param name="pvar2">pvar2 default data</xsl:param>
  <xsl:variable name="subnode">
    <xsl:value-of select="b"/>
  </xsl:variable>
  <!-- pvar2 won't be in scope in next template, so pass it in via new variable. -->
  <xsl:variable name="passto3">
    <xsl:value-of select="number($pvar2)"/>
  </xsl:variable>

  <xsl:value-of select="$passto3"/><xsl:text>,</xsl:text>
  <ext:tmplt3 pvar3="$subnode" t1num="$passto3"/>
  <xsl:text>
Back to template 2.</xsl:text>
</xsl:template>

<xsl:template name="ext:tmplt3">
  <xsl:param name="pvar3">pvar3 default data</xsl:param>
  <xsl:param name="t1num">t1num default data</xsl:param>
  <xsl:value-of select="$pvar3"/><xsl:text>,</xsl:text>
  <xsl:value-of select="444 + $t1num"/><xsl:text>,</xsl:text>
</xsl:template>

</xsl:stylesheet>
