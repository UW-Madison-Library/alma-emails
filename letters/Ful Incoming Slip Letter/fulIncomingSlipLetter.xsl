<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:include href="style.xsl"/>

    <xsl:template name="id-info">
        <xsl:param name="line"/>
        <xsl:variable name="first" select="substring-before($line,'//')"/>
        <xsl:variable name="rest" select="substring-after($line,'//')"/>
            <xsl:if test="$first = '' and $rest = '' ">
                <!--br/-->
            </xsl:if>
        <xsl:if test="$rest != ''">
            <xsl:value-of select="$rest"/><br/>
        </xsl:if>
        <xsl:if test="$rest = ''">
            <xsl:value-of select="$line"/><br/>
        </xsl:if>
    </xsl:template>

    <xsl:template name="id-info-hdr">
        <xsl:call-template name="id-info">
            <xsl:with-param name="line" select="notification_data/incoming_request/external_request_id"/>
            <xsl:with-param name="label" select="'Bibliographic Information:'"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="/">
        <html lang="en" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/1999/xhtml">
            <!-- BEGIN global head -->
            <xsl:call-template name="libraryHeader"/>
            <!-- END global head -->

			<body id="body" class="darkmode2 body">
                <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0">
                    <!-- Begin Email Content-->
                    <tr>
                        <td align="center" valign="top" class="small-padding" style="padding-top: 40px;">
                            <table class="mobileContent darkmode dark-border" border="0" cellpadding="0" cellspacing="0" role="presentation" style="width: 100%;">
                                <tr>
                                    <td align="center" valign="top" style="padding: 20px;">
                                        <table class="mainContent" border="0" cellpadding="0" cellspacing="0" role="presentation" style="width: 100%;">
                                            <tr>
                                                <td>
                                                    <h1 style="font-size:40px!important; font-weight:bold;">You have not processed this request properly.</h1><br />
                                                    <h1 style="font-size:40px!important; font-weight:bold;">Please go back to the lending queue, find the item, and click ship the item.</h1><br />
                                                </td>
                                            </tr>
                                                
                                            <xsl:for-each select="notification_data/items/physical_item_display_for_printing">
                                                <tr>
                                                    <td><br/><br/><b>Item Barcode: </b><img src="cid:{concat(concat('Barcode',position()),'.png')}" alt="{concat('Barcode',position())}" /></td>
                                                </tr>
                                                <tr>
                                                    <td><xsl:value-of select="title"/></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <b>Library: </b>
                                                        <xsl:value-of select="library_name"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><b>Location: </b><xsl:value-of select="location_name"/></td>
                                                </tr>
                                                <xsl:if  test="call_number" >
                                                    <tr>
                                                        <td><b>Call Number: </b><xsl:value-of select="call_number"/></td>
                                                    </tr>
                                                </xsl:if>

                                                <xsl:if  test="shelving_location/string" >
                                                    <tr>
                                                        <td><b>Shelving Location: </b>
                                                            <xsl:for-each select="shelving_location/string">
                                                            <xsl:value-of select="."/>
                                                            &#160;
                                                            </xsl:for-each>
                                                        </td>
                                                    </tr>
                                                </xsl:if>
                                            </xsl:for-each>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>