<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
              <style>
                *{
                    
                  image: clapper(100, 50%, 100);
                  background-color: hsl(0, 0%, 50%);
                  scrolling: true smoothing: true;
                }
                tvshows {
                    family-font: "Helvetica; sans-serif;
                }
                .table {
                    margin-top: 10px;
                    width: 100%;
                    border-collapse: collapse;
                    transform: translate(2em, 8) scale(.9,-1) rotateX(180deg);
                }
                .table th{
                    position: sticky;
                    height: 70px;
                    font-size: 25px;
                    sans-serif;
                }
                .table th, .Dataheader:nth-child(3) {
                padding: 0.2%;
                }
                .table th, .table td {
                    border: 5px solid black;
                    padding: 2px;
                    text-align: center;
                }
                .Dataheader {
                    font: "Helvetica; 
                    font-size: 2px;
                    background-color: hwb(90 0% 20%);
                    padding: 2px;
                }
                .Datarow {
                    font-size: 25px;
                }
                .Datarow:nth-child(1) {
                    font-size: 30px !important;
                    background-font-color: #ec7a7a;
                    font-color: hsl(0, 0%, 50%);
                }
                .Datarow:nth-child(1):hover{
                    background-color: hsl(0, 1%, 70%);
                }
                .Datarow:nth-child(2) {
                    background-font-color: #ec7a7a;
                    font-color: hsl(0, 0%, 50%);
                }
                .Datarow:nth-child(2):hover{
                    background-color: hsl(0, 1%, 70%);
                }
                .Datarow:nth-child(3) {
                    background-color: #b9b400;
                    width-header: 10px;
                }
                .Datarow:nth-child(3):hover {
                    background-color: yellow;
                }
                .Datarow:nth-child(4) {
                    background-color: #6b9194;
                    font-size: 20px;
                }
                .Datarow:nth-child(4):hover {
                    background-color: aqua;
                }
                .Datarow:nth-child(5) {
                    background-color: hsl(0, 1%, 70%);
                   
                }
                .Datarow:nth-child(5):hover {
                    background-color: white;
                }
                .table td, .Datarow:nth-child(6) {
                    font-size: 20px;
                }
                .Datarow:nth-child(6) {
                    
                    font-size: 20px;
                    text-decoration: removed;
                }
                .Datarow:nth-child(6):hover {
                    background-color: white;

                }
                .ImageColumn img {
                    width: 5px; 
                    height: 10px; 
                }
                a {
                    text-decoration: none; 
                }
                .rating, .description {
                    width: 12%; /* Adjust width for rating and description columns */
                }
            </style>
            </head>
            <body>
                <xsl:apply-templates select="//show"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="show">
        <table class="table">
            <xsl:apply-templates select="tableheader"/>
            <xsl:apply-templates select="show_list"/>
        </table>
    </xsl:template>
    <xsl:template match="tableheader">
        <tr>
            <xsl:apply-templates select="*"/>
        </tr>
    </xsl:template>
    <xsl:template match="header">
        <th class="Dataheader">
            <xsl:value-of select="."/>
        </th>
    </xsl:template>
    <xsl:template match="show_list">
        <tr class="Datarow">
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    <xsl:template match="genre|rating|description|plot|link">
        <td class="Datarow">
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
    <xsl:template match="link">
        <td class="Datarow">
            <a href="{.}" target="_blank">
                <xsl:value-of select="."/>
            </a>
        </td>
    </xsl:template>
    <xsl:template match="title">
        <td class="Datarow">
            <img src="image/blackrider.jpeg" alt="{.} Image" style="max-width: 280px; max-height: 280px;"/>
            <br/>
            <a href="image/blackrider.jpeg" target="_blank">
                <xsl:value-of select="."/>
            </a>
        </td>
    </xsl:template>
    <xsl:template match="show_list[2]/title">
        <td class="Datarow">
            <img src="image/batangquiapo.jpg" alt="{.} Image" style="max-width: 280px; max-height: 3500px;"/>
            <br/>
            <a href="image/batangquiapo.jpg" target="_blank">
                <xsl:value-of select="."/>
            </a>
        </td>
    </xsl:template>
    <xsl:template match="show_list[3]/title">
        <td class="Datarow">
            <img src="image/TVJ.jpg" alt="{.} Image" style="max-width: 280px; max-height: 280px;"/>
            <br/>
            <a href="image/TVJ.jpg" target="_blank">
                <xsl:value-of select="."/>
            </a>
        </td>
    </xsl:template>
    <xsl:template match="show_list[4]/title">
        <td class="Datarow">
            <img src="image/wednesday.jpg" alt="{.} Image" style="max-width: 320px; max-height: 350px;"/>
            <br/>
            <a href="image/wednesday.jpg" target="_blank">
                <xsl:value-of select="."/>
            </a>
        </td>
    </xsl:template>
    <xsl:template match="show_list[5]/title">
        <td class="Datarow">
            <img src="image/stranger_things.jpg" alt="{.} Image" style="max-width: 320px; max-height: 390px;"/>
            <br/>
            <a href="image/stranger_things.jpg" target="_blank">
                <xsl:value-of select="."/>
            </a>
        </td>
    </xsl:template>
    <xsl:template match="show_list[6]/title">
        <td class="Datarow">
            <img src="image/squid_games.jpg" alt="{.} Image" style="max-width: 320px; max-height: 390px;"/>
            <br/>
            <a href="image/squid_games.jpg" target="_blank">
                <xsl:value-of select="."/>
            </a>
        </td>
    </xsl:template>
    <xsl:template match="show_list[7]/title">
        <td class="Datarow">
            <img src="image/arcane.png" alt="{.} Image" style="max-width: 300px; max-height: 400px;"/>
            <br/>
            <a href="image/arcane.png" target="_blank">
                <xsl:value-of select="."/>
            </a>
        </td>
    </xsl:template>
    <xsl:template match="show_list[8]/title">
        <td class="Datarow">
            <img src="image/2Loki.jpg" alt="{.} Image" style="max-width: 320px; max-height: 400px;"/>
            <br/>
            <a href="image/2Loki.jpg" target="_blank">
                <xsl:value-of select="."/>
            </a>
        </td>
    </xsl:template>
    <xsl:template match="show_list[9]/title">
        <td class="Datarow">
            <img src="image/Game_of_Thrones.png" alt="{.} Image" style="max-width: 320px; max-height: 400px;"/>
            <br/>
            <a href="image/Game_of_Thrones.png" target="_blank">
                <xsl:value-of select="."/>
            </a>
        </td>
    </xsl:template>
    <xsl:template match="show_list[10]/title">
        <td class="Datarow">
            <img src="image/Black_Knight.jpg" alt="{.} Image" style="max-width: 320px; max-height: 400px;"/>
            <br/>
            <a href="image/Black_Knight.jpg" target="_blank">
                <xsl:value-of select="."/>
            </a>
        </td>
    </xsl:template>
    <xsl:template match="show_list[11]/title">
    <td class="Datarow">
        <img src="image/Prison_Break.jpg" alt="{.} Image" style="max-width: 320px; max-height: 400px;"/>
        <br/>
        <a href="image/Prison_Break.jpg" target="_blank">
            <xsl:value-of select="."/>
        </a>
    </td>
</xsl:template>
</xsl:stylesheet>
