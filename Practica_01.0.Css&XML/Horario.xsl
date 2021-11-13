<?xml version="1.0" encoding="UTF-8"?>
<!-- File name: Curso.xsl -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:template match="/">
    <html>
      <body style="width:100vw; height:100vh; display:flex;align-items:center;justify-content: center;flex-direction:column;background-color: #393b43;color:white;margin:0;font-size:12pt">
        <h1>Descripción del curso de Luis Fernando Zurita González</h1>
        <xsl:for-each select="CURSO/ASIGNATURA">
          <DIV style="border:1px solid white;width:300px;text-align:center;margin-bottom:10px;padding:20px">
            <SPAN>Profesor: </SPAN>
            <xsl:value-of select="PROFESOR"/>
            <BR/>
            <SPAN >Asignatura: </SPAN>
            <xsl:value-of select="NOMBRE"/>
            <BR/>
            <SPAN >Creditos: </SPAN>
            <xsl:value-of select="CREDITOS"/>
            <BR/>
            <SPAN >Horario: </SPAN>
            <xsl:value-of select="HORARIO"/>
            <BR/>
            <SPAN >Periodo: </SPAN>
            <xsl:value-of select="PERIODO"/>
            <P/>
          </DIV>


        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
