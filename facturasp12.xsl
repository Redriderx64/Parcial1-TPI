<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="iso-8859-1" version="1.0"/>
    <xsl:template match="/">
        <html>
            <body>
                <h1>Facturas</h1>
<xsl:for-each select="registro/factura">
             <table style="undefined;table-layout: fixed; width: 645px">
<thead>
  <tr>
    <th>Factura N°</th>
    <th><xsl:value-of select= "num"/></th>
    <th>Tipo:</th>
    <th><xsl:value-of select= "@tipo"/></th>
    <th></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Cliente</td>
    <td><xsl:value-of select= "cliente/@codigo"/></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Nombre</td>
    <td><xsl:value-of select= "cliente/nombre"/></td>
    <td>Documento</td>
    <td><xsl:value-of select= "cliente/documento"/></td>
    <td></td>
  </tr>
  <tr>
    <td>Telefono</td>
    <td><xsl:value-of select= "cliente/telefono"/></td>
    <td>Email</td>
    <td><xsl:value-of select= "cliente/email"/></td>
    <td></td>
  </tr>
  <tr>
  <xsl:for-each select="lineafactura">
    <td>Código</td>
    <td><xsl:value-of select= "codigo"/></td>
    <td>Detalle</td>
    <td><xsl:value-of select= "detalle"/></td>
    <td>Cantidad</td>
    <td><xsl:value-of select= "cantidad"/></td>
    <td>precio</td>
    <td><xsl:value-of select= "precio"/></td>
    <td>Subtotal</td>
    <td><xsl:value-of select= "subtotal"/></td>
  </xsl:for-each>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</tbody>
</table>
            </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>