<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:include href="style.xsl"/>

    <xsl:template match="/">
        <html lang="en" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/1999/xhtml">
            <xsl:call-template name="libraryHeader"/>

            <body id="body" class="darkmode2 body" style="background-color:#F5F5F5;">
                <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: #F5F5F5;">
                    <tr>
                        <td>
                            <table role="presentation" class="darkmode2" width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: #F5F5F5;">
                                <xsl:call-template name="libraryLogo"/> 
                                <tr>
                                    <td align="center" valign="top" class="small-padding" style="padding-top: 40px;">
                                        <table class="mobileContent darkmode dark-border" border="0" cellpadding="0" cellspacing="0" role="presentation" style="width: 100%; max-width: 600px!important; background-color: #ffffff; border: 1px solid #EBEBEB;">
                                            <tr>
                                                <td align="center" valign="top" style="padding: 20px;">
                                                    <table class="mainContent" border="0" cellpadding="0" cellspacing="0" role="presentation" style="width: 100%; max-width: 500px!important;">
                                                        <tr>
                                                            <td style="margin: 0; padding: 10px 0;">
                                                                <h1 style="font-weight: normal; border-bottom: 1px solid lightgrey; padding-bottom: 10px; text-align: center; font-size: 20px!important;border-top: 1px solid lightgrey; padding-top: 13px;">
                                                                    Changes are coming to your library loan history
                                                                </h1>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="top" style="padding: 10px 0px;">
                                                                <xsl:call-template name="librarySalutation"/> 
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table role="presentation" cellspacing="0" cellpadding="0" border="0">
                                                                    <xsl:for-each select="notification_data/lending_request_fee_list/lending_request_fee">
                                                                    <tr>
                                                                        <td style="padding-top: 20px; padding-bottom: 20px;">
                                                                            <table class="darkmode-heading" role="presentation" width="100%" cellspacing="0" cellpadding="5" 
                                                                                style="border-collapse: collapse; margin-bottom: 15px; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px; padding-left: 20px; padding-right: 20px;">
                                                                                
                                                                                <xsl:if  test="notification_data/invoice_id != ''" >
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 10px 20px;">
                                                                                            <b>Invoice Number:</b><br/>
                                                                                            <xsl:value-of select="/notification_data/invoice_id"/><br/>
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>
                                                                                <xsl:if  test="external_identifier != '0' and external_identifier != '1'" >
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 10px 20px;">
                                                                                            <b>External ID:</b><br/>
                                                                                            <xsl:value-of select="external_identifier"/><br/>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 10px 20px;">
                                                                                            <b>Title:</b><br/>
                                                                                            <xsl:value-of select="title"/><br/>
                                                                                        </td>
                                                                                    </tr>
                                                                                        <tr>
                                                                                        <td style="vertical-align: top; padding: 10px 20px;">
                                                                                            <b>Fee:</b><br/>
                                                                                            <xsl:value-of select="charge_amount"/>&#160;<xsl:value-of select="currency"/><br/>
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>
                                                                            </table>
																		</td>
                                                                    </tr>
                                                                    </xsl:for-each>
                                                                </table>
															</td>
														</tr>
														<tr>
															<td>
																<xsl:call-template name="ILLSignature"/> 
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
