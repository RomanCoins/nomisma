<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:xs="http://www.w3.org/2001/XMLSchema"
	exclude-result-prefixes="xs xhtml" version="2.0">

	<xsl:param name="id"/>

	<xsl:template match="/">
		<Placemark xmlns="http://earth.google.com/kml/2.0">
			<name>
				<xsl:value-of select="descendant::xhtml:div[@property='skos:prefLabel'][@xml:lang='en']"/>
			</name>
			<styleUrl>#mapped</styleUrl>
			<!-- add placemark -->
			<xsl:if test="descendant::*[@property='geo:long'] and descendant::*[@property='geo:lat']">
				<Point>
					<coordinates>
						<xsl:value-of select="concat(descendant::*[@property='geo:long'], ',', descendant::*[@property='geo:lat'])"/>
					</coordinates>
				</Point>
			</xsl:if>

		</Placemark>
	</xsl:template>

</xsl:stylesheet>
