<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    <xsl:output method="html"/>
    
    <xsl:template match="/">
        <xsl:apply-templates select="//object[@class='Page']"/>
    </xsl:template>
    
    <xsl:template match="id">
        <strong>
            <xsl:value-of select="."/>:
        </strong>
    </xsl:template>
    
    <xsl:template match="property[@name='position']"/>
    <xsl:template match="property[@name='parent']"/>
    <xsl:template match="property[@name='title']">
        <xsl:value-of select="."/>
    </xsl:template>
    
    <xsl:template match="collection[@name='bodyContents']"/>
    
    <xsl:template match="collection"/>
    <xsl:template match="property[@name='version']">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="property[@name='creatorName']"/>
    <xsl:template match="property[@name='creationDate']"/>
    <xsl:template match="property[@name='lastModifierName']"/>
    <xsl:template match="property[@name='lastModificationDate']"/>
    <xsl:template match="property[@name='contentStatus']">
        <xsl:value-of select="."></xsl:value-of>
        <br />
    </xsl:template>
    <xsl:template match="property[@name='versionComment']"/>
    <xsl:template match="property[@name='originalVersion']"/>
    <xsl:template match="property[@name='space']"/>
</xsl:stylesheet>