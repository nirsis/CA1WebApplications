<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <table id="gameList" border="1" class="indent">
            <thead>
                <tr>
                    <th colspan="4">Jeronimo's game store</th>
                </tr>
                <tr>
                    <th>Select</th>
                    <th>Game</th>
                    <th>Publisher</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="/store/category">
                    <tr>
                        <td colspan="4">
                            <xsl:value-of select="@name" />
                        </td>
                    </tr>
                    <xsl:for-each select="game">
                        <tr id="{position()}">
                            <xsl:attribute name="sale">
                                <xsl:value-of select="boolean(@sale)" />
                            </xsl:attribute>
                            <td align="left">
                                <input name="item0" type="checkbox" />
                            </td>
                            <td align="center">
                                <xsl:value-of select="title" />
                            </td>
                            <td align="center">
                                <xsl:value-of select="publisher" />
                            </td>
                            <td align="right">
                                <xsl:value-of select="price" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>