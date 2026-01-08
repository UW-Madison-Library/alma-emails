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
                                                                    The Items You Requested Are Now Available
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
															<xsl:choose>
																<!-- Remote Delivery -->
																<xsl:when test="contains(notification_data/request/assigned_unit_name, 'Remote Delivery (ILL)') or contains(notification_data/request/note, 'REMOTE DELIVERY REQUESTED')">
																	<tr>
																		<td style="padding-bottom: 20px;  ">
																			We have received your request. You will receive further details once your item has shipped. Delivery typically takes 5-10 days.
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<xsl:call-template name="libraryRecordTitle" />
																		</td>
																	</tr>

																	<xsl:if test="notification_data/request/system_notes != ''">
																		<tr>
																			<td style="height: 20px;"></td> <!-- This row adds a vertical gap -->
																		</tr>
																		<tr>
																			<td>
																				<h2 style=" margin: 0; padding: 0;">Additional Information About Your Loan: </h2>
																				<xsl:value-of select="notification_data/request/system_notes" /><br/>
																			</td>
																		</tr>
																	</xsl:if>
																		<xsl:if test="notification_data/phys_item_display/fulfillment_note != ''">
																		<tr>
																			<td style="height: 20px;"></td> <!-- This row adds a vertical gap -->
																		</tr>
																		<tr>
																			<td>
																				<h2 style=" margin: 0; padding: 0;">Additional Information About Your Loan: </h2>
																				<xsl:value-of select="notification_data/phys_item_display/fulfillment_note" /><br/>
																			</td>
																		</tr>
																	</xsl:if>
																</xsl:when>

                                                                <!-- Special or inhouse only-->
																<xsl:when test="contains(notification_data/request/assigned_unit_name, 'Music Library (Mills)')">
																	<tr>
																		<td style="padding-bottom: 10px;">
																			You can now view the item you requested at <b>Mills Music Library</b>. Please keep these guidelines in mind while using it:
																		</td>

																	</tr>
																	<tr>
																		<td style="padding-bottom: 10px;">
																			<h2 style="margin-bottom: 0; font-size: 16px;">You can:</h2>
																			<ul style="margin-top: 0;">
																				<li>Use this item at the library under staff supervision</li>
																				<li>Take photos or use an overhead scanner</li>
																			</ul>
																			<h2 style="margin-bottom: 0; font-size: 16px;">You can't:</h2>
																			<ul style="margin-top: 0;">
																				<li>Take the item out of the library</li>
																				<li>Use a flatbed photocopier</li>
																			</ul>
																		</td>
																	</tr>
																	<tr>
																		<td style="padding-bottom: 30px;">
																			For location details, hours, or to ask a question, visit the <a href="https://www.library.wisc.edu/music">Mills Music Library website</a>.
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<xsl:call-template name="libraryRecordTitle" />
																		</td>
																	</tr>

																	<xsl:if test="notification_data/request/system_notes != ''">
																		<tr>
																			<td style="height: 20px;"></td> <!-- This row adds a vertical gap -->
																		</tr>
																		<tr>
																			<td>
																				<h2 style=" margin: 0; padding: 0;">Additional Information About Your Loan: </h2>
																				<xsl:value-of select="notification_data/request/system_notes" /><br/>
																			</td>
																		</tr>
																	</xsl:if>
																	
																</xsl:when>

																<!-- Digital Delivery -->
																<xsl:when test="contains(notification_data/request/assigned_unit_name, 'Digital Delivery Library (McBurney-ILL)')">
																	<tr>
																		<td style="padding-bottom: 20px;  ">
																			Your items have been received. Please allow 5-7 days for digitization. We will email you once the file is uploaded to your account.<br/>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<xsl:call-template name="libraryRecordTitle" />
																		</td>
																	</tr>

																	<xsl:if test="notification_data/request/system_notes != ''">
																		<tr>
																			<td style="height: 20px;"></td> <!-- This row adds a vertical gap -->
																		</tr>
																		<tr>
																			<td>
																				<h2 style=" margin: 0; padding: 0;">Additional Information About Your Loan: </h2>
																				<xsl:value-of select="notification_data/request/system_notes" /><br/>
																			</td>
																		</tr>
																	</xsl:if>
																		
																</xsl:when>

																<!-- Memorial Library -->
																<xsl:when test="contains(notification_data/request/assigned_unit_name, 'Memorial Library')">
																	<tr>
																		<td >The item you requested is now available. Please choose your pickup option:<br/></td>
																	</tr>
																	<tr>
																		<td>
																			<ol>
																				<li style="padding-bottom: 10px; font-size: 16px;">
																					<a href="https://www.library.wisc.edu/memorial/about-memorial/library-hours/" target="_blank" style="color: #0073CE;">Visit Memorial Library</a> during open hours to pick up your items.
																				</li>
																				<li style="font-size: 16px;">
																					<a href="https://pickup.library.wisc.edu/" target="_blank" style="color: #0073CE;">Schedule a Pickup Appointment</a>. We will check out your held items and have them ready for you at the scheduled time. More details are available on our <a href="https://go.wisc.edu/PickupAppointment" target="_blank" style="color: #0073CE;">Pickup by Appointment FAQ</a> page.
																				</li>
																			</ol>
																			<br/>
																		</td>
																	</tr>

																	<xsl:if test="notification_data/request/work_flow_entity/expiration_date">
																		<tr>
																			<td style="padding-bottom: 25px;">
																				The item will be held for you until <xsl:value-of select="notification_data/request/work_flow_entity/expiration_date" />.
																			</td>
																		</tr>
																	</xsl:if>

																	<tr>
																		<td>
																			<xsl:call-template name="libraryRecordTitle" />
																		</td>
																	</tr>

																	<xsl:if test="notification_data/request/system_notes != ''">
																		<tr>
																			<td style="height: 20px;"></td> <!-- This row adds a vertical gap -->
																		</tr>
																		<tr>
																			<td>
																				<h2 style=" margin: 0; padding: 0;">Additional Information About Your Loan: </h2>
																				<xsl:value-of select="notification_data/request/system_notes" /><br/>
																			</td>
																		</tr>
																	</xsl:if>
																		<xsl:if test="notification_data/hys_item_display/fulfillment_note != ''">
																		<tr>
																			<td style="height: 20px;"></td> <!-- This row adds a vertical gap -->
																		</tr>
																		<tr>
																			<td>
																				<h2 style=" margin: 0; padding: 0;">Additional Information About Your Loan: </h2>
																				<xsl:value-of select="notification_data/phys_item_display/fulfillment_note" /><br/>
																			</td>
																		</tr>
																	</xsl:if>
																</xsl:when>

																<!-- Default -->
																<xsl:otherwise>
																	<tr>
																		<td >
																			The item you requested is now available for pickup at: <br/> <b><xsl:value-of select="notification_data/request/assigned_unit_name" /></b><br/><br/>
																		</td>
																	</tr>
																	<tr>
																		<td style="padding-bottom: 20px;  ">
																			Please visit <a href="https://www.library.wisc.edu/locations/" target="_blank" style="color: #0073CE;">our locations page</a> for hours and contact information.
																		</td>
																	</tr>
																	<xsl:if test="notification_data/request/work_flow_entity/expiration_date">
																		<tr>
																			<td style="padding-bottom: 20px;  ">
																				The item will be held for you until <xsl:value-of select="notification_data/request/work_flow_entity/expiration_date" />.
																			</td>
																		</tr>
																	</xsl:if>
																	<tr>
																		<td>
																			<xsl:call-template name="libraryRecordTitle" />
																		</td>
																	</tr>

																	<xsl:if test="notification_data/request/system_notes != ''">
																		<tr>
																			<td style="height: 20px;"></td> <!-- This row adds a vertical gap -->
																		</tr>
																		<tr>
																			<td>
																				<h2 style=" margin: 0; padding: 0;">Additional Information About Your Loan: </h2>
																				<xsl:value-of select="notification_data/request/system_notes" /><br/>
																				<xsl:value-of select="notification_data/phys_item_display/fulfillment_note" /><br/>
																			</td>
																		</tr>
																	</xsl:if>
																	
																</xsl:otherwise>
															</xsl:choose>
															<!-- End Email Content-->
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
