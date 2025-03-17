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
                                                                    Your Online Resource Tasks Are Past Due
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
																		<td style="padding-bottom: 10px;">
				                                                            You have tasks for activating electronic resources that are past due.
					                                                    </td>
					                                                </tr>
					                                                <tr>
					                                                    <td>
							                                                <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0">
																	            <xsl:for-each select="notification_data/etasks_list/activation_task">
                                                                                <tr>
                                                                                    <td style="padding-top: 20px; padding-bottom: 0px;">
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
                                                                                                    <b>Identifier:</b><br/>
                                                                                                    <xsl:value-of select="identifier"/><br/>
                                                                                                </td>
                                                                                            </tr>
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
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

