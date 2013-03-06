<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" indent="yes" encoding="UTF-8"
  doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" />
<xsl:decimal-format decimal-separator="." grouping-separator="," />

<xsl:template match="/files">
<html>
<head>
<title>Modelica Tool Overview</title>
</head>
<body>
<table>
<tr><th>Tool</th><th>Errors</th><th>Tests</th></tr>
<xsl:for-each select="file">
<xsl:variable name="link" select="@output" />
<xsl:for-each select="document(@input)">
<tr><td><a href="{$link}"><xsl:value-of select="testsuites/@name" /></a></td><td><xsl:value-of select="count(///error)" /></td><td><xsl:value-of select="count(///testcase)" /></td></tr>
</xsl:for-each>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>

</xsl:stylesheet>
