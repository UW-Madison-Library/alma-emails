<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:include href="style.xsl"/>

    <xsl:template match="/">
        <html lang="en" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/1999/xhtml">

            <!-- BEGIN global head -->
            <xsl:call-template name="libraryHeader"/>
            <!-- END global head -->

            <body id="body" class="darkmode2 body" style="background-color:#F5F5F5;">
                <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: #F5F5F5;">
                    <tr>
                        <td>
                            <!-- Start of email -->
                            <table role="presentation" class="darkmode2" width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: #F5F5F5;">
                                <xsl:call-template name="libraryLogo"/>

                                <!-- Begin Email Content-->
                                <tr>
                                    <td align="center" valign="top" class="small-padding" style="padding-top: 40px;">
                                        <table class="mobileContent darkmode dark-border" border="0" cellpadding="0" cellspacing="0" role="presentation" style="width: 100%; max-width: 600px!important; background-color: #ffffff; border: 1px solid #EBEBEB;">
                                            <tr>
                                                <td align="center" valign="top" style="padding: 20px;">
                                                    <table class="mainContent" border="0" cellpadding="0" cellspacing="0" role="presentation" style="width: 100%; max-width: 500px !important;">
                                                        <tr>
                                                            <td style="margin: 0; padding: 10px 0;">
                                                                <h1 style="font-weight: normal; border-bottom: 1px solid lightgrey; padding-bottom: 10px; text-align: center; font-size: 20px!important;border-top: 1px solid lightgrey; padding-top: 13px;">
                                                                    Purchase Order Details
                                                                </h1>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="top" style="padding: 30px 0px 10px 0px;">
                                                                <xsl:call-template name="librarySalutation"/> 
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table role="presentation" cellspacing="0" cellpadding="0" border="0" style="margin-bottom: 20px;">
																	<xsl:choose>
																		<xsl:when test="notification_data/letter_texts">
																			We would like to place an order for the following items:
																		</xsl:when>
																		<xsl:otherwise>
																			Please find the purchase order details below for your processing.
																		</xsl:otherwise>
																	</xsl:choose>
			                                                    </table>
															</td>
														</tr>
														<tr>
															<td>
																<table role="presentation" width="100%" cellspacing="0" cellpadding="5" style="border-collapse: collapse;">
																	<xsl:for-each select="notification_data">
																		<tr>
                                                                        	<td style="padding: 0; padding-top: 10px;">
																			<table class="darkmode-heading" role="presentation" width="100%" cellspacing="0" cellpadding="5" 
																											style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px; padding-left: 20px; padding-right: 20px;">
																											
																				<tr>
																					<td style="vertical-align: top; padding: 25px 30px;">
																						<b>Order Date:</b><br/>
																						<xsl:value-of select="/notification_data/po/create_date"/><br/>
																					</td>
																				</tr>
																				<tr>
																					<td style="vertical-align: top; padding: 20px 30px;">
																						<b>Vendor Account:</b><br/>
																						<xsl:value-of select="/notification_data/po/vendor_account/description"/><br/>
																					</td>
																				</tr>
																				<tr>
																					<td style="vertical-align: top; padding: 20px 30px;">
																						<b>Shipping Method:</b><br/>
																						<xsl:value-of select="/notification_data/po/shipping_method"/><br/>
																					</td>
																				</tr>
																				<tr>
																					<td style="vertical-align: top; padding: 20px 30px 40px 30px;">
																						<b>Billing Address:</b><br/>
																						<xsl:if test="normalize-space(/notification_data/po/bill_to_address/line1)">
                                                                                          <xsl:value-of select="/notification_data/po/bill_to_address/line1"/><br />
                                                                                        </xsl:if>
                                                                                        <xsl:if test="normalize-space(/notification_data/po/bill_to_address/line2)">
                                                                                          <xsl:value-of select="/notification_data/po/bill_to_address/line2"/><br />
                                                                                        </xsl:if>
                                                                                        <xsl:if test="normalize-space(/notification_data/po/bill_to_address/line3)">
                                                                                          <xsl:value-of select="/notification_data/po/bill_to_address/line3"/><br />
                                                                                        </xsl:if>
																						<xsl:value-of select="/notification_data/po/bill_to_address/city"/>,&#160;<xsl:value-of select="/notification_data/po/bill_to_address/state_province"/>&#160;<xsl:value-of select="/notification_data/po/bill_to_address/postal_code"/><br/>
																					</td>
																				</tr>
																			</table>
																			</td>
																		</tr>
																	</xsl:for-each>
																</table>
															</td>
														</tr>
														<tr>
															<td>
																<table role="presentation" width="100%" cellspacing="0" cellpadding="5" style="border-collapse: collapse;">
																	<xsl:for-each select="notification_data/po/po_line_list/po_line">
																		<tr>
                                                                        	<td style="padding: 0; padding-top: 10px;">
																			<table class="darkmode-heading" role="presentation" width="100%" cellspacing="0" cellpadding="5" 
																											style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px; padding-left: 20px; padding-right: 20px;">
																											
																				<tr>
																					<td style="vertical-align: top; padding: 15px 30px;">
																						<b>PO Line Number:</b><br/>
																						<xsl:value-of select="line_reference"/><br/>
																					</td>
																				</tr>
																				<tr>
																					<td style="vertical-align: top; padding: 15px 30px;">
																						<b>Date:</b><br/>
																						<xsl:value-of select="create_date"/><br/>
																					</td>
																				</tr>
																				<tr>
																					<td style="vertical-align: top; padding: 15px 30px;">
																						<b>ISSN/ISBN:</b><br/>
																						<xsl:value-of select="identifier_type"/>&#160;<xsl:value-of select="identifier"/><br/>
																					</td>
																				</tr>
																				<tr>
																					<td style="vertical-align: top; padding: 15px 30px;">
																						<b>Title:</b><br/>
																						<xsl:value-of select="meta_data_values/title"/><br/>
																					</td>
																				</tr>
																				<tr>
																					<td style="vertical-align: top; padding: 15px 30px;">
																						<b>Quantity:</b><br/>
																						<xsl:value-of select="total_quantity"/><br/>
																					</td>
																				</tr>
																				<tr>
																					<td style="vertical-align: top; padding: 15px 30px;">
																						<b>Price:</b><br/>
																						<xsl:value-of select="total_price_compose/currency"/>&#160;<xsl:value-of select="total_price_compose/sum"/><br/>
																					</td>
																				</tr>
																				<tr>
																					<td style="vertical-align: top; padding: 15px 30px 40px 30px;">
																						<b>Note:</b><br/>
																						<xsl:value-of select="vendor_note"/><br/>
																					</td>
																				</tr>
																			</table>
																			</td>
																		</tr>
																	</xsl:for-each>
																</table>
															</td>
														</tr>
														<tr>
                                                            <td>
                                                                <table cellspacing="0" cellpadding="0" border="0" role="presentation">
																	<tr>
																		<td style="padding-bottom: 40px; width: 500px; padding-top: 30px;">
																		<p style="padding: 0px 0;">Sincerely,</p>

																		<p style="margin: 5px 0px 10px 0; padding-bottom: 10px; border-bottom: 2px solid #e5e5e5;">
																			<xsl:choose>
																			<xsl:when test="contains(notification_data/po/bill_to_address/line1,'Teacher Education Building')">
																				MERIT Library - Acquisitions Department
																			</xsl:when>
																			<xsl:when test="contains(notification_data/po/bill_to_address/line1,'Wisconsin Historical Society')">
																				Wisconsin Historical Society - Acquisitions Department
																			</xsl:when>
																			<xsl:otherwise>
																				University of Wisconsin - Madison - Acquisitions Department
																			</xsl:otherwise>
																			</xsl:choose>
																		</p>

																		<p style="padding-bottom: 5px;">For assistance, please:</p>

																		<table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
																			<tr>
																			<td style="padding-bottom: 10px;">
																				<xsl:choose>
																				<xsl:when test="contains(notification_data/po/bill_to_address/line1,'Teacher Education Building')">
																					Email us at <a href="mailto:james.jonas@wisc.edu" target="_blank" style="color: #0073CE; text-decoration: underline;">james.jonas@wisc.edu</a>
																				</xsl:when>
																				<xsl:when test="contains(notification_data/po/bill_to_address/line1,'Wisconsin Historical Society')">
																					Email us at <a href="mailto:Acquisitions@wisconsinhistory.org" target="_blank" style="color: #0073CE; text-decoration: underline;">Acquisitions@wisconsinhistory.org</a>
																				</xsl:when>
																				<xsl:otherwise>
																					Email us at <a href="mailto:ctsorders@library.wisc.edu" target="_blank" style="color: #0073CE; text-decoration: underline;">ctsorders@library.wisc.edu</a>
																				</xsl:otherwise>
																				</xsl:choose>
																			</td>
																			</tr>
																		</table>
																		</td>
																	</tr>
																</table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <!--BEGIN global footer-->
                                <tr>
                                    <td align="center" style="padding: 0px 15px;">
                                        <xsl:call-template name="libraryFooter"/> <!-- footer.xsl -->
                                    </td>
                                </tr>
                                <!--END global footer-->
                            </table>
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>