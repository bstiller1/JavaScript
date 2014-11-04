<?xml version="1.0" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat"/>
<xsl:template match="/">
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="jackie.css" />
<title>Jackie's Jewelery Making Classes</title>
</head>
<body>
	<h2>Jackie's Jewelery Making Classes</h2>
	<table border="1" align="center" width="50%">
		<tr bgcolor="blue">
			<th>Course Name</th>
			<th>Location</th>
			<th>Days and Times</th>
		</tr>
	<xsl:for-each select="/jackie_classes/course_info">
		<tr>
			<td><xsl:value-of select="@id"/></td>
			<td><xsl:value-of select="where"/></td>
			<td><xsl:value-of select="when"/></td>
		</tr>
	</xsl:for-each>
		<tr>
			<td colspan="3">Each class runs for 4 weeks.
			The cost is $8.00 per class or $25.00 for each
			4-week session, payable in advance. </td>
		</tr>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>