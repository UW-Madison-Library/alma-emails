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
                                                                    Information About Your Request
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
										
																	<xsl:choose>
																		<xsl:when test="notification_data/query_type = 'Type_2_query_name'">
																			<tr>
																				<td>Thank you for your recent journal request. To complete it, please let us know the specific volume or issue you need.</td>
																			</tr>
																			<tr>
																				<td>
																					<br/>
																					Note that we cannot provide copies of entire volumes or issues due to copyright restrictions.
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<br/>
																					If you have any questions, feel free to
																					<a href="http://www.library.wisc.edu/ask/" target="_blank">Ask a Librarian</a>.
																				</td>
																			</tr>

																		</xsl:when>
																		<xsl:when test="notification_data/query_type = 'Type_3_query_name'">
																			<tr>
																				<td>We were unable to locate the item with the citation provided. Please verify the citation you submitted or provide additional information.</td>
																			</tr>
																			<tr>
																				<td>
																					<br/>
																					If you have any questions, or need additional help please
																					<a href="http://www.library.wisc.edu/ask/" target="_blank">Ask a Librarian</a>.
																				</td>
																			</tr>
																		</xsl:when>
																		<xsl:when test="notification_data/query_type = 'Type_4_query_name'">
																			<tr>
																				<td>Unfortunately, we cannot complete your request because it includes more than one article or chapter, which exceeds the limits allowed by copyright law. </td>
																			</tr>
																			<tr>
																				<td><br/>You can request the item as a physical loan through the <a href="https://search.library.wisc.edu/search/system" target="_blank">library catalog</a>.</td>
																			</tr>
																			<tr>
																				<td>
																					<br/>
																					If you have any questions, feel free to
																					<a href="http://www.library.wisc.edu/ask/" target="_blank">Ask a Librarian</a>.
																				</td>
																			</tr>
																		</xsl:when>
																		<xsl:when test="notification_data/query_type = 'Type_5_query_name'">
																			<tr>
																				<td>British dissertations are now available for free download via <a href="https://libguides.ials.sas.ac.uk/az/ethos-electronic-theses-online-system" target="_blank">EThOS, the British Library's Electronic Theses Online Service.</a></td>
																			</tr>
																			<tr>
																				<td>
																					<br/>
																					If you have any questions, feel free to
																					<a href="http://www.library.wisc.edu/ask/" target="_blank">Ask a Librarian</a>.
																				</td>
																			</tr>
																		</xsl:when>
																		<xsl:when test="notification_data/query_type = 'Type_6_query_name'">
																			<tr>
																				<td>Your request has been canceled. The item is too new to borrow from other libraries, and we are unable to purchase it from the publisher at this time.</td>
																			</tr>
																			<tr>
																				<td><br/>Please resubmit your request in 4-6 weeks, as the item may become available by then.</td>
																			</tr>
																			<tr>
																				<td>
																					<br/>
																					If you have any questions, feel free to
																					<a href="http://www.library.wisc.edu/ask/" target="_blank">Ask a Librarian</a>.
																				</td>
																			</tr>
																		</xsl:when>
																		<xsl:when test="notification_data/query_type = 'Type_7_query_name'">
																			<tr>
																				<td>Your recent request will cost the library about $125 to obtain. If this article is important for your research, we're happy to get it for you. If it's not, we would like to cancel your request.</td>
																			</tr>
																			<tr>
																				<td><br/>Please inform us of your decision by the end of the next business day. If we don't hear from you, we may cancel your request.</td>
																			</tr>
																			<tr>
																				<td>
																					<br/>
																					If you have any questions, feel free to
																					<a href="http://www.library.wisc.edu/ask/" target="_blank">Ask a Librarian</a>.
																				</td>
																			</tr>
																		</xsl:when>
																		<xsl:when test="notification_data/query_type = 'Type_8_query_name'">
																			<tr>
																				<td>This item is not available right now. We can request it from other libraries, but it may take 10-14 days or longer to arrive.</td>
																			</tr>
																			<tr>
																				<td><br/>Let us know within 7 days if you'd like us to proceed with the request. If we don't receive a response by then, we will cancel it.</td>
																			</tr>
																		</xsl:when>
																		<xsl:otherwise>
																			<tr>
																				<td>We have some questions about your recent library request. </td>
																			</tr>
																			<tr>
																				<td>
																					<br/>
																					Please <a href="http://www.library.wisc.edu/ask/" target="_blank">contact a librarian</a> at your earliest convenience so we can continue processing your request.
																				</td>
																			</tr>
																		</xsl:otherwise>
																	</xsl:choose>
																</table>
															</td>
														</tr>
														
														<xsl:if test="notification_data/query_note !=''">
														<tr>
                                                            <td style=" padding-top: 20px; ">
                                                                <table role="presentation" width="100%" cellspacing="0" cellpadding="5" class="darkmode-heading" 
                                                                    style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px!important; margin-bottom: 15px;">
                                                                    
																	<tr>
																		<td style="vertical-align: top; padding: 15px 25px;">
																			<h2>Note from the Librarian: </h2>
																			<xsl:value-of select="notification_data/query_note" />
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														</xsl:if>
															
                                                        <tr>
                                                            <td style=" padding-top: 21px; ">
                                                                <table role="presentation" width="100%" cellspacing="0" cellpadding="5" class="darkmode-heading" 
                                                                    style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px!important; margin-bottom: 15px;">
																	<tr>
																		<td style="vertical-align: top; padding: 15px 25px;">
																			<h2 style="padding-bottom: 5px; border-bottom: 1px solid lightgrey">Request Details:</h2>
																		</td>
																	</tr>
                                                                                
																	<xsl:if test="notification_data/request/display/material_type !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Format:  </b>
																				<xsl:value-of
																					select="notification_data/request/display/material_type" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/title !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Title: </b>
																				<xsl:value-of select="notification_data/request/display/title" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/journal_title !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Journal Title: </b>
																				<xsl:value-of
																					select="notification_data/request/display/journal_title" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/author !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Author: </b>
																				<xsl:value-of select="notification_data/request/display/author" />
																				<!-- recordTitle.xsl -->
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/autho_initials !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Author Initials: </b>
																				<xsl:value-of
																					select="notification_data/request/display/autho_initials" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/publisher !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Publisher: </b>
																				<xsl:value-of select="notification_data/request/display/publisher" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if
																		test="notification_data/request/display/place_of_publication !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Place of Publication: </b>
																				<xsl:value-of
																					select="notification_data/request/display/place_of_publication" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/publication_date !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Publication Date: </b>
																				<xsl:value-of
																					select="notification_data/request/display/publication_date" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/year !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Year: </b>
																				<xsl:value-of select="notification_data/request/display/year" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/edition !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Edition: </b>
																				<xsl:value-of select="notification_data/request/display/edition" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/call_number !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Call Number: </b>
																				<xsl:value-of select="notification_data/request/display/call_number" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/volume !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Volume: </b>
																				<xsl:value-of select="notification_data/request/display/volume" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/issue !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Issue: </b>
																				<xsl:value-of select="notification_data/request/display/issue" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/additional_person_name !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Additional Person Name: </b>
																				<xsl:value-of
																					select="notification_data/request/display/additional_person_name" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/source !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Source: </b>
																				<xsl:value-of select="notification_data/request/display/source" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if
																		test="notification_data/request/display/series_title_number !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Series Title Number: </b>
																				<xsl:value-of
																					select="notification_data/request/display/series_title_number" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/isbn !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>ISBN: </b>
																				<xsl:value-of select="notification_data/request/display/isbn" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/issn !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>ISSN: </b>
																				<xsl:value-of select="notification_data/request/display/issn" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/doi !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>DOI: </b>
																				<xsl:value-of select="notification_data/request/display/doi" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/pmid !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>PMID: </b>
																				<xsl:value-of select="notification_data/request/display/pmid" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/note !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Note: </b>
																				<xsl:value-of select="notification_data/request/display/note" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/chapter !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Chapter: </b>
																				<xsl:value-of select="notification_data/request/display/chapter" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/volume_bk !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Volume: </b>
																				<xsl:value-of select="notification_data/request/display/volume_bk" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/part !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Part: </b>
																				<xsl:value-of select="notification_data/request/display/part" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/pages !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Pages: </b>
																				<xsl:value-of select="notification_data/request/display/pages" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/start_page !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Start Page: </b>
																				<xsl:value-of select="notification_data/request/display/start_page" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/display/end_page !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>End Page: </b>
																				<xsl:value-of select="notification_data/request/display/end_page" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/note !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Request Note: </b>
																				<xsl:value-of select="notification_data/request/note" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/general_data/current_date !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Date: </b>
																				<xsl:value-of select="notification_data/general_data/current_date" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/external_request_id !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Request ID: </b>
																				<xsl:value-of select="notification_data/request/external_request_id" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/format_display !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Request Format: </b>
																				<xsl:value-of select="notification_data/request/format_display" />
																			</td>
																		</tr>
																	</xsl:if>
																	<xsl:if test="notification_data/request/max_fee !=''">
																		<tr>
																			<td style="vertical-align: top; padding: 15px 25px;">
																				<b>Fee: </b>
																				<xsl:value-of select="notification_data/request/max_fee" />
																			</td>

																		</tr>
																	</xsl:if>
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
						
