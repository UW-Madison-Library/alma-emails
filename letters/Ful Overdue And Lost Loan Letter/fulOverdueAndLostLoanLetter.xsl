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
                                                                    Borrowed Items Declared Lost
                                                                </h1>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="top" style="padding: 25px 0px 10px 0px;">
                                                                <xsl:call-template name="librarySalutation" /> 
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="margin: 0;">This is to inform you that the following items you borrowed have been declared lost:<br/><br/></td>
                                                        </tr>
                                                        
                                                        <xsl:for-each select="notification_data/loans_by_library/library_loans_for_display">
                                                            <tr>
                                                                <td>
                                                                    <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" style="margin-bottom: 50px;">
                                                                        <tr>
                                                                            <td style="padding-top: 10px; ">
                                                                                
                                                                                <xsl:for-each select="item_loans/overdue_and_lost_loan_notification_display">
                                                                                    <table role="presentation" width="100%" cellspacing="0" cellpadding="5" class="darkmode-heading" 
                                                                                        style="border-collapse: collapse; margin-bottom: 15px; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px!important;">

                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Title:</b><br/>
                                                                                                <xsl:value-of select="item_loan/title"/><br/>
                                                                                            </td>
                                                                                        </tr>

                                                                                        <xsl:if test="string-length(item_loan/description) > 0">
                                                                                            <tr>
                                                                                                <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                    <b>Description</b><br/>
                                                                                                    <xsl:value-of select="item_loan/description"/><br/>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </xsl:if>

                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Loan Date</b><br/>
                                                                                                <xsl:value-of select="item_loan/loan_date"/><br/>
                                                                                            </td>
                                                                                        </tr>

                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Due Date</b><br/>
                                                                                                <xsl:value-of select="item_loan/due_date"/><br/>
                                                                                            </td>
                                                                                        </tr>

                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Barcode</b><br/>
                                                                                                <xsl:value-of select="item_loan/barcode"/><br/>
                                                                                            </td>
                                                                                        </tr>

                                                                                        <xsl:if test="string-length(physical_item_display_for_printing/call_number) > 0">
                                                                                            <tr>
                                                                                                <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                    <b>Call Number</b><br/>
                                                                                                    <xsl:value-of select="physical_item_display_for_printing/call_number"/><br/>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </xsl:if>

                                                                                        <xsl:if test="count(fines_fees_list/user_fines_fees) > 0">
                                                                                            <tr>
                                                                                                <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                    <b>Related Fees</b><br/>
                                                                                                    <xsl:for-each select="fines_fees_list/user_fines_fees">
                                                                                                        <xsl:value-of select="fine_fee_type_display"/>: 
                                                                                                        <xsl:value-of select="fine_fee_ammount/normalized_sum"/>&#160;
                                                                                                        <xsl:value-of select="fine_fee_ammount/currency"/>&#160;
                                                                                                        <xsl:value-of select="ff"/><br/>
                                                                                                    </xsl:for-each>
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
                                                        </xsl:for-each>
                                                        <xsl:if test="notification_data/overdue_notification_fee_amount/sum !=''">
                                                            <tr>
                                                                <td>
                                                                    <b>Late Fee:</b>
                                                                    <xsl:value-of select="notification_data/overdue_notification_fee_amount/normalized_sum"/>&#160;<xsl:value-of select="notification_data/overdue_notification_fee_amount/currency"/>&#160;<xsl:value-of select="ff"/><br/><br/>
                                                                </td>
                                                            </tr>
                                                        </xsl:if>
                                                        <tr>
                                                            <td>
                                                                <br/>Check your <a href="https://account.library.wisc.edu/" style="color: #0073CE;" target="_blank">library account</a> or contact us directly for more information and details on how to pay any fees.
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