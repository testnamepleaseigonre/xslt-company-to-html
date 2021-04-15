<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version ="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="company/company-name"/></title>
                <style>
                    table, td, th {
                        font-size: 16px;
                        text-align: left;
                        font-family: Arial,sans-serif;
                        border-top: none;
                        border-left: none;
                        border-right: none;
                        border-collapse: collapse;
                        padding: 6px;
                        width: 55%;
                        <!--background-color: #b3d4e1;-->
                    }
                    table.center {
                        margin-left: auto; 
                        margin-right: auto;
                    }
                    h1 {
                        text-align: center;
                        font-size: 400%;
                    }
                    h2 {
                        text-align: center;
                    }
                    body.main {
                        <!--background = "C:\Users\valde\Pictures\Saityno\115812.jpg"-->
                        background-color: #dbe6f1;
                    }
                    td.bottom {
                         border-bottom: none;
                    }
                    tr.one {
                        background-color: #b6cee3;
                    }
                    tr.two {
                        background-color: #b3d4e1;
                    }
                </style>
            </head>
            <body class="main">
                <!--<div style=" width: 1850px; height: 245px; padding: 2px; ;background-image: url('https://hdwallpaperim.com/wp-content/uploads/2017/08/24/109624-BMW-748x421.jpg');"></div>-->
                <h1><xsl:value-of select="company/company-name"/></h1>
                <hr></hr>
                <xsl:for-each select="company/vehicles/car">
                    <table class="center" border="1">
                        <tr class="one">
                            <th>Model</th>
                            <td><xsl:value-of select="model-name"/></td>
                            <td style="border-bottom: none;" rowspan="13">
                                <img src='C:\Users\valde\Pictures\Saityno\{model-name}.jpg' width="649" height="525"></img>
                            </td>
                        </tr>
                        <tr class="two">
                            <th>Date of manufacture</th>
                            <td><xsl:value-of select="date-of-manufacture"/></td>
                        </tr>
                        <tr class="one">
                            <th>Price</th>
                            <td><xsl:value-of select="price"/></td>
                        </tr>
                        <tr class="two">
                            <th>Engine volume</th>
                            <td><xsl:value-of select="engine-volume"/></td>
                        </tr>
                        <tr class="one">
                            <th>Engine power</th>
                            <td><xsl:value-of select="engine-power"/></td>
                        </tr>
                        <tr class="two">
                            <th>Fuel type</th>
                            <td><xsl:value-of select="fuel-type"/></td>
                        </tr>
                        <tr class="one">
                            <th>Gearbox</th>
                            <td><xsl:value-of select="gearbox"/></td>
                        </tr>
                        <tr class="two">
                            <th>Mileage</th>
                            <td><xsl:value-of select="mileage"/></td>
                        </tr>
                        <tr class="one">
                            <th>Body Type</th>
                            <td><xsl:value-of select="body-type"/></td>
                        </tr>
                        <tr class="two">
                            <th>Number of doors</th>
                            <td><xsl:value-of select="number-of-doors"/></td>
                        </tr>
                        <tr class="one">
                            <th>Steering wheel</th>
                            <td><xsl:value-of select="steering-wheel-side"/></td>
                        </tr>
                        <tr class="two">
                            <th>MOT expiry date</th>
                            <td><xsl:value-of select="mot-expiry-date"/></td>
                        </tr>
                        <tr class="one">
                            <th>CO2 emission</th>
                            <td ><xsl:value-of select="co2-emission"/></td>
                        </tr>
                    </table>
                    <h1></h1>
                </xsl:for-each>
                <hr></hr>
                <h2><xsl:value-of select="company/adress"/></h2>
                <h2><xsl:value-of select="company/city"/></h2>
                <h2><xsl:value-of select="company/url-adress"/></h2>
                <h2><xsl:value-of select="company/tel"/></h2>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
