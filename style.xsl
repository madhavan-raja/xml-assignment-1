<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Books</title>
            </head>
            <body>
                <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'" />
                <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />

                <table border="0">
                    <tr>
                        <th bgcolor="brown">Title</th>
                        <th bgcolor="brown">Author</th>
                        <th bgcolor="brown">Genre</th>
                        <th bgcolor="brown">Copyright</th>
                        <th bgcolor="brown">Edition</th>
                        <th bgcolor="brown">ISBN</th>
                        <th bgcolor="brown">Publisher</th>
                        <th bgcolor="brown">Price</th>
                    </tr>
                    <xsl:for-each select="/books/book">
                        <tr>
                            <td bgcolor="red"><xsl:value-of select="title"/></td>
                            <td bgcolor="darkblue"><strong><xsl:value-of select="author"/></strong></td>
                            <td bgcolor="green"><xsl:value-of select="genre"/></td>
                            <td bgcolor="yellow"><xsl:value-of select="copyright"/></td>
                            <td bgcolor="purple"><xsl:value-of select="edition"/></td>
                            <td bgcolor="orange"><xsl:value-of select="isbn"/></td>
                            <td bgcolor="silver"><xsl:value-of select="publisher"/></td>
                            <td bgcolor="gold"><xsl:value-of select="price"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>