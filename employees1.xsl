<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" indent="yes"/>

<xsl:template match="/">
    <employees>
        <xsl:apply-templates select="DATA/ROW"/>
    </employees>
</xsl:template>

<xsl:template match="ROW">
    <employee>
        <id><xsl:value-of select="employeeNumber"/></id>
        
        <name>
            <firstName><xsl:value-of select="firstName"/></firstName>
            <lastName><xsl:value-of select="lastName"/></lastName>
        </name>

        <contact>
            <extension><xsl:value-of select="extension"/></extension>
            <email><xsl:value-of select="email"/></email>
        </contact>

        <job>
            <title><xsl:value-of select="jobTitle"/></title>
            <reportsTo><xsl:value-of select="reportsTo"/></reportsTo>
        </job>

        <office>
            <code><xsl:value-of select="ofCode"/></code>
            <city><xsl:value-of select="ofCity"/></city>
            <phone><xsl:value-of select="ofPhone"/></phone>
            <address>
                <line1><xsl:value-of select="ofAdd1"/></line1>
                <line2><xsl:value-of select="ofAdd2"/></line2>
                <state><xsl:value-of select="ofState"/></state>
                <postalCode><xsl:value-of select="ofPostalCode"/></postalCode>
                <country><xsl:value-of select="ofCountry"/></country>
            </address>
            <territory><xsl:value-of select="ofTerritory"/></territory>
        </office>

    </employee>
</xsl:template>

</xsl:stylesheet>