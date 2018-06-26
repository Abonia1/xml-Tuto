<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" doctype-public="XHTML" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Mon Xml trop top</title>
                <link rel="stylesheet" type="text/css" href="data.css"/>
            </head>
            <body>
                <table>
                    <tr>
                        <th>id</th>
                        <th>lang</th>
                        <th>title</th>
                        <th>content</th>
                        <th>author</th>
                        <th>images</th>
                    </tr>
                    <xsl:for-each select="listes_articles/article">
                    <tr>
                        <td> <xsl:value-of select="@id" /> </td>
                        <td> <xsl:value-of select="@lang" /> </td>
                        <td> <xsl:value-of select="title" /> </td>
                        <td> <xsl:value-of select="content" /> </td>
                        <td> <xsl:value-of select="author" /> </td>
                        <td>
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                  images<xsl:value-of select="." />
                                </xsl:attribute>
                            </xsl:element>
                        </td>
                    </tr>
                  </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
