<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body style="width: 100%; height:100vh; display:flex;align-items:center;justify-content: center;flex-direction:column;background-color: #393b43;color:white;margin:0">
        <h2>Mi CD Coleccion</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th style="text-align:center;background-color:#444">Title</th>
            <th style="text-align:center;background-color:#444">Artist</th>
          </tr>
          <xsl:for-each select="catalog/cd">
            <tr style="text-align:center">
              <td >
                <xsl:value-of select="title" />
              </td>
              <td style="text-align:center">
                <xsl:value-of  select="artist" />
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>