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
                                                                    <b>Friendly Reminder</b><br/> Please Pay Your Outstanding Fees
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
                                                                <table role="presentation" cellspacing="0" cellpadding="0" border="0" style="width: 500px;">
                                                                    <!-- Begin Email Content-->
                                                                    <tr>
                                                                        <td>
                                                                            We're reaching out to let you know that there is a balance of <b><xsl:value-of select="notification_data/total_fines_amount"/>&#160;<xsl:value-of select="notification_data/total_fines_currency"/></b> on your account.<br/><br/>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Please settle this balance as soon as possible.  You can make your payment by visiting <a href="account.library.wisc.edu" style="color: #0073CE;" target="_blank">your library account</a>.<br/><br/>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding-top: 20px;">
                                                                            <xsl:for-each select="notification_data/fines_fees_list/user_fines_fees">
                                                                                <table class="darkmode-heading" role="presentation" width="100%" cellspacing="0" cellpadding="5" 
                                                                                    style="border-collapse: collapse; margin-bottom: 15px; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px; padding-left: 20px; padding-right: 20px;">
                                                                                    <xsl:if test="string-length(fine_fee_type_display) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 10px 20px;"> <!-- Added more left and right padding -->
                                                                                                <b>Fee Type:</b><br/>
                                                                                                <xsl:value-of select="fine_fee_type_display"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>

                                                                                    <xsl:if test="string-length(fine_fee_ammount/normalized_sum) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 10px 20px;"> <!-- Added more left and right padding -->
                                                                                                <b>Amount:</b><br/>
                                                                                                <xsl:value-of select="fine_fee_ammount/normalized_sum"/>&#160;<xsl:value-of select="fine_fee_ammount/currency"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>

                                                                                    <xsl:if test="string-length(fine_comment) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 10px 20px;"> <!-- Added more left and right padding -->
                                                                                                <b>Note:</b><br/>
                                                                                                <xsl:value-of select="fine_comment"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>
                                                                                </table>
                                                                            </xsl:for-each>
                                                                        </td>
                                                                    </tr>
                                                                    <xsl:if test="notification_data/fine_fee_notification_fee_amount/sum !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <b>Handling Fee: </b>
                                                                                <xsl:value-of select="notification_data/fine_fee_notification_fee_amount/normalized_sum"/>&#160;<xsl:value-of select="notification_data/fine_fee_notification_fee_amount/currency"/>&#160;<xsl:value-of select="ff"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
				
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