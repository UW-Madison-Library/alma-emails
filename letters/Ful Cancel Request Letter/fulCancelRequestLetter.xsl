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
                                                                    Your Library Request Has Been Canceled
                                                                </h1>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="top" style="padding: 10px 0px;">
                                                                <br/><xsl:call-template name="librarySalutation"/> 
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table role="presentation" cellspacing="0" cellpadding="0" border="0">
																	<tr>
																		<td>We regret to inform you that your request, placed on <xsl:value-of select="notification_data/general_data/current_date"/>, has been cancelled.<br/><br/></td>
																	</tr>        
																	<xsl:choose>
                                    <xsl:when test="contains(notification_data/request/status_note_display,'A local request was created instead')">
                                      <tr>
                                        <td>
                                          <xsl:message terminate="yes">Local Request</xsl:message>
                                        </td>
                                      </tr>
                                    </xsl:when>	
                                    <xsl:when test="contains(notification_data/request/status_note_display,'Converted to resource sharing request')">
                                      <tr>
                                        <td>
                                          <xsl:message terminate="yes">RS request</xsl:message>
                                        </td>
                                      </tr>
                                    </xsl:when>
                                    <xsl:when test="starts-with(notification_data/request/user_group,'COMMUNITY')">
                                      <tr>
                                        <td>The item is not available through the UW-Madison Libraries.<br/><br/></td>
                                      </tr>
                                      <tr><td><table width="100%" cellspacing="0" cellpadding="5" class="darkmode-heading" 
                                    style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px!important; margin-bottom: 15px;" role="presentation">
                                    <tr>
																				<td style="vertical-align: top; padding: 15px 25px;">
																					<b>Cancellation Reason: </b><br/>
																					<xsl:value-of select="notification_data/request/status_note_display" /><br/>
																				</td>
																			</tr>
																				<xsl:if test="notification_data/request/cancel_reason != ''">
																				<tr>
																					<td style="vertical-align: top; padding: 15px 25px;">
																						<b>Additional information: </b><br/>
																						<xsl:value-of select="notification_data/request/cancel_reason" /><br/>
																					</td>
																				</tr>
																			</xsl:if> 
                                      <xsl:if test="string-length(notification_data/phys_item_display/title) > 0">
                                          <tr>
                                              <td style="vertical-align: top; padding: 15px 25px;">
                                                  <b>Title:</b><br/>
                                                  <xsl:value-of select="notification_data/phys_item_display/title"/><br/>
                                              </td>
                                          </tr>
                                      </xsl:if>
                                      <xsl:if test="notification_data/phys_item_display/author !=''">
                                          <tr>
                                              <td style="vertical-align: top; padding: 15px 25px;">
                                                  <b>Author:</b><br/>
                                                  <xsl:value-of select="notification_data/phys_item_display/author"/><br/>
                                              </td>
                                          </tr>
                                      </xsl:if>
                                      <xsl:if test="notification_data/phys_item_display/issue_level_description !=''">
                                          <tr>
                                              <td style="vertical-align: top; padding: 15px 25px;">
                                                  <b>Description:</b><br/>
                                                  <xsl:value-of select="notification_data/phys_item_display/issue_level_description"/><br/>
                                              </td>
                                          </tr>
                                      </xsl:if>		
																			<xsl:if test="notification_data/request/note != ''">
																				<tr>
																					<td style="vertical-align: top; padding: 15px 25px;">
																						<b>Request: </b><br/>
																						<xsl:value-of select="notification_data/request/note" /><br/>
																					</td>
																				</tr>
																			</xsl:if>
																			<xsl:if test="notification_data/request/cancel_reason != ''">
																				<tr>
																					<td style="vertical-align: top; padding: 15px 25px;">
																						<b>Additional information: </b><br/>
																						<xsl:value-of select="notification_data/request/cancel_reason" /><br/>
																					</td>
																				</tr>
																			</xsl:if>     
                                    </table></td></tr>
                                    </xsl:when>
																	<xsl:otherwise>
                                   <tr><td><table width="100%" cellspacing="0" cellpadding="5" class="darkmode-heading" 
                                    style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px!important; margin-bottom: 15px;" role="presentation">
                                    <tr>
																				<td style="vertical-align: top; padding: 15px 25px;">
																					<b>Cancellation Reason: </b><br/>
																					<xsl:value-of select="notification_data/request/status_note_display" /><br/>
																				</td>
																			</tr>
																				<xsl:if test="notification_data/request/cancel_reason != ''">
																				<tr>
																					<td style="vertical-align: top; padding: 15px 25px;">
																						<b>Additional information: </b><br/>
																						<xsl:value-of select="notification_data/request/cancel_reason" /><br/>
																					</td>
																				</tr>
																			</xsl:if> 
                                      <xsl:if test="string-length(notification_data/phys_item_display/title) > 0">
                                          <tr>
                                              <td style="vertical-align: top; padding: 15px 25px;">
                                                  <b>Title:</b><br/>
                                                  <xsl:value-of select="notification_data/phys_item_display/title"/><br/>
                                              </td>
                                          </tr>
                                      </xsl:if>
                                      <xsl:if test="notification_data/phys_item_display/author !=''">
                                          <tr>
                                              <td style="vertical-align: top; padding: 15px 25px;">
                                                  <b>Author:</b><br/>
                                                  <xsl:value-of select="notification_data/phys_item_display/author"/><br/>
                                              </td>
                                          </tr>
                                      </xsl:if>
                                      <xsl:if test="notification_data/phys_item_display/issue_level_description !=''">
                                          <tr>
                                              <td style="vertical-align: top; padding: 15px 25px;">
                                                  <b>Description:</b><br/>
                                                  <xsl:value-of select="notification_data/phys_item_display/issue_level_description"/><br/>
                                              </td>
                                          </tr>
                                      </xsl:if>		
																			<xsl:if test="notification_data/request/note != ''">
																				<tr>
																					<td style="vertical-align: top; padding: 15px 25px;">
																						<b>Request: </b><br/>
																						<xsl:value-of select="notification_data/request/note" /><br/>
																					</td>
																				</tr>
																			</xsl:if>
																    
                                    </table></td></tr>
																			
																			<!--Line for all other requests so they get the ILL link-->
																			<tr>
																				<td>
																					<br/>We do our best to fulfill requests by contacting partner libraries, including those available through Interlibrary Loan. 
																					However, if your request was canceled because the item cannot be supplied, it means that no library is able to lend this item.<br/><br/>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					If you have any questions about why your request was cancelled, please feel free to reply to this email. 
																					For any other inquiries, you can <a href="https://www.library.wisc.edu/help/" style="color: #0073CE;" target="_blank">Ask a Librarian</a>.<br/><br/>
																				</td>
																			</tr>		
																		</xsl:otherwise>
																	</xsl:choose>
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
