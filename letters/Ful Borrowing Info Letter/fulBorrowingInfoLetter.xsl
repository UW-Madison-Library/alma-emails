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
                                                                    Loan Status Update
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
																		<xsl:when test="notification_data/success='true'">
																			<tr><td>Your loan has been successfully renewed. Please find the details below:<br/><br/></td></tr>
																		</xsl:when>

																		<xsl:otherwise>
																			<tr><td>Unfortunately, your loan could not be renewed. 
																			Please see the details below and contact us if you need further assistance:<br/><br/></td></tr>
																		</xsl:otherwise>
																	</xsl:choose>

																	<tr>
																		<td><xsl:call-template name="libraryRecordTitle" /><br/></td>
																	</tr>

																	<xsl:choose>

																		<xsl:when test="notification_data/success='true'">
																			<tr>
																				<td><b>New due date: </b><xsl:value-of select="notification_data/item_loan_due_date"/></td>
																			</tr>

																			<tr>
																				<td><b>Reason: </b>Renewal request approved by supplying library</td>
																			</tr>
																		</xsl:when>

																		<xsl:otherwise>
																			<xsl:choose>
																				<xsl:when test="notification_data/note != ''">
																					<tr>
																						<td><b>Reason: </b><xsl:value-of select="notification_data/note"/></td>
																					</tr>
																				</xsl:when>
																			</xsl:choose>
																			<tr>
																				<td><b>Note: </b>Please contact your department for more information.</td>
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
