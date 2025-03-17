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
                                                                    Your Library Item has been Renewed
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
																<table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" style="margin-bottom: 20px;">
																	<!-- Begin Email Content-->
																	<tr>
																		<td style="padding-bottom: 10px;  ">
																			@@is_up_for_renewal@@
																		</td>
																	</tr>
																	<tr>
																		<td style="padding: 0; padding-top: 10px;">
																			<table class="darkmode-heading" role="presentation" width="100%" cellspacing="0" cellpadding="5" 
																				style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px; padding-left: 20px; padding-right: 20px;">
																				
																				<xsl:if test="string-length(notification_data/line_number) > 0">
																					<tr>
																						<td style="vertical-align: top; padding: 10px 20px;">
																							<b>@@orderNumber@@</b><br/>
																							<xsl:value-of  select="notification_data/line_number"/><br/>
																						</td>
																					</tr>
																				</xsl:if>

																				<xsl:if test="string-length(notification_data/title) > 0">
																					<tr>
																						<td style="vertical-align: top; padding: 10px 20px;">
																							<b>Title:</b><br/>
																							<xsl:value-of  select="notification_data/title"/><br/>
																						</td>
																					</tr>
																				</xsl:if>

																				<xsl:if test="string-length(notification_data/subscription_from_date/full_date) > 0">
																					<tr>
																						<td style="vertical-align: top; padding: 10px 20px;">
																							<b>@@subscription_from_date@@:</b><br/>
																							<xsl:value-of  select="notification_data/subscription_from_date/full_date"/><br/>
																						</td>
																					</tr>
																				</xsl:if>

																				<xsl:if test="string-length(notification_data/subscription_from_date/full_date) > 0">
																					<tr>
																						<td style="vertical-align: top; padding: 10px 20px;">
																							<b>@@subscription_to_date@@:</b><br/>
																							<xsl:value-of  select="notification_data/subscription_to_date/full_date"/><br/>
																						</td>
																					</tr>
																				</xsl:if>

																				<xsl:if test="string-length(notification_data/renewal_date/full_date) > 0">
																					<tr>
																						<td style="vertical-align: top; padding: 10px 20px;">
																							<b>@@renewal_date@@:</b><br/>
																							<xsl:value-of  select="notification_data/renewal_date/full_date"/><br/>
																						</td>
																					</tr>
																				</xsl:if>

																				<xsl:if test="string-length(notification_data/line/identifier) > 0">
																					<tr>
																						<td style="vertical-align: top; padding: 10px 20px;">
																							<b>@@identifier@@:</b><br/>
																							<xsl:value-of  select="notification_data/line/identifier"/><br/>
																						</td>
																					</tr>
																				</xsl:if>

																				<xsl:if test="string-length(notification_data/line/foreign_currency_list_price) >  0">
																					<tr>
																						<td style="vertical-align: top; padding: 10px 20px;">
																							<b>@@price@@:</b><br/>
																							<xsl:value-of  select="notification_data/line/foreign_currency_list_price/currency"/>&#160;<xsl:value-of select="notification_data/line/foreign_currency_list_price/normalized_sum"/><br/>
																						</td>
																					</tr>
																				</xsl:if>

																				<xsl:if test="string-length(due_date) > 0">
																					<tr>
																						<td style="vertical-align: top; padding: 10px 20px;">
																							<b>Due Date:</b><br/>
																							<xsl:value-of select="due_date"/><br/>
																						</td>
																					</tr>
																				</xsl:if>
																			</table>
																			<xsl:if test="notification_data/line/funds_transaction_items/funds_transaction_item !=''">

																				<xsl:for-each select="notification_data/line/funds_transaction_items/funds_transaction_item">
																				<table role='presentation' >
																					<tr>
																						<td>@@fund_code@@:<xsl:value-of select="fund/code"/></td>
																					</tr>
																					<tr>
																						<td>@@fiscal_period@@:<xsl:value-of select="fund/fiscal_period_desc"/></td>
																					</tr>
																					<tr>
																						<td>@@currency@@: <xsl:value-of select="amount/currency"/></td>
																					</tr>
																					<tr>
																						<td>@@sum@@: <xsl:value-of select="amount/normalized_sum"/></td>
																					</tr>

																				</table>
																				</xsl:for-each>
																			</xsl:if>
																		</td>
																	</tr>
																	<tr>
																		<td>@@please_decide_if_you_want@@</td>
																	</tr>
																</table>
															</td>
                                                        </tr>
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

															
					

				

		
