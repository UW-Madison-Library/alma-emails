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
                                                    <table class="mainContent" border="0" cellpadding="0" cellspacing="0" role="presentation" style="width: 100%; max-width: 500px!important;">
                                                        <tr>
                                                            <td style="margin: 0; padding: 10px 0;">
                                                                <h1 style="font-weight: normal; border-bottom: 1px solid lightgrey; padding-bottom: 10px; text-align: center; font-size: 20px!important;border-top: 1px solid lightgrey; padding-top: 13px;">
                                                                    Library Return Receipt
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
																	<tr>
																		<td>
                                                                            We have received the following items you returned to the library. 
                                                                        </td>
                                                                    </tr>

                                                                    <xsl:for-each select="notification_data/loans_by_library/library_loans_for_display">
                                                                        <tr>
                                                                            <td>
                                                                                <table role="presentation" width="100%" cellspacing="0" cellpadding="5" style="border-collapse: collapse;">
                                                                                    <xsl:for-each select="item_loans/overdue_and_lost_loan_notification_display/item_loan">
                                                                                        <tr>
                                                                                            <td style="padding: 0; padding-top: 10px;">
                                                                                                <table class="darkmode-heading" role="presentation" width="100%" cellspacing="0" cellpadding="5" 
                                                                                                    style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px; padding-left: 20px; padding-right: 20px;">
                                                                                        
                                                                                
                                                                                                    <xsl:if test="string-length(title) > 0">
                                                                                                        <tr>
                                                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                                                <b>Title:</b><br/>
                                                                                                                <xsl:value-of select="title"/><br/>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </xsl:if>

                                                                                                    <xsl:if test="string-length(description) > 0">
                                                                                                        <tr>
                                                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                                                <b>Description:</b><br/>
                                                                                                                <xsl:value-of select="description"/><br/>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </xsl:if>

                                                                                                    <xsl:if test="string-length(author) > 0">
                                                                                                        <tr>
                                                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                                                <b>Author:</b><br/>
                                                                                                                <xsl:value-of select="author"/><br/>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </xsl:if>

                                                                                                    <xsl:if test="string-length(new_due_date_str) > 0">
                                                                                                        <tr>
                                                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                                                <b>Due Date:</b><br/>
                                                                                                                <xsl:value-of select="new_due_date_str"/><br/>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </xsl:if>

                                                                                                    <xsl:if test="string-length(return_date_str) > 0">
                                                                                                        <tr>
                                                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                                                <b>Return Date:</b><br/>
                                                                                                                <xsl:value-of select="return_date_str"/><br/>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </xsl:if>

                                                                                                    <xsl:if test="string-length(normalized_fine) > 0">
                                                                                                        <tr>
                                                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                                                <b>Fine:</b><br/>
                                                                                                                <xsl:value-of select="normalized_fine"/><br/>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </xsl:if>

                                                                                                    <xsl:if test="string-length(library_name) > 0">
                                                                                                        <tr>
                                                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                                                <b>Library:</b><br/>
                                                                                                                <xsl:value-of select="library_name"/><br/>
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
                                                                    </xsl:for-each>
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
