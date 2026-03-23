<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" indent="yes"/>

<xsl:template match="/">
    <payments>
        <xsl:apply-templates select="DATA/ROW"/>
    </payments>
</xsl:template>

<xsl:template match="ROW">
    <payment>
        <customerId><xsl:value-of select="customerNumber"/></customerId>
        <checkNumber><xsl:value-of select="checkNumber"/></checkNumber>
        <date><xsl:value-of select="paymentDate"/></date>
        <amount><xsl:value-of select="amount"/></amount>

        <customer>
            <name><xsl:value-of select="customerName"/></name>
            <contact>
                <firstName><xsl:value-of select="contactFirstName"/></firstName>
                <lastName><xsl:value-of select="contactLastName"/></lastName>
            </contact>
        </customer>
    </payment>
</xsl:template>

</xsl:stylesheet>