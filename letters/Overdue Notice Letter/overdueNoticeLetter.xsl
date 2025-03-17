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
                                                                    Please Return Your Library Items
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
														<table cellspacing="0" cellpadding="0" border="0" style="margin-bottom: 20px;">
                                                            <tr>
																<td>
																	You have items due today. Please return the listed items to a campus library. If you need more time with an item, reply to this email to determine your options.
																</td>
															</tr>
                                                            <tr>
                                                                <td>
																	<br/>You can view all of your loans and due dates in your <a href="https://account.library.wisc.edu/" target="_blank" >Library Account</a>.<br/><br/>
																</td>
															</tr>
                                                            <tr>
																<td style="padding-top: 20px;">
																	
																		<xsl:for-each select="notification_data/item_loans/item_loan">
                                                                            <table width="100%" cellspacing="0" cellpadding="5" class="darkmode-heading" 
                                                                                style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px!important; margin-bottom: 15px;">
                                                                                
                                                                                <xsl:if test="string-length(title) > 0">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Title:</b><br/>
                                                                                            <xsl:value-of select="title"/><br/>
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="string-length(barcode) > 0">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Barcode:</b><br/>
                                                                                            <xsl:value-of select="barcode"/><br/>
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="string-length(due_date) > 0">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Due Date:</b><br/>
                                                                                            <xsl:value-of select="due_date"/><br/>
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="string-length(library_name) > 0">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Library:</b><br/>
                                                                                            <xsl:value-of select="library_name"/><br/>
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                            </table>


																		</xsl:for-each>
																	
																</td>
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
