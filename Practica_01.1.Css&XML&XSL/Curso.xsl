<?xml version="1.0" encoding="UTF-8"?>
<!-- File name: Curso.xsl -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:template match="/">
    <html>
      <body style="width:100vw; height:100vh; display:flex;align-items:center;justify-content: center;flex-direction:column;background-color: #393b43;color:white;margin:0">

        <h2>Descripción del curso</h2>
        <xsl:for-each select="CURSO/ASIGNATURA">
          <div style="background-color:#444;width:300px; height:200px;text-align:center;border:1px solid white;display:flex;align-items:center;justify-content:center;flex-direction:column;margin-bottom:10px">
            <div>

              <span STYLE="font-weight:bold">Profesor: </span>
              <xsl:value-of select="PROFESOR" />
            </div>
            <div>

              <span STYLE="font-weight:bold">Asignatura: </span>
              <xsl:value-of select="NOMBRE" />
            </div>
            <div>

              <span STYLE="font-weight:bold">Creditos: </span>
              <xsl:value-of select="CREDITOS" />
            </div>
            <div>

              <span STYLE="font-weight:bold">Horario: </span>
              <xsl:value-of select="HORARIO" />
            </div>
            <div>

              <span STYLE="font-weight:bold">Periodo: </span>
              <xsl:value-of select="PERIODO" />
            </div>
          </div>

        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>