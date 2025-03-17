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
                            <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" class="darkmode2" style="background-color: #F5F5F5;">
                                <xsl:call-template name="libraryLogo"/> 

                                <!-- Begin Email Content-->
                                <tr>
                                    <td align="center" valign="top" class="small-padding" style="padding-top: 40px;">
                                        <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" class="mobileContent darkmode dark-border" style="width: 100%; max-width: 600px!important; background-color: #ffffff; border: 1px solid #EBEBEB;">
                                            <tr>
                                                <td align="center" valign="top" style="padding: 20px;">
                                                    <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" class="mainContent" style="width: 100%; max-width: 500px!important;">
                                                        <tr>
                                                            <td style="margin: 0; padding: 10px 0;">
                                                                <h1 style="font-weight: normal; border-bottom: 1px solid lightgrey; padding-bottom: 10px; text-align: center; font-size: 20px!important;border-top: 1px solid lightgrey; padding-top: 13px;">
                                                                    Your Library Loan Details
                                                                </h1>
                                                            </td>
                                                        </tr>
																											
                                                        <tr>
                                                            <td align="left" valign="top" style="margin: 0; padding: 25px 0px 10px 0px;">
                                                                <xsl:call-template name="librarySalutation" /> 
                                                            </td>
                                                        </tr>
												<tr>
													<td>
														<table role="presentation" cellspacing="0" cellpadding="0" border="0" style="margin-bottom: 20px;">
															<xsl:choose>
																<xsl:when test="contains(notification_data/organization_unit/name, 'Remote Delivery (ILL)')">
																<tr>
																	<td>The following item has been loaned to you for Remote Delivery. Your request will be shipped within the next business day, and you should expect to receive them via UPS within 2-7 business days. A US Postal Service return mailer will be included in the shipment.
																		Please see the <a href="https://www.library.wisc.edu/borrow-request/remote-delivery/" style="color: #0073CE;">Remote Delivery webpage</a> for more information.
																	</td>
																</tr>
																</xsl:when>	

																<xsl:otherwise>	
																<tr>
																	<td>The following items are now on loan to you from <b><xsl:value-of select="notification_data/organization_unit/name" /></b>:
																	</td>
																</tr>
																</xsl:otherwise>
															</xsl:choose>
														</table>
													</td>
												</tr>
												<xsl:for-each select="notification_data/loans_by_library/library_loans_for_display">
												<tr>
													<td>
														
														<xsl:for-each select="item_loans/overdue_and_lost_loan_notification_display/item_loan">
														<table role="presentation" width="100%" cellspacing="0" cellpadding="5" class="darkmode-heading" 
															style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px!important; margin-bottom: 15px;">
															
															<tr>
																<td style="vertical-align: top; padding: 15px 25px;">
																	<b>Title:</b><br/>
																	<xsl:value-of select="title"/><br/>
																</td>
															</tr>

															<tr>
																<td style="vertical-align: top; padding: 15px 25px;">
																	<b>Author:</b><br/>
																	<xsl:value-of select="author"/><br/>
																</td>
															</tr>

															<tr>
																<td style="vertical-align: top; padding: 15px 25px;">
																	<b>Loan Date:</b><br/>
																	<xsl:value-of select="loan_date"/><br/>
																</td>
															</tr>

															<tr>
																<td style="vertical-align: top; padding: 15px 25px;">
																	<b>Due Date:</b><br/>
																	<xsl:value-of select="new_due_date_str"/><br/>
																</td>
															</tr>

															<!-- Conditionally display the description row only if it exists -->
															<xsl:if test="string-length(description) > 0">
																<tr>
																	<td style="vertical-align: top; padding: 15px 25px;">
																		<b>Description:</b><br/>
																		<xsl:value-of select="description"/><br/>
																	</td>
																</tr>
															</xsl:if>

														</table>

														</xsl:for-each>
														
													</td>
												</tr>
												</xsl:for-each>
												<tr>
													<td>
														<xsl:call-template name="circulationSignature"/> 
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
