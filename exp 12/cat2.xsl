<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
  <html>
  <head>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f4f7fb;
        padding: 20px;
        color: #333;
      }
      h2 {
        text-align: center;
        color: #2563eb;
        margin-bottom: 20px;
      }
      table {
        width: 90%;
        margin: 0 auto;
        border-collapse: collapse;
        background: white;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
      }
      th, td {
        border: 1px solid #ccc;
        padding: 12px;
        text-align: center;
      }
      th {
        background-color: #d9d9d9;
        color: #333;
      }
      tr:nth-child(even) {
        background-color: #f9f9f9;
      }
      tr:hover {
        background-color: #f1f5f9;
      }
    </style>
  </head>
  <body>
  <h2>My CD Collection</h2>  
  <table>
    <tr>
      <th>Title</th>
      <th>Artist</th>
      <th>Country</th>
      <th>Company</th>
      <th>Price</th>
      <th>Year</th>
    </tr>
    <xsl:for-each select="catalog/cd">
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="artist"/></td>
        <td><xsl:value-of select="country"/></td>
        <td><xsl:value-of select="company"/></td>
        <td><xsl:value-of select="price"/></td>
        <td><xsl:value-of select="year"/></td>
      </tr>
    </xsl:for-each>
  </table>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>