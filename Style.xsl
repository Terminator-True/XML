<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
            <table border="1">
                <tr bgcolor="#9acd32">
                    <th>Aprovats</th>
                    <th>Nom_Classe</th>
                </tr>
                <xsl:for-each select="/institut/notes/classe">
                    <xsl:choose>
                        <xsl:when test='/@nom="SMX"'>
                            <tr>
                                <td><xsl:value-of select="/institut/notes/classe/@nom"/></td>    
                                <td><xsl:value-of select="round(count(/institut/notes/classe[@nom='SMX']/alumne[@aprovat='SI'])div count(institut/notes/classe[@nom='SMX']/alumne) * 100)"/>%</td>    
                            </tr>
                        </xsl:when>
                        <xsl:when test='/@nom="ASIX"'>
                            <tr>
                                <td><xsl:value-of select="/institut/notes/classe/@nom"/></td>    
                                <td><xsl:value-of select="round(count(/institut/notes/classe[@nom='ASIX']/alumne[@aprovat='SI'])div count(institut/notes/classe[@nom='ASIX']/alumne) * 100)"/>%</td>    
                            </tr>
                        </xsl:when>
                        <xsl:when test='/@nom="AF"'>
                            <tr>
                                <td><xsl:value-of select="/institut/notes/classe/@nom"/></td>    
                                <td><xsl:value-of select="round(count(/institut/notes/classe[@nom='AF']/alumne[@aprovat='SI'])div count(institut/notes/classe[@nom='AF']/alumne) * 100)"/>%</td>    
                            </tr>
                        </xsl:when>
                        <xsl:otherwise>
                            <tr>
                                <td><xsl:value-of select="/institut/notes/classe/@nom"/></td>    
                                <td><xsl:value-of select="round(count(/institut/notes/classe[@nom='GA']/alumne[@aprovat='SI'])div count(institut/notes/classe[@nom='GA']/alumne) * 100)"/>%</td>    
                            </tr>
                        </xsl:otherwise>
                    </xsl:choose>
            </xsl:for-each>
            </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>