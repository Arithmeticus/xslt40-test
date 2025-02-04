<xsl:package 
  name="http://www.w3.org/xslt30tests/override-v-014a"
  package-version="1.0.1"
  version="3.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:f="http://www.w3.org/xslt30tests/override-v-014"
  exclude-result-prefixes="xs f"
  expand-text="yes">

  <!-- Override a global variable referenced from an inline function that has a closure -->
  
  
  <xsl:use-package name="http://www.w3.org/xslt30tests/override-v-014b" package-version="*">
    <xsl:override>
      <xsl:variable name="var" as="xs:integer" select="4"/>
    </xsl:override>
  </xsl:use-package>
  
  <xsl:template name="xsl:initial-template" visibility="public">
    <out>{f:f()()}</out>
  </xsl:template>

 
  
</xsl:package>   