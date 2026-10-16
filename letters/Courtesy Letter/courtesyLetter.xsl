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
                                                                    Library Items Are Due Soon
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
																			Just a friendly reminder that the items below are due soon. You can return them to any <a href="https://www.library.wisc.edu/borrow-request/renew-checked-out-materials/" style="color: #0073CE;" target="_blank">campus library</a>.<br /><br />
																			
																			<strong>Need more time?</strong>
																			<ul>
																			    <li>You can renew most items in your <a href="https://account.library.wisc.edu/" style="color: #0073CE;" target="_blank">Library Account</a></li>
																			    <li>If an item won't renew, just reply to this email with how long you still need and we'll help you figure out your options.</li>
																			</ul>
																		</td>
																	</tr>
															
																</table>

                											</td>
														</tr>
														<tr>
															<td>
																<table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0">
																	<xsl:for-each select="notification_data/item_loans/item_loan">
																		<!-- Add space above each item except the first one -->
																		<tr>
																			<td style="padding-top: 20px; padding-bottom: 20px;">
																				<table class="darkmode-heading" role="presentation" width="100%" cellspacing="0" cellpadding="5" 
																					style="border-collapse: collapse; margin-bottom: 15px; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px; padding-left: 20px; padding-right: 20px;">
																					
																					<tr>
																						<td style="vertical-align: top; padding: 10px 20px;">
																							<b>Title:</b><br/>
																							<xsl:value-of select="title"/><br/>
																						</td>
																					</tr>
																					
																					<tr>
																						<td style="vertical-align: top; padding: 10px 20px;">
																							<b>Author:</b><br/>
																							<xsl:value-of select="author"/><br/>
																						</td>
																					</tr>
																					
																					<tr>
																						<td style="vertical-align: top; padding: 10px 20px;">
																							<b>Due Date:</b><br/>
																							<xsl:value-of select="due_date"/><br/>
																						</td>
																					</tr>

																					<!-- Conditionally display the description row only if it exists -->
																					<xsl:if test="string-length(description) > 0">
																						<tr>
																							<td style="vertical-align: top; padding: 10px 20px;">
																								<b>Description:</b><br/>
																								<xsl:value-of select="description"/><br/>
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
														<tr><td><br></br></td></tr>
														<tr>
															<td>
																Please keep in mind that overdue items can lead to fines, account blocks, or enrollment holds. <a href="https://www.library.wisc.edu/borrow-request/fines-and-holds/" style="color: #0073CE;" target="_blank">Learn more about library fines and holds</a>.<br/><br/>
															</td>
														</tr>
														<tr>
															<td>
																You can view all of your loans and due dates in your <a href="https://account.library.wisc.edu/" style="color: #0073CE;" target="_blank">Library Account</a>. <br/>
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
