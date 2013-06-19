<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" indent="yes" encoding="UTF-8"
  doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" />
<xsl:decimal-format decimal-separator="." grouping-separator="," />

<xsl:template match="testsuites">
<html>
<head>
  <title><xsl:value-of select="@name" /> Modelica Compliance Results</title>
  <style>
    td.success {color:green;}
    td.error {color:red;}
  </style>
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
<xsl:choose>
  <xsl:when test="not(error)">
    <td class="success">pass</td>
  </xsl:when>
<!--
  <xsl:when test="error/@type">
    <td class="error"><xsl:value-of select="error/@type" /></td>
  </xsl:when>
-->
  <xsl:otherwise>
    <td class="error">fail</td>
  </xsl:otherwise>
</xsl:choose>
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
