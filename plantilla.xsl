<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="yes"/>
    <xsl:template match="/">
        <xsl:element name="departament">
                <xsl:for-each select="/institut/notes/classe/alumne">
                    <xsl:element name="persona">    
                        <xsl:element name="nom">
                            <xsl:value-of select="nom"/>
                        </xsl:element>
                        <xsl:element name="telefon">
                        </xsl:element>
                        <xsl:element name="companys">
                            <xsl:for-each select="/institut/notes/classe[@nom=/institut/notes/classe/@nom]/alumne">
                                <xsl:element name="nom">
                                    <xsl:value-of select="nom"/>
                                </xsl:element>
                                <xsl:element name="email">
                                    <xsl:value-of select="email"/>
                                </xsl:element>                            
                            </xsl:for-each>
                        </xsl:element>
                    </xsl:element>
                </xsl:for-each>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>

