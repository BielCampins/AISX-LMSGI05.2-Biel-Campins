<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" indent="yes"/>

<xsl:template match="/">
    <customers>
        <xsl:apply-templates select="DATA/ROW"/>
    </customers>
</xsl:template>

<xsl:template match="ROW">
    <customer>
        <id><xsl:value-of select="customerNumber"/></id>
        <name><xsl:value-of select="customerName"/></name>
        
        <contact>
            <firstName><xsl:value-of select="contactFirstName"/></firstName>
            <lastName><xsl:value-of select="contactLastName"/></lastName>
            <phone><xsl:value-of select="phone"/></phone>
        </contact>

        <address>
            <line1><xsl:value-of select="addressLine1"/></line1>
            <line2><xsl:value-of select="addressLine2"/></line2>
            <city><xsl:value-of select="city"/></city>
            <state><xsl:value-of select="state"/></state>
            <postalCode><xsl:value-of select="postalCode"/></postalCode>
            <country><xsl:value-of select="country"/></country>
        </address>

        <creditLimit><xsl:value-of select="creditLimit"/></creditLimit>
    </customer>
</xsl:template>

</xsl:stylesheet>