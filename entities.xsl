<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    <xsl:output method="html"/>
    
    <xsl:key name="contentById" match="/hibernate-generic/object[@class='BodyContent']" use="id"></xsl:key>
    
    <xsl:template match="/">
        <xsl:apply-templates />
    </xsl:template>
    
    <xsl:template match="/hibernate-generic/object[@class='Page']">
      <xsl:result-document href="page{id}.txt">
            <xsl:apply-templates/>
        </xsl:result-document>
    </xsl:template>
    
    <xsl:template match="/hibernate-generic/object[@class='Space']"/>
    <xsl:template match="/hibernate-generic/object[@class='BlogPost']"/>
    <xsl:template match="/hibernate-generic/object[@class='ConfluenceBandanaRecord']"/>
    <xsl:template match="/hibernate-generic/object[@class='BucketPropertySetItem']"/>
    <xsl:template match="/hibernate-generic/object[@class='ReferralLink']"/>
    <xsl:template match="id"/>
    
    <xsl:template match="property[@name='position']"/>
    <xsl:template match="property[@name='parent']"/>
    <xsl:template match="property[@name='title']">
        <xsl:value-of select="."/>
    </xsl:template>
    
    <xsl:template match="collection[@name='bodyContents']">
        <xsl:value-of select="key('contentById',element[@class='BodyContent']/id)"/>
    </xsl:template>
    
    <xsl:template match="collection"/>
    <xsl:template match="property[@name='version']">
        Verstion: <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="property[@name='creatorName']">
        Created By: <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="property[@name='creationDate']">
        Created On: <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="property[@name='lastModifierName']">
        Last Update By: <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="property[@name='lastModificationDate']">
        Last Update On: <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="property[@name='contentStatus']"/>
    <xsl:template match="property[@name='versionComment']"/>
    <xsl:template match="property[@name='originalVersion']"/>
    <xsl:template match="property[@name='space']"/>
    <xsl:template match="property[@name='historicalVersions']"/>
</xsl:stylesheet>