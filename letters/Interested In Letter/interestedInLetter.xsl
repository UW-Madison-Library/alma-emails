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
                                                                    We're working on your ebook request
                                                                </h1>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="top" style="padding: 30px 0px 10px 0px;">
                                                                <xsl:call-template name="librarySalutation"/> 
                                                            </td>
                                                        </tr>
                                                        <!-- Place this under the <h1> "Your Library Account Activity" -->
														<tr>
															<td style="padding-bottom: 13px;">
																Thanks for your request! We're processing it now. <br/>
															</td>
														</tr>
                                                        <tr>
                                                            <td>
                                                                <table role="presentation" cellspacing="0" cellpadding="0" border="0" style="margin-bottom: 10px;">
																	<tr>
                                                                        <td>
                                                                            <table role="presentation" width="100%" cellspacing="0" cellpadding="5" style="border-collapse: collapse;">
                                                                                <tr>
																					<td style="padding: 0px ; padding-top: 10px; padding-bottom: 15px;">
																						<table class="darkmode-heading" role="presentation" width="100%" cellspacing="0" cellpadding="5" 
																									style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px; padding-left: 20px; padding-right: 20px;">
																							<xsl:if test="string-length(notification_data/title) > 0">
																								<tr>
																									<td style="vertical-align: top; padding: 10px 20px;">
																										<b>Here's the title you requested:</b><br/>
																										<xsl:value-of  select="notification_data/title"/><br/>
																									</td>
																								</tr>
																							</xsl:if>
																						</table>
																					</td>
																				</tr>
																			</table>
																		</td>
																	</tr>		
																</table>
															</td>
														</tr>
														<tr>
															<td style="padding: 10px 0px;">
																Your ebook (electronic book) should be available in the library catalog within <b>6 hours</b>. <br/>
															</td>
														</tr>
														<tr>
															<td style="padding: 10px 0px;">
																To check availability and access the ebook:<br/>
																<ol>
																	<li>Go to the <a href="https://www.library.wisc.edu/">library catalog</a></li>
																	<li>Search for the title you requested</li>
																	<li>If the ebook has been added, it will appear in the search results with a <b>View Online</b> button you can click to access it</li>
																</ol>
															</td>
														</tr>
														<tr>
															<td style="padding: 10px 0px;">
																If you don't see the ebook right away, don't worry—it may take some time for it to appear. Please check back later.
															</td>
														</tr>
														<tr>
															<td style="padding: 10px 0px;">
																If you have any questions about your request, <a href="mailto:circulation@library.wisc.edu">contact our circulation team. </a>
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