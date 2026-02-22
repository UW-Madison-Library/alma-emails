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
                                                                <h1 style="font-weight: normal; border-bottom: 1px solid lightgrey; padding-bottom: 10px; text-align: center; font-size: 20px!important; border-top: 1px solid lightgrey; padding-top: 13px;">
                                                                    Your Lost Item Fee Has Been Refunded
                                                                </h1>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="top" style="padding: 30px 0px 10px 0px;">
                                                                <xsl:call-template name="librarySalutation"/>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="top" style="padding: 0px 0px 10px 0px;">
                                                                <p style="margin: 0 0 15px 0;">We found that you returned an item previously marked as lost. We have credited your account for the replacement fee you paid. The details of this refund are below.</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <xsl:for-each select="notification_data">
                                                                    <table class="darkmode-heading" role="presentation" width="100%" cellspacing="0" cellpadding="5"
        style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px; padding-left: 20px; padding-right: 20px; margin-bottom: 15px;">
                                                                        <xsl:if test="string-length(item_loan/title) > 0">
                                                                            <tr>
                                                                                <td style="vertical-align: top; padding: 10px 20px;">
                                                                                    <b>Title:</b>
                                                                                    <br/>
                                                                                    <xsl:value-of select="item_loan/title"/>
                                                                                    <br/>
                                                                                </td>
                                                                            </tr>
                                                                        </xsl:if>
                                                                        <xsl:if test="string-length(item_loan/description) > 0">
                                                                            <tr>
                                                                                <td style="vertical-align: top; padding: 10px 20px;">
                                                                                    <b>Loan Details:</b>
                                                                                    <br/>
                                                                                    <xsl:value-of select="item_loan/description"/>
                                                                                    <br/>
                                                                                </td>
                                                                            </tr>
                                                                        </xsl:if>
                                                                        <xsl:if test="string-length(item_loan/author) > 0">
                                                                            <tr>
                                                                                <td style="vertical-align: top; padding: 10px 20px;">
                                                                                    <b>Author:</b>
                                                                                    <br/>
                                                                                    <xsl:value-of select="item_loan/author"/>
                                                                                    <br/>
                                                                                </td>
                                                                            </tr>
                                                                        </xsl:if>
                                                                        <xsl:if test="string-length(organization_unit/name) > 0">
                                                                            <tr>
                                                                                <td style="vertical-align: top; padding: 10px 20px;">
                                                                                    <b>Library:</b>
                                                                                    <br/>
                                                                                    <xsl:value-of select="organization_unit/name"/>
                                                                                    <br/>
                                                                                </td>
                                                                            </tr>
                                                                        </xsl:if>
                                                                        <xsl:if test="string-length(item_loan/loan_date) > 0">
                                                                            <tr>
                                                                                <td style="vertical-align: top; padding: 10px 20px;">
                                                                                    <b>Loan Date:</b>
                                                                                    <br/>
                                                                                    <xsl:value-of select="item_loan/loan_date"/>
                                                                                    <br/>
                                                                                </td>
                                                                            </tr>
                                                                        </xsl:if>
                                                                        <xsl:if test="string-length(item_loan/due_date) > 0">
                                                                            <tr>
                                                                                <td style="vertical-align: top; padding: 10px 20px;">
                                                                                    <b>Due Date:</b>
                                                                                    <br/>
                                                                                    <xsl:value-of select="item_loan/due_date"/>
                                                                                    <br/>
                                                                                </td>
                                                                            </tr>
                                                                        </xsl:if>
                                                                    </table>
                                                                </xsl:for-each>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <xsl:for-each select="notification_data/fines_fees_list/user_fines_fees">
                                                                    <table role="presentation" width="100%" cellspacing="0" cellpadding="4" class="darkmode-heading listing"
                                                                        style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px!important; margin-bottom: 15px;">
                                                                        <xsl:if test="string-length(fine_fee_type_display) > 0">
                                                                            <tr>
                                                                                <td style="white-space: nowrap; padding: 6px 20px;">
                                                                                    <strong>Fee Type:</strong>
                                                                                </td>
                                                                                <td style="padding: 6px 20px 6px 0;">
                                                                                    <xsl:value-of select="fine_fee_type_display"/>
                                                                                </td>
                                                                            </tr>
                                                                        </xsl:if>
                                                                        <xsl:if test="string-length(fine_fee_ammount/normalized_sum) > 0 and string-length(fine_fee_ammount/currency) > 0">
                                                                            <tr>
                                                                                <td style="white-space: nowrap; padding: 6px 20px; width: 150px;">
                                                                                    <strong>Fee Amount:</strong>
                                                                                </td>
                                                                                <td style="padding: 6px 20px 6px 0;">
                                                                                    <xsl:value-of select="fine_fee_ammount/normalized_sum"/>&#160;
                                                                                    <xsl:value-of select="fine_fee_ammount/currency"/>
                                                                                </td>
                                                                            </tr>
                                                                        </xsl:if>
                                                                        <xsl:if test="string-length(finecomment) > 0">
                                                                            <tr>
                                                                                <td style="white-space: nowrap; padding: 6px 20px; width: 150px;">
                                                                                    <strong>Notes:</strong>
                                                                                </td>
                                                                                <td style="padding: 6px 20px 6px 0;">
                                                                                    <xsl:value-of select="finecomment"/>
                                                                                </td>
                                                                            </tr>
                                                                        </xsl:if>
                                                                    </table>
                                                                </xsl:for-each>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table role="presentation" width="100%" cellspacing="0" cellpadding="4" class="darkmode-heading listing"
                                                                        style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px!important; margin-bottom: 15px;">
                                                                    <tr>
                                                                        <td style="white-space: nowrap; padding: 6px 20px; width: 150px;">
                                                                            <strong>@@total@@:</strong>
                                                                        </td>
                                                                        <td style="padding: 6px 20px 6px 0;">
                                                                            <xsl:value-of select="notification_data/total_fines_amount"/>&#160;
                                                                            <xsl:value-of select="notification_data/fines_fees_list/user_fines_fees/fine_fee_ammount/currency"/>
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
                                        <xsl:call-template name="libraryFooter"/>
                                        <!-- footer.xsl -->
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