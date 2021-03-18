<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet varsion ="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>company.xsl</title>
            </head>
            <body>
                <xsl:for-each select="company">
                    <h1><xsl:value-of select = "companyName"/></h1>
                    <h2><xsl:value-of select = "adress"/></h2>
                    <h2><xsl:value-of select = "city"/></h2>
                    <h2><xsl:value-of select = "url_adress"/></h2>
                    <h2><xsl:value-of select = "tel"/></h2>
                </xsl:for-each>
                <table border = "1">
                    <tr bgcolor = "#aba3a2">
                        <th>Model</th>
                        <th>Date of manufacture</th>
                        <th>Price</th>
                        <th>Engine</th>
                        <th>Horsepower</th>
                        <th>Fuel type</th>
                        <th>Gearbox</th>
                        <th>Mileage</th>
                        <th>Body Type</th>
                        <th>Number of doors</th>
                        <th>Steering wheel</th>
                        <th>MOT expiry date</th>
                        <th>CO2 emission</th>
                    </tr>
                    <xsl:for-each select="company/vehicles/car">
                        <tr>
                            <td><xsl:value-of select = "model"/></td>
                            <td><xsl:value-of select = "date_of_manufacture"/></td>
                            <td><xsl:value-of select = "price"/></td>
                            <td><xsl:value-of select = "engine"/></td>
                            <td><xsl:value-of select = "hp"/></td>
                            <td><xsl:value-of select = "fuel_type"/></td>
                            <td><xsl:value-of select = "gearbox"/></td>
                            <td><xsl:value-of select = "mileage"/></td>
                            <td><xsl:value-of select = "body_type"/></td>
                            <td><xsl:value-of select = "number_of_doors"/></td>
                            <td><xsl:value-of select = "steering_wheel"/></td>
                            <td><xsl:value-of select = "mot_expiry"/></td>
                            <td><xsl:value-of select = "co2_emision"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
