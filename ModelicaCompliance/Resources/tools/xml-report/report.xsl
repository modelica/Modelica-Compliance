<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" indent="yes" encoding="UTF-8"
  doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" />
<xsl:decimal-format decimal-separator="." grouping-separator="," />

<xsl:template match="testsuites">
<html>
<head>
  <title><xsl:value-of select="@name" /> Modelica Compliance Results</title>
</head>
<body>
<h1><xsl:value-of select="@name" /></h1>
<h2>Summary: <xsl:value-of select="count(///testcase)-count(///error)" />/<xsl:value-of select="count(///testcase)" /> succeeded</h2>

<xsl:for-each select="testsuite">
<h3><xsl:value-of select="@name" /> (<xsl:value-of select="count(testcase)-count(testcase/error)" />/<xsl:value-of select="count(testcase)" />)</h3>
<table>
<tr><th>Test</th><th>Status</th><!-- <th>Message</th> --></tr>
<xsl:for-each select="testcase">
<tr><td><xsl:value-of select="@name" /></td>
<td>
<xsl:choose>
  <xsl:when test="not(error)">
    OK
  </xsl:when>
  <xsl:when test="error/@type">
    <xsl:value-of select="error/@type" />
  </xsl:when>
  <xsl:otherwise>
    Error
  </xsl:otherwise>
</xsl:choose>
</td>
<!--
<td>
<xsl:choose>
  <xsl:when test="error/@message">
    <xsl:value-of select="error/@message" />
  </xsl:when>
</xsl:choose>
</td>
-->
</tr>
</xsl:for-each>
</table>
</xsl:for-each>
</body>
</html>
</xsl:template>

</xsl:stylesheet>
