<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:include href="style.xsl"/>
    <xsl:template match="/">
        <html lang="en" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/1999/xhtml">
            <!-- BEGIN global head -->
            <xsl:call-template name="libraryHeader"/>
            <!-- END global head -->
            <head>
                <xsl:call-template name="generalStyle" />
                <style>
                    .messageArea img {
                    width: 98%!important;
                    height: auto!important;
                    }
                    </style>
            </head>
            <!-- Based on slip created by SMU; modified by Linda Richter;
				Modifications include:
				* Added code to distinguish between institutions
				* Added templates to extract useful information from cluttered XML
				* Completely reformatted to match Minitex slips
				* Added in the Wisconsin Letter customizations so this can be used for both State Delivery Systems - KMS@Madison 20211227
		 -->
            <body>
                <!-- Letter starts here -->
                <div class="messageArea">
                    <div class="messageBody">
                        <!--Setup for Redbox delivery for WI-->
                        <table cellspacing="0" cellpadding="10px"  style="margin:0; width:100%;">
                            <xsl:choose>
                                <xsl:when test="contains(notification_data/partner_code, '01UWI_EC')">
                                    <tr>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;">
                                            <strong> @@returned_to@@: </strong>
                                            <div style="font-size:30px; font-weight:bold;">
                                                <br />
                                                <xsl:value-of select="(notification_data/partner_name)"/>
                                            </div>
                                            <br />
                                        </td>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;"></td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="contains(notification_data/partner_code, '01UWI_GB')">
                                    <tr>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;">
                                            <strong> @@returned_to@@: </strong>
                                            <div style="font-size:30px; font-weight:bold;">
                                                <br />
                                                <xsl:value-of select="(notification_data/partner_name)"/>
                                            </div>
                                            <br />
                                        </td>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;"></td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="contains(notification_data/partner_code, '01UWI_LC')">
                                    <tr>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;">
                                            <strong> @@returned_to@@: </strong>
                                            <div style="font-size:30px; font-weight:bold;">
                                                <br />
                                                <xsl:value-of select="(notification_data/partner_name)"/>
                                            </div>
                                            <br />
                                        </td>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;"></td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="contains(notification_data/partner_code, '01UWI_ML')">
                                    <tr>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;">
                                            <strong> @@returned_to@@: </strong>
                                            <div style="font-size:30px; font-weight:bold;">
                                                <br />
                                                <xsl:value-of select="(notification_data/partner_name)"/>
                                            </div>
                                            <br />
                                        </td>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;"></td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="contains(notification_data/partner_code, '01UWI_OSH')">
                                    <tr>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;">
                                            <strong> @@returned_to@@: </strong>
                                            <div style="font-size:30px; font-weight:bold;">
                                                <br />
                                                <xsl:value-of select="(notification_data/partner_name)"/>
                                            </div>
                                            <br />
                                        </td>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;"></td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="contains(notification_data/partner_code, '01UWI_PL')">
                                    <tr>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;">
                                            <strong> @@returned_to@@: </strong>
                                            <div style="font-size:30px; font-weight:bold;">
                                                <br />
                                                <xsl:value-of select="(notification_data/partner_name)"/>
                                            </div>
                                            <br />
                                        </td>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;"></td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="contains(notification_data/partner_code, '01UWI_PLT')">
                                    <tr>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;">
                                            <strong> @@returned_to@@: </strong>
                                            <div style="font-size:30px; font-weight:bold;">
                                                <br />
                                                <xsl:value-of select="(notification_data/partner_name)"/>
                                            </div>
                                            <br />
                                        </td>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;"></td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="contains(notification_data/partner_code, '01UWI_RF')">
                                    <tr>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;">
                                            <strong> @@returned_to@@: </strong>
                                            <div style="font-size:30px; font-weight:bold;">
                                                <br />
                                                <xsl:value-of select="(notification_data/partner_name)"/>
                                            </div>
                                            <br />
                                        </td>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;"></td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="contains(notification_data/partner_code, '01UWI_SF')">
                                    <tr>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;">
                                            <strong> @@returned_to@@: </strong>
                                            <div style="font-size:30px; font-weight:bold;">
                                                <br />
                                                <xsl:value-of select="(notification_data/partner_name)"/>
                                            </div>
                                            <br />
                                        </td>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;"></td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="contains(notification_data/partner_code, '01UWI_ST')">
                                    <tr>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;">
                                            <strong> @@returned_to@@: </strong>
                                            <div style="font-size:30px; font-weight:bold;">
                                                <br />
                                                <xsl:value-of select="(notification_data/partner_name)"/>
                                            </div>
                                            <br />
                                        </td>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;"></td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="contains(notification_data/partner_code, '01UWI_SUPER')">
                                    <tr>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;">
                                            <strong> @@returned_to@@: </strong>
                                            <div style="font-size:30px; font-weight:bold;">
                                                <br />
                                                <xsl:value-of select="(notification_data/partner_name)"/>
                                            </div>
                                            <br />
                                        </td>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;"></td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="contains(notification_data/partner_code, '01UWI_WW')">
                                    <tr>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;">
                                            <strong> @@returned_to@@: </strong>
                                            <div style="font-size:30px; font-weight:bold;">
                                                <br />
                                                <xsl:value-of select="(notification_data/partner_name)"/>
                                            </div>
                                            <br />
                                        </td>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;"></td>
                                    </tr>
                                </xsl:when>
                                <!--Setup for Switch Redbox delivery for WI-->
                                <xsl:when test="starts-with(notification_data/partner_code, '01SLCO')">
                                    <tr>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;">
                                            <strong> @@returned_to@@: </strong>
                                            <div style="font-size:30px; font-weight:bold;">
			SWITCH
                                                <br /> -
                                                <xsl:value-of select="normalize-space(substring-after(notification_data/partner_name, ('-')))"/>
                                            </div>
                                            <br />
                                        </td>
                                        <td valign="top" style="border:0px solid black; width:50%; padding:10px;"></td>
                                    </tr>
                                </xsl:when>
                                <!--MN top part of letter -->
                                <xsl:when test="contains(notification_data/incoming_request/pod_id, '381639321420000041')">
                                    <tr>
                                        <td style="font-weight:700;text-align:center;" colspan="2">
						Route via Minitex Courier
                                            <br />
						Return this slip with the item.
                                        </td>
                                    </tr>
                                    <tr>
                                        <!-- Lender cell -->
                                        <td valign="top" style="border:1px solid black; width:50%; padding:10px;">
                                            <b>From:</b>
                                            <br />
                                            <!-- Borrower code -->
                                            <span style="font-size:64px; font-weight:700; padding-bottom: 20px;" class="visible">
						GZM</span>
                                            <br />
                                            <b>Borrower: </b>UW-Madison
                                            <xsl:value-of select="notification_data/item/library_name"/>
                                            <!-- end borrower code -->
                                            <br />
                                            <br />
                                            <br />
                                        </td>
                                        <!-- end borrower cell -->
                                        <!--Lending cell -->
                                        <td valign="top" style="border:1px solid black; width:50%; padding:10px;">
                                            <b>Returned to:</b>
                                            <br />
                                            <!-- Borrower code -->
                                            <span style="font-size:64px; font-weight:600; padding-bottom: 20px;" class="visible">
                                                <xsl:choose>
                                                    <xsl:when test="contains(notification_data/partner_name, 'Ireland Library')">SSE</xsl:when>
                                                    <xsl:when test="contains(notification_data/partner_name, 'Keffer Library')">MNTMP</xsl:when>
                                                    <xsl:when test="contains(notification_data/partner_name, 'Thomas Law Library')">TL#</xsl:when>
                                                    <xsl:when test="contains(notification_data/partner_name, 'Shaughnessy-Frey Library')">MNT</xsl:when>
                                                    <xsl:when test="contains(notification_data/partner_name, 'Bethel')">MNK</xsl:when>
                                                    <xsl:when test="contains(notification_data/partner_name, 'Hamline')">MHA</xsl:when>
                                                    <xsl:when test="contains(notification_data/partner_name, 'Bridge')">MNO</xsl:when>
                                                    <xsl:when test="contains(notification_data/partner_name, 'University of Minnesota Libraries')">MNU</xsl:when>
                                                    <xsl:when test="contains(notification_data/partner_name, 'Minitex')">MII</xsl:when>
                                                    <xsl:otherwise>
				
				</xsl:otherwise>
                                                </xsl:choose>
                                            </span>
                                        </td>
                                    </tr>
                                </xsl:when>
                                <xsl:otherwise>
                                    <!--For all other RAPIDO pods-->
                                    <tr>
                                        <td style="font-weight:700;text-align:center;" colspan="2">
                                            Route to ILL - Needs to ship UPS or USPS for international
                                            <br />
                                            Borrowing RS Return - Ship back to Lending Library
                                            <br />
                                        </td>
                                    </tr>
                                    <!--Shiping info-->
                                    <br />
                                    <table cellspacing="0" cellpadding="0" border="1" colspan="2">
                                        <tr>
                                            <td style="border:1px solid black; width:50%; padding:10px; font-size:12px;width:350px">
                                                <div style="font-size:18px;">
                                                    <br></br>
                                                    <strong> @@returned_to@@:
                                                        <xsl:value-of select="notification_data/alternate_symbol"/>
                                                    </strong>
                                                    <br />
                                                    <strong>
                                                        <xsl:value-of select="notification_data/partner_name"/>
                                                    </strong>
                                                    <br />
                                                    <xsl:if test="notification_data/request/return_info !=''">
                                                        <xsl:value-of select="notification_data/request/return_info"/>
                                                    </xsl:if>
                                                    <xsl:if test="notification_data/partner_address/line1 !=''">
                                                        <xsl:value-of select="notification_data/partner_address/line1"/>
                                                    </xsl:if>
                                                    <br />
                                                    <xsl:if test="notification_data/partner_address/line2 !=''">
                                                        <xsl:value-of select="notification_data/partner_address/line2"/>
                                                        <br />
                                                    </xsl:if>
                                                    <xsl:if test="notification_data/partner_address/line3 !=''">
                                                        <xsl:value-of select="notification_data/partner_address/line3"/>
                                                        <br />
                                                    </xsl:if>
                                                    <xsl:if test="notification_data/partner_address/line4 !=''">
                                                        <xsl:value-of select="notification_data/partner_address/line4"/>
                                                        <br />
                                                    </xsl:if>
                                                    <xsl:if test="notification_data/partner_address/line5 !=''">
                                                        <xsl:value-of select="notification_data/partner_address/line5"/>
                                                        <br />
                                                    </xsl:if>
                                                    <xsl:if test="notification_data/partner_address/city !=''">
                                                        <xsl:value-of select="notification_data/partner_address/city"/>,&#160;
                                                        <xsl:value-of select="notification_data/partner_address/state_province"/>&#160;
                                                        <xsl:value-of select="notification_data/partner_address/state"/>&#160;
                                                        <xsl:value-of select="notification_data/partner_address/postal_code"/>
                                                    </xsl:if>
                                                    <br />
                                                    <xsl:if test="notification_data/partner_address/country !=''">
                                                        <xsl:value-of select="notification_data/partner_address/country"/> |
                                                        <xsl:value-of select="notification_data/partner_address/country_display"/>
                                                    </xsl:if>
                                                    <br />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </xsl:otherwise>
                            </xsl:choose>
                        </table>
                        <div style="font-size:18px; font-weight:bold;">
                            <h4>
                                <b>Request ID (Ex ID):</b>
                                <xsl:value-of select="notification_data/group_qualifier"/>
                            </h4>
                            <p></p>
                            <div style='font-size:35px;font-family:"3 of 9 Barcode"'>*
                                <xsl:value-of select="notification_data/group_qualifier"/>*
                            </div>
                            <p></p>
                            <table cellspacing="0" cellpadding="5" style="width: 100%;">
                                <xsl:if test="notification_data/request/display/title !=''">
                                    <tr>
                                        <td>
                                            <strong> @@title@@: </strong>
                                            <xsl:value-of select="notification_data/request/display/title"/>
                                        </td>
                                    </tr>
                                </xsl:if>
                                <xsl:if test="notification_data/request/display/journal_title !=''">
                                    <tr>
                                        <td>
                                            <strong> @@journal_title@@: </strong>
                                            <xsl:value-of select="notification_data/request/display/journal_title"/>
                                        </td>
                                    </tr>
                                </xsl:if>
                                <tr>
                                    <td>
                                        <strong> @@author@@: </strong>
                                        <xsl:value-of select="notification_data/request/display/author"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <strong> @@volume@@: </strong>
                                        <xsl:value-of select="notification_data/request/display/volume"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <strong> @@issue@@: </strong>
                                        <xsl:value-of select="notification_data/request/display/issue"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 10px;">
                                        <strong> @@arrival_date@@: </strong>
                                        <xsl:value-of select="notification_data/request/item_arrival_date"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <strong> @@required_return_date@@: </strong>
                                        <xsl:value-of select="notification_data/request/due_date"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 10px;">
                                        <strong> @@note_to_partner@@: </strong>
                                        <xsl:value-of select="notification_data/note_to_partner"/>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>