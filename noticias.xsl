<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="total">
<html>
<head>
<title>Noticias</title>
</head>
<body>
<h1>Tema: El Mundo</h1>
<xsl:apply-templates/>
</body>
</html>
</xsl:template>

	<xsl:template match="//rss">
		<xsl:for-each select="channel">
			<h1>Medio: <xsl:value-of select="./description"/></h1>
			<xsl:for-each select="./item">
				<p>
					<a>
						<xsl:attribute name="href" select="./link"/>
				 		<xsl:value-of select="./title"/>
				 	</a>
				</p>
			</xsl:for-each>
		

		</xsl:for-each>	
	</xsl:template>
</xsl:stylesheet>