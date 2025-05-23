<!-- xsl:accept - reduce the visibility to hidden. Component becomes inaccessible -->

<xsl:package
  name="http://www.w3.org/xslt30tests/accept-003"  
  package-version="1.0.0"
  version="3.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:p="http://www.w3.org/xslt30tests/accept-A"
  xmlns:q="http://www.w3.org/xslt30tests/accept-A-private"
  exclude-result-prefixes="xs p">
  
  <xsl:use-package
     name="http://www.w3.org/xslt30tests/accept-A"
     package-version="1.0.0">
     
    <!-- Error: cannot accept private component as public --> 
        
    <xsl:accept component="function" names="q:f2#0" visibility="public"/>
         
  </xsl:use-package>  
  
  <xsl:template name="main" visibility="public">
    <out foo="{q:f2()}"/>
  </xsl:template>  
  

</xsl:package>   